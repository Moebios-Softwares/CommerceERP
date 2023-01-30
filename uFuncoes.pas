unit uFuncoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  System.Variants, PostgreSQLUniProvider, MemDS, ACBrSocket, ACBrUtil,
  pcnConversaoNFe, pcnNFe, System.JSON, ACBrMail, StrUtils, ACBrDFeReport,
  ACBrDFeDANFeReport, pcnConversao, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass,
  ACBrBase, ACBrDFe, ACBrNFe, Registry, cxImage, DASQLMonitor, UniSQLMonitor,
  uDM, ACBrDFeUtil, IdBaseComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdAntiFreezeBase, IdAntiFreeze, System.Threading, System.IniFiles, IdIOHandler,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdIOHandlerSocket, dxActivityIndicator,
  IdComponent, System.Types;

procedure GerarXMLdoBanco(qryNF: TUniQuery; ImprimirDanfe: Boolean);

procedure GravarXMLnoBanco(qryNF, qryNFitens, qryNFPagtos: TUniTable);

function RetornaBandeiraCartao(Bandeira: integer): TpcnBandeiraCartao;

function RetornaCUF(UF: string): integer;

function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;

function RetornaTipoPostgreSQL(tipo: TFieldType; campo: TField): string;

function RetornaTipoDeDadoPostgreSQL(tipo: string): TFieldType;

procedure VerificaOpenSSL;

implementation

procedure VerificaOpenSSL;
var
  SalvaDLL: TMemoryStream;
begin
  SalvaDLL := TMemoryStream.Create();

  if not FileExists('C:\Moebios\libeay32.dll') then
  begin
    SalvaDLL.LoadFromStream(TResourceStream.Create(HInstance, 'libdll', RT_RCDATA));
    SalvaDLL.SaveToFile('C:\Moebios\libeay32.dll');
  end;

  if not FileExists('C:\Moebios\ssleay32.dll') then
  begin
    SalvaDLL.LoadFromStream(TResourceStream.Create(HInstance, 'ssldll', RT_RCDATA));
    SalvaDLL.SaveToFile('C:\Moebios\ssleay32.dll');
  end;

  FreeAndNil(SalvaDLL);
end;

function RetornaTipoDeDadoPostgreSQL(tipo: string): TFieldType;
begin
  case AnsiIndexStr(tipo, ['character varying', 'integer', 'numeric', 'date', 'time', 'timestamp', 'text']) of
    0:
      Result := ftString;
    1:
      Result := ftInteger;
    2:
      Result := ftCurrency;
    3:
      Result := ftDate;
    4:
      Result := ftTime;
    5:
      Result := ftDateTime;
    6:
      Result := ftMemo;
  end;
end;

function RetornaTipoPostgreSQL(tipo: TFieldType; campo: TField): string;
begin
  case tipo of
    ftUnknown:
      Result := 'varchar(' + IntToStr(TStringField(campo).Size) + ')';
    ftString:
      Result := 'varchar(' + IntToStr(TStringField(campo).Size) + ')';
    ftSmallint:
      Result := 'SmallInt';
    ftInteger:
      Result := 'Integer';
    ftBoolean:
      Result := 'Boolean';
    ftFloat:
      Result := 'numeric(15,2)';
    ftCurrency:
      Result := 'numeric(15,2)';
    ftDate:
      Result := 'Date';
    ftTime:
      Result := 'Time';
    ftDateTime:
      Result := 'timestamp';
    ftAutoInc:
      Result := 'serial';
    ftMemo:
      Result := 'text';
  end;
end;

function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: Real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

function RetornaCUF(UF: string): integer;
begin
  case AnsiindexStr(UF, ['AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO']) of
    0:
      Result := 12;
    1:
      Result := 27;
    2:
      Result := 13;
    3:
      Result := 16;
    4:
      Result := 29;
    5:
      Result := 23;
    6:
      Result := 53;
    7:
      Result := 32;
    8:
      Result := 52;
    9:
      Result := 21;
    10:
      Result := 31;
    11:
      Result := 50;
    12:
      Result := 51;
    13:
      Result := 15;
    14:
      Result := 25;
    15:
      Result := 26;
    16:
      Result := 22;
    17:
      Result := 41;
    18:
      Result := 33;
    19:
      Result := 24;
    20:
      Result := 11;
    21:
      Result := 14;
    22:
      Result := 43;
    23:
      Result := 42;
    24:
      Result := 28;
    25:
      Result := 35;
    26:
      Result := 17;
  end;
end;

procedure GerarXMLdoBanco(qryNF: TUniQuery; ImprimirDanfe: Boolean);
var
  qryNFitens, qryPagtos: TUniQuery;
  Modelo, SequenciaNItem: integer;
begin
  DM.ACBrNFe.NotasFiscais.Clear();

  Modelo := qryNF.FieldByName('ide_mod').Value;

  case Modelo of
    55:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
        DM.ACBrNFe.DANFE := DM.DANFe;
      end;
    65:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
        DM.ACBrNFe.DANFE := DM.DANFCe;
      end;
  end;

  if qryNF.FieldByName('signature').AsString <> '' then
  begin
    DM.ACBrNFe.NotasFiscais.LoadFromString(qryNF.FieldByName('signature').AsString);

    if ImprimirDanfe then
      DM.ACBrNFe.NotasFiscais[0].Imprimir();

    Exit;
  end;

  qryPagtos := TUniQuery.Create(nil);
  qryPagtos.Connection := qryNF.Connection;
  qryPagtos.SQL.Text := 'select * FROM commerce.nfepagtos WHERE ide_nnf = :pIDE_NNF AND ide_mod = :pIDE_MOD and ide_serie = :pIDE_SERIE ORDER BY dup_ndup';
  qryPagtos.ParamByName('pIDE_NNF').Value := qryNF.FieldByName('ide_nnf').Value;
  qryPagtos.ParamByName('pIDE_MOD').Value := qryNF.FieldByName('ide_mod').Value;
  qryPagtos.ParamByName('pIDE_SERIE').Value := qryNF.FieldByName('ide_serie').Value;
  qryPagtos.Open();

  qryNFitens := TUniQuery.Create(nil);
  qryNFitens.Connection := qryNF.Connection;
  qryNFitens.SQL.Text := 'select * FROM commerce.nfeitens WHERE ide_nnf = :pIDE_NNF AND ide_mod = :pIDE_MOD and ide_serie = :pIDE_SERIE ORDER BY det_nitem';
  qryNFitens.ParamByName('pIDE_NNF').Value := qryNF.FieldByName('ide_nnf').Value;
  qryNFitens.ParamByName('pIDE_MOD').Value := qryNF.FieldByName('ide_mod').Value;
  qryNFitens.ParamByName('pIDE_SERIE').Value := qryNF.FieldByName('ide_serie').Value;
  qryNFitens.Open();

  Modelo := qryNF.FieldByName('ide_mod').Value;

  case Modelo of
    55:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
        DM.ACBrNFe.DANFE := DM.DANFe;
      end;
    65:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
        DM.ACBrNFe.DANFE := DM.DANFCe;
      end;
  end;

  with DM.ACBrNFe.NotasFiscais.Add do
  begin
    DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.ID := qryNF.FieldByName('ide_nnf').Value;

    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.natOp := qryNF.FieldByName('ide_natop').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.nNF := qryNF.FieldByName('ide_nnf').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.cNF := GerarCodigoDFe(qryNF.FieldByName('ide_nnf').Value);
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.modelo := qryNF.FieldByName('ide_mod').Value;

    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.serie := qryNF.FieldByName('ide_serie').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.dEmi := qryNF.FieldByName('ide_dhemi').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.dSaiEnt := qryNF.FieldByName('ide_dhsaient').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.finNFe := fnNormal;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.tpNF := tnSaida;

    case qryNF.FieldByName('pag_detpag_indpag').AsInteger of
      0:
        DM.ACBrNFe.NotasFiscais[0].NFe.Ide.indPag := ipVista;
      1:
        DM.ACBrNFe.NotasFiscais[0].NFe.Ide.indPag := ipPrazo;
      2:
        DM.ACBrNFe.NotasFiscais[0].NFe.Ide.indPag := ipOutras;
    else
      DM.ACBrNFe.NotasFiscais[0].NFe.Ide.indPag := ipNenhum;
    end;

    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.verProc := '9.0';
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.cUF := qryNF.FieldByName('ide_cuf').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Ide.cMunFG := qryNF.FieldByName('ide_cmunfg').Value;

    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CNPJCPF := qryNF.FieldByName('emit_cnpj').Value;

    if qryNF.FieldByName('emit_ie').AsString <> '' then
      DM.ACBrNFe.NotasFiscais[0].NFe.Emit.IE := qryNF.FieldByName('emit_ie').Value
    else
      DM.ACBrNFe.NotasFiscais[0].NFe.Emit.IE := 'ISENTO';

    if (qryNF.FieldByName('emit_im').AsString <> '') and (qryNF.FieldByName('emit_im').AsString <> 'ISENTO') then
      DM.ACBrNFe.NotasFiscais[0].NFe.Emit.IM := qryNF.FieldByName('emit_im').Value;

    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CNAE := qryNF.FieldByName('emit_cnae').Value;

    case qryNF.FieldByName('emit_crt').AsInteger of
      1:
        DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CRT := crtSimplesNacional;
      2:
        DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CRT := crtSimplesExcessoReceita;
    else
      DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CRT := crtSimplesNacional;
    end;

    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.xNome := qryNF.FieldByName('emit_xnome').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.xFant := qryNF.FieldByName('emit_xfant').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.fone := qryNF.FieldByName('emit_EnderEmit_fone').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.CEP := qryNF.FieldByName('emit_EnderEmit_cep').AsInteger;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xLgr := qryNF.FieldByName('emit_EnderEmit_xlgr').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.nro := qryNF.FieldByName('emit_EnderEmit_nro').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xCpl := qryNF.FieldByName('emit_EnderEmit_xcpl').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xBairro := qryNF.FieldByName('emit_EnderEmit_xbairro').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.cMun := qryNF.FieldByName('emit_EnderEmit_cmun').AsInteger;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xMun := qryNF.FieldByName('emit_EnderEmit_xmun').AsString;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.UF := qryNF.FieldByName('emit_EnderEmit_uf').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.cPais := qryNF.FieldByName('emit_EnderEmit_cpais').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xPais := qryNF.FieldByName('emit_EnderEmit_xPais').Value;

    if Modelo = 55 then
    begin
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.xNome := qryNF.FieldByName('dest_xnome').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.fone := qryNF.FieldByName('dest_Enderdest_fone').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.CEP := qryNF.FieldByName('dest_Enderdest_cep').AsInteger;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.xLgr := qryNF.FieldByName('dest_Enderdest_xlgr').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.nro := qryNF.FieldByName('dest_Enderdest_nro').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.xCpl := qryNF.FieldByName('dest_Enderdest_xcpl').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.xBairro := qryNF.FieldByName('dest_Enderdest_xbairro').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.cMun := qryNF.FieldByName('dest_Enderdest_cmun').AsInteger;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.xMun := qryNF.FieldByName('dest_Enderdest_xmun').AsString;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.UF := qryNF.FieldByName('dest_Enderdest_uf').Value;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.cPais := qryNF.FieldByName('dest_Enderdest_cpais').Value;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.EnderDest.xPais := qryNF.FieldByName('dest_Enderdest_xPais').Value;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.CNPJCPF := qryNF.FieldByName('dest_cnpj').Value;
      DM.ACBrNFe.NotasFiscais[0].NFe.Dest.IE := qryNF.FieldByName('dest_ie').Value;

      if qryNF.FieldByName('dest_im').AsString <> '' then
        DM.ACBrNFe.NotasFiscais[0].NFe.Dest.IM := qryNF.FieldByName('dest_im').Value;
    end;

    qryNFitens.First;

    SequenciaNItem := 1;

    while not qryNFitens.Eof do
    begin
      with DM.ACBrNFe.NotasFiscais[0].NFe.Det.add do
      begin
        Prod.nItem := SequenciaNItem;
        Inc(SequenciaNItem, 1);

        Prod.cProd := qryNFitens.FieldByName('det_prod_cprod').AsString;
        Prod.uCom := qryNFitens.FieldByName('det_prod_ucom').AsString;
        Prod.uTrib := qryNFitens.FieldByName('det_prod_qcom').AsString;

        Prod.cEAN := qryNFitens.FieldByName('det_prod_cean').AsString;
        Prod.cEANTrib := qryNFitens.FieldByName('det_prod_ceantrib').AsString;

        Prod.xProd := qryNFitens.FieldByName('det_prod_xprod').AsString;
        Prod.NCM := qryNFitens.FieldByName('det_prod_ncm').AsString;
        Prod.EXTIPI := '';
        Prod.CFOP := qryNFitens.FieldByName('det_prod_cfop').AsString;
        Prod.qCom := qryNFitens.FieldByName('det_prod_qcom').AsFloat;
        Prod.qTrib := qryNFitens.FieldByName('det_prod_qtrib').AsFloat;
        Prod.vUnCom := qryNFitens.FieldByName('det_prod_vuncom').AsFloat;
        Prod.vUnTrib := qryNFitens.FieldByName('det_prod_vuntrib').AsFloat;
        Prod.vProd := qryNFitens.FieldByName('det_prod_vprod').AsFloat;
        Prod.vDesc := qryNFitens.FieldByName('det_prod_vdesc').AsFloat;
        Prod.vOutro := qryNFitens.FieldByName('det_prod_voutro').AsFloat;
        Prod.vDesc := qryNFitens.FieldByName('det_prod_vdesc').AsFloat;
        Prod.vFrete := qryNFitens.FieldByName('det_prod_vfrete').AsFloat;
        Prod.vSeg := qryNFitens.FieldByName('det_prod_vseg').AsFloat;

        with Imposto do
        begin
          case qryNFitens.FieldByName('csosn').AsInteger of
            101:
              ICMS.CSOSN := csosn101;
            102:
              ICMS.CSOSN := csosn102;
            103:
              ICMS.CSOSN := csosn103;
            201:
              ICMS.CSOSN := csosn201;
            202:
              ICMS.CSOSN := csosn202;
            203:
              ICMS.CSOSN := csosn203;
            300:
              ICMS.CSOSN := csosn300;
            400:
              ICMS.CSOSN := csosn400;
            500:
              ICMS.CSOSN := csosn500;
            900:
              ICMS.CSOSN := csosn900;
          else
            ICMS.CSOSN := csosn102;
          end;

          if DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CRT = crtSimplesNacional then
          begin
            if (qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat <> 0) and (Prod.CFOP = '5405') then
            begin
              ICMS.vBCEfet := Prod.vProd;
              ICMS.pICMSEfet := qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat;
              ICMS.vICMSEfet := (Prod.vProd * qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat) / 100;
            end;

            case ICMS.CSOSN of
              csosn101:
                begin
                  ICMS.orig := oeNacional;
                  ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                end;
              csosn102:
                begin
                  ICMS.orig := oeNacional;
                end;
              csosn201:
                begin
                  ICMS.orig := oeNacional;
                  ICMS.modBCST := dbisMargemValorAgregado;
                  ICMS.pMVAST := 0;
                  ICMS.pRedBCST := 00.00;
                  ICMS.vBCST := 0;
                  ICMS.pICMSST := 00.00;
                  ICMS.vICMSST := 0;
                  ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                end;
              csosn202:
                begin
                  ICMS.orig := oeNacional;
                  ICMS.modBCST := dbisMargemValorAgregado;
                  ICMS.pMVAST := 0;
                  ICMS.pRedBCST := 00.00;
                  ICMS.vBCST := 0;
                  ICMS.pICMSST := 00.00;
                  ICMS.vICMSST := 0;
                end;
              csosn500:
                begin
                  ICMS.orig := oeNacional;
                end;
              csosn900:
                begin
                  ICMS.orig := oeNacional;
                  ICMS.modBC := dbiValorOperacao;
                  ICMS.vBC := qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat;
                  ICMS.pRedBC := 0;
                  ICMS.pICMS := qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat;
                  ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, 2);
                  ICMS.modBCST := dbisMargemValorAgregado;
                  ICMS.pMVAST := 0;
                  ICMS.pRedBCST := 00.00;
                  ICMS.vBCST := 0;
                  ICMS.pICMSST := 00.00;
                  ICMS.vICMSST := 0;
                  ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                  ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                end;
            end;
            with ICMSUFDest do
            begin
              vBCUFDest := 0.00;
              pFCPUFDest := 0.00;
              pICMSUFDest := 0.00;
              pICMSInter := 0.00;
              pICMSInterPart := 0.00;
              vFCPUFDest := 0.00;
              vICMSUFDest := 0.00;
              vICMSUFRemet := 0.00;
            end;
          end
          else
          begin
            with ICMS do
            begin
              case qryNFitens.FieldByName('csosn').AsInteger of
                0:
                  CST := cst00;
                10:
                  CST := cst10;
                20:
                  CST := cst20;
                30:
                  CST := cst30;
                40:
                  CST := cst40;
                41:
                  CST := cst41;
                50:
                  CST := cst50;
                60:
                  CST := cst60;
                70:
                  CST := cst70;
                80:
                  CST := cst80;
                90:
                  CST := cst90;
              end;

              case ICMS.CST of
                cst00:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.vBC := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.pICMS := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                  end;
                cst10:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.vBC := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.pICMS := RoundABNT(qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat, -2);
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 0;
                    ICMS.pRedBCST := 00.00;
                    ICMS.vBCST := 0;
                    ICMS.pICMSST := 00.00;
                    ICMS.vICMSST := 0;
                  end;
                cst20:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.pRedBC := 0.00;
                    ICMS.vBC := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.pICMS := RoundABNT(qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat, -2);
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                    ICMS.vICMSDeson := 0.00;
                  end;
                cst30:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 0.00;
                    ICMS.pRedBCST := 0.00;
                    ICMS.vBCST := 0;
                    ICMS.pICMSST := 0;
                    ICMS.vICMSST := 0;
                    ICMS.vICMSDeson := 0.00;
                  end;
                cst40, cst41, cst50:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.vICMSDeson := 0.00;
                  end;
                cst51:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.pRedBC := 0.00;
                    ICMS.vBC := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.pICMS := RoundABNT(qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat, -2);
                    ICMS.vICMSOp := 0.00;
                    ICMS.pDif := 0.00;
                    ICMS.vICMSDif := 0.00;
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                  end;
                cst60:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.vBCSTRet := 0.00;
                    ICMS.vICMSSTRet := 0.00;
                  end;
                cst70:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.pRedBC := 0.00;
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 0.00;
                    ICMS.pRedBCST := 0.00;
                    ICMS.vBCST := 0.00;
                    ICMS.pICMSST := 0.00;
                    ICMS.vICMSST := 0.00;
                    ICMS.vICMSDeson := 0.00;
                  end;
                cst90:
                  begin
                    ICMS.orig := oeNacional;
                    ICMS.modBC := dbiValorOperacao;
                    ICMS.pRedBC := 0.00;
                    ICMS.vBC := RoundABNT(qryNFitens.FieldByName('det_prod_vtotalitem').AsFloat, -2);
                    ICMS.pICMS := RoundABNT(qryNFitens.FieldByName('Aliquota_STEfetivo').AsFloat, -2);
                    ICMS.vICMS := RoundABNT((ICMS.vBC * ICMS.pICMS) / 100, -2);
                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := 0.00;
                    ICMS.pRedBCST := 0.00;
                    ICMS.vBCST := 0.00;
                    ICMS.pICMSST := 0.00;
                    ICMS.vICMSST := 0.00;
                    ICMS.vICMSDeson := 0.00;
                  end;
              end;
            end;
          end;
        end;
      end;
      qryNFitens.Next();
    end;

    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vBC := qryNF.FieldByName('total_icmstot_vbc').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMS := qryNF.FieldByName('total_icmstot_vicms').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vBCST := qryNF.FieldByName('total_icmstot_vbcst').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vST := qryNF.FieldByName('total_icmstot_vst').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vProd := qryNF.FieldByName('total_icmstot_vprod').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFrete := qryNF.FieldByName('total_icmstot_vfrete').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vSeg := qryNF.FieldByName('total_icmstot_vseg').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vDesc := qryNF.FieldByName('total_icmstot_vdesc').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vII := qryNF.FieldByName('total_icmstot_vii').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vIPI := qryNF.FieldByName('total_icmstot_vipi').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vPIS := qryNF.FieldByName('total_icmstot_vpis').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vCOFINS := qryNF.FieldByName('total_icmstot_vcofins').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vOutro := qryNF.FieldByName('total_icmstot_voutro').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vNF := qryNF.FieldByName('total_icmstot_vnf').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFCPUFDest := qryNF.FieldByName('total_icmstot_vfcpufdest').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMSUFDest := qryNF.FieldByName('total_icmstot_vicmsufdest').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMSUFRemet := qryNF.FieldByName('total_icmstot_vicmsufremet').Value;
    DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vTotTrib := qryNF.FieldByName('total_icmstot_vTotTrib').Value;

    case Modelo of
      55:
        begin
          case qryNF.FieldByName('transp_modfrete').AsInteger of
            0:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfContaEmitente;
            1:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfContaDestinatario;
            2:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfContaTerceiros;
            3:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfProprioRemetente;
            4:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfProprioDestinatario;
            9:
              DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfSemFrete;
          else
            DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfSemFrete;
          end;
        end;

      65:
        DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE
    end;

    qryPagtos.First;

    with DM.ACBrNFe.NotasFiscais[0].NFe.pag.add do
    begin
      vPag := qryNF.FieldByName('pag_detpag_vpag').AsFloat - qryNF.FieldByName('pag_vtroco').AsFloat;

      case qryNF.FieldByName('pag_detpag_tpag').AsInteger of
        1:
          tPag := fpDinheiro;
        2:
          tPag := fpCheque;
        3:
          begin
            tPag := fpCartaoCredito;
            tpIntegra := tiPagNaoIntegrado;
//            tBand := retornaBandeiraCartao(qryPagtos.FieldByName('pag_tband').Value);
//            vPag := qryPagtos.FieldByName('pag_vpag').Value;
          end;
        4:
          begin
            tPag := fpCartaoDebito;
            tpIntegra := tiPagNaoIntegrado;
//            tBand := retornaBandeiraCartao(qryPagtos.FieldByName('pag_Result').Value);
//            vPag := qryPagtos.FieldByName('pag_vpag').Value;
          end;
        5:
          begin
            tPag := fpCreditoLoja;
//            vPag := qryPagtos.FieldByName('pag_vpag').Value;
          end;
        10:
          tPag := fpValeAlimentacao;
        11:
          tPag := fpValeRefeicao;
        12:
          tPag := fpValePresente;
        13:
          tPag := fpValeCombustivel;
        14:
          tPag := fpDuplicataMercantil;
        15:
          tPag := fpBoletoBancario;
        16:
          tPag := fpDepositoBancario;
        17:
          tPag := fpPagamentoInstantaneo;
        18:
          tPag := fpTransfBancario;
        19:
          tPag := fpProgramaFidelidade;
        90:
          begin
            vPag := 0;
            tPag := fpSemPagamento;
          end;
        98:
          tPag := fpRegimeEspecial;
        99:
          tPag := fpOutro;
      else
        vPag := 0;
        tPag := fpSemPagamento;
      end;
    end;

    DM.ACBrNFe.NotasFiscais[0].NFe.InfAdic.infCpl := qryNF.FieldByName('InfAdic_infCpl').AsString;
    DM.ACBrNFe.NotasFiscais[0].Assinar();
    DM.ACBrNFe.NotasFiscais[0].Validar();

    qryNF.Edit();
    qryNF.FieldByName('infnfe_versao').Value := DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.Versao;
    qryNF.FieldByName('ide_cnf').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Ide.cNF;
    qryNF.FieldByName('infnfe_chave').Value := Copy(DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.ID, 4, 44);
    qryNF.FieldByName('signature').Value := DM.ACBrNFe.NotasFiscais[0].XML;
    qryNF.Post();

    DM.qryEmpresa.Open();
    DM.qryEmpresa.Edit();

    case Modelo of
      55:
        DM.qryEmpresaseq_nfe.Value := DM.qryEmpresaseq_nfe.Value + 1;
      65:
        DM.qryEmpresaseq_nfce.Value := DM.qryEmpresaseq_nfce.Value + 1;
    end;

    DM.qryEmpresa.Post();
    DM.qryEmpresa.Refresh();

    DM.ACBrNFe.NotasFiscais[0].GravarXML();

    if ImprimirDanfe then
      DM.ACBrNFe.NotasFiscais[0].Imprimir();
  end;
end;

procedure GravarXMLnoBanco(qryNF, qryNFitens, qryNFPagtos: TUniTable);
var
  i: integer;
begin
  qryNF.FieldByName('infnfe_versao').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.VersaoStr;
  qryNF.FieldByName('infnfe_chave').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.ID;

  qryNF.FieldByName('ide_cUF').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.cUF;
  qryNF.FieldByName('ide_cNF').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.cNF;
  qryNF.FieldByName('ide_natOp').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.ide.natOp;
  qryNF.FieldByName('ide_mod').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.modelo;
  qryNF.FieldByName('ide_serie').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.serie;
  qryNF.FieldByName('ide_nNF').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.nNF;
  qryNF.FieldByName('ide_dhEmi').AsDateTime := DM.ACBrNFe.NotasFiscais[0].NFe.ide.dEmi;
  qryNF.FieldByName('ide_dhSaiEnt').AsDateTime := DM.ACBrNFe.NotasFiscais[0].NFe.ide.dSaiEnt;
  qryNF.FieldByName('ide_tpNF').AsInteger := StrToIntDef(tpNFToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.tpNF), 0);
  qryNF.FieldByName('ide_idDest').AsInteger := StrToIntDef(DestinoOperacaoToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.idDest), 0);
  qryNF.FieldByName('ide_cMunFG').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.cMunFG;
  qryNF.FieldByName('ide_tpImp').AsInteger := StrToIntDef(TpImpToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.tpImp), 0);
  qryNF.FieldByName('ide_tpEmis').AsInteger := StrToIntDef(TpEmisToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.tpEmis), 0);
  qryNF.FieldByName('ide_cDV').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.cDV;
  qryNF.FieldByName('ide_tpAmb').AsInteger := StrToIntDef(TpAmbToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.tpAmb), 0);
  qryNF.FieldByName('ide_finNFe').AsInteger := StrToIntDef(FinNFeToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.finNFe), 0);
  qryNF.FieldByName('ide_indFinal').AsInteger := StrToIntDef(ConsumidorFinalToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.indFinal), 0);
  qryNF.FieldByName('ide_indPres').AsInteger := StrToIntDef(PresencaCompradorToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.indPres), 0);
  qryNF.FieldByName('ide_procEmi').AsInteger := StrToIntDef(procEmiToStr(DM.ACBrNFe.NotasFiscais[0].NFe.ide.procEmi), 0);
  qryNF.FieldByName('ide_verProc').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.ide.verProc;

  qryNF.FieldByName('emit_CNPJ').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CNPJCPF;
  qryNF.FieldByName('emit_xNome').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.xNome;
  qryNF.FieldByName('emit_xFant').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.xFant;
  qryNF.FieldByName('emit_enderEmit_xLgr').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xLgr;
  qryNF.FieldByName('emit_enderEmit_nro').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.nro;
  qryNF.FieldByName('emit_enderEmit_xBairro').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xBairro;
  qryNF.FieldByName('emit_enderEmit_cMun').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.cMun;
  qryNF.FieldByName('emit_enderEmit_xMun').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xMun;
  qryNF.FieldByName('emit_enderEmit_UF').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.UF;
  qryNF.FieldByName('emit_enderEmit_CEP').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.CEP;
  qryNF.FieldByName('emit_enderEmit_cPais').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.cPais;
  qryNF.FieldByName('emit_enderEmit_xPais').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.xPais;
  qryNF.FieldByName('emit_enderEmit_fone').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.EnderEmit.fone;
  qryNF.FieldByName('emit_IE').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Emit.IE;
  qryNF.FieldByName('emit_CRT').AsInteger := StrToIntDef(CRTToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CRT), 1);

  qryNF.FieldByName('dest_CNPJ').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.CNPJCPF;
  qryNF.FieldByName('dest_xNome').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.xNome;
  qryNF.FieldByName('dest_enderDest_xLgr').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.xLgr;
  qryNF.FieldByName('dest_enderDest_nro').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.nro;
  qryNF.FieldByName('dest_enderDest_xBairro').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.xBairro;
  qryNF.FieldByName('dest_enderDest_cMun').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.cMun;
  qryNF.FieldByName('dest_enderDest_xMun').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.xMun;
  qryNF.FieldByName('dest_enderDest_UF').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.UF;
  qryNF.FieldByName('dest_enderDest_CEP').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.CEP;
  qryNF.FieldByName('dest_enderDest_cPais').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.cPais;
  qryNF.FieldByName('dest_enderDest_xPais').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.xPais;
  qryNF.FieldByName('dest_enderDest_fone').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.EnderDest.fone;
  qryNF.FieldByName('dest_indIEDest').AsInteger := StrToIntDef(indIEDestToStr(DM.ACBrNFe.NotasFiscais[0].NFe.dest.indIEDest), 0);
  qryNF.FieldByName('dest_IE').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.IE;
  qryNF.FieldByName('dest_email').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.dest.Email;

  qryNF.FieldByName('total_ICMSTot_vBC').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vBC;
  qryNF.FieldByName('total_ICMSTot_vICMS').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMS;
  qryNF.FieldByName('total_ICMSTot_vICMSDeson').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMSDeson;
  qryNF.FieldByName('total_ICMSTot_vFCPUFDest').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFCPUFDest;
  qryNF.FieldByName('total_ICMSTot_vICMSUFDest').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMSUFDest;
  qryNF.FieldByName('total_ICMSTot_vICMSUFRemet').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vICMSUFRemet;
  qryNF.FieldByName('total_ICMSTot_vFCP').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFCP;
  qryNF.FieldByName('total_ICMSTot_vBCST').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vBCST;
  qryNF.FieldByName('total_ICMSTot_vST').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vST;
  qryNF.FieldByName('total_ICMSTot_vFCPST').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFCPST;
  qryNF.FieldByName('total_ICMSTot_vFCPSTRet').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFCPSTRet;
  qryNF.FieldByName('total_ICMSTot_vProd').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vProd;
  qryNF.FieldByName('total_ICMSTot_vFrete').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vFrete;
  qryNF.FieldByName('total_ICMSTot_vSeg').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vSeg;
  qryNF.FieldByName('total_ICMSTot_vDesc').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vDesc;
  qryNF.FieldByName('total_ICMSTot_vII').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vII;
  qryNF.FieldByName('total_ICMSTot_vIPI').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vIPI;
  qryNF.FieldByName('total_ICMSTot_vIPIDevol').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vIPIDevol;
  qryNF.FieldByName('total_ICMSTot_vPIS').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vPIS;
  qryNF.FieldByName('total_ICMSTot_vCOFINS').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vCOFINS;
  qryNF.FieldByName('total_ICMSTot_vOutro').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vOutro;
  qryNF.FieldByName('total_ICMSTot_vNF').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vNF;

  qryNF.FieldByName('transp_modFrete').AsInteger := StrToIntDef(modFreteToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Transp.modFrete), 0);
  qryNF.FieldByName('transp_transporta_CNPJ').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.CNPJCPF;
  qryNF.FieldByName('transp_transporta_xNome').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.xNome;
  qryNF.FieldByName('transp_transporta_IE').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.IE;
  qryNF.FieldByName('transp_transporta_xEnder').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.xEnder;
  qryNF.FieldByName('transp_transporta_xMun').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.xMun;
  qryNF.FieldByName('transp_transporta_UF').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Transporta.UF;

  qryNF.FieldByName('transp_vol_qVol').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Vol[0].qVol;
  qryNF.FieldByName('transp_vol_esp').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Vol[0].esp;
  qryNF.FieldByName('transp_vol_marca').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Vol[0].marca;
  qryNF.FieldByName('transp_vol_pesoL').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Vol[0].pesoL;
  qryNF.FieldByName('transp_vol_pesoB').Value := DM.ACBrNFe.NotasFiscais[0].NFe.Transp.Vol[0].pesoB;

  qryNF.FieldByName('cobr_fat_nFat').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Cobr.Fat.nFat;
  qryNF.FieldByName('cobr_fat_vOrig').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Cobr.Fat.vOrig;
  qryNF.FieldByName('cobr_fat_vDesc').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Cobr.Fat.vDesc;
  qryNF.FieldByName('cobr_fat_vLiq').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Cobr.Fat.vLiq;

  qryNF.FieldByName('infAdic_infCpl').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.InfAdic.infCpl;
  qryNF.FieldByName('infRespTec_CNPJ').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infRespTec.CNPJ;
  qryNF.FieldByName('infRespTec_xContato').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infRespTec.xContato;
  qryNF.FieldByName('infRespTec_email').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infRespTec.email;
  qryNF.FieldByName('infRespTec_fone').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infRespTec.fone;

  qryNF.FieldByName('Signature').Value := DM.ACBrNFe.NotasFiscais[0].XML;

  DM.tblProdutos.Open();

  for i := 0 to DM.ACBrNFe.NotasFiscais[0].NFe.Det.Count - 1 do
  begin
    qryNFitens.Open();
    qryNFitens.Append();

    qryNFitens.FieldByName('infnfe_chave').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.ID;
    qryNFitens.FieldByName('ide_mod').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.modelo;
    qryNFitens.FieldByName('ide_serie').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.serie;
    qryNFitens.FieldByName('ide_nNF').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.ide.nNF;

    qryNFitens.FieldByName('det_nitem').AsInteger := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.nItem;

    if DM.tblProdutos.Locate('produto', DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.xProd, [loPartialKey]) then
      qryNFitens.FieldByName('det_prod_cProd').AsString := DM.tblProdutoscodigo.AsString
    else
      qryNFitens.FieldByName('det_prod_cProd').AsString := '';

    qryNFitens.FieldByName('det_prod_cEAN').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.cEAN;
    qryNFitens.FieldByName('det_prod_xProd').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.xProd;
    qryNFitens.FieldByName('det_prod_NCM').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.NCM;
    qryNFitens.FieldByName('det_prod_CFOP').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.CFOP;
    qryNFitens.FieldByName('det_prod_uCom').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.uCom;
    qryNFitens.FieldByName('det_prod_qCom').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.qCom;
    qryNFitens.FieldByName('det_prod_vUnCom').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.vUnCom;
    qryNFitens.FieldByName('det_prod_vProd').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.vProd;
    qryNFitens.FieldByName('det_prod_cEANTrib').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.cEANTrib;
    qryNFitens.FieldByName('det_prod_uTrib').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.uTrib;
    qryNFitens.FieldByName('det_prod_qTrib').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.qTrib;
    qryNFitens.FieldByName('det_prod_vUnTrib').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.vUnTrib;
    qryNFitens.FieldByName('det_prod_indTot').AsInteger := StrToIntDef(indTotToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Prod.IndTot), 0);

    qryNFitens.FieldByName('det_prod_imposto_ICMS_orig').AsInteger := StrToIntDef(OrigToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.orig), 0);
    qryNFitens.FieldByName('det_prod_imposto_ICMS_CST').AsInteger := StrToIntDef(CSTICMSToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.CST), 0);
    qryNFitens.FieldByName('det_prod_imposto_ICMS_modBC').AsInteger := StrToIntDef(modBCToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.modBC), 0);
    qryNFitens.FieldByName('det_prod_imposto_ICMS_vBC').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vBC;
    qryNFitens.FieldByName('det_prod_imposto_ICMS_pICMS').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pICMS;
    qryNFitens.FieldByName('det_prod_imposto_ICMS_vICMS').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vICMS;

    qryNFitens.FieldByName('det_prod_imposto_ipi_cenq').AsString := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.IPI.cEnq;
    qryNFitens.FieldByName('det_prod_imposto_ipi_ipint').AsInteger := StrToIntDef(CSTIPIToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.IPI.CST), 0);

    qryNFitens.FieldByName('det_prod_imposto_pis_pisaliq_cst').AsInteger := StrToIntDef(CSTPISToStr(DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.PIS.CST), 0);
    qryNFitens.FieldByName('det_prod_imposto_pis_pisaliq_vbc').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.PIS.vBC;
    qryNFitens.FieldByName('det_prod_imposto_pis_pisaliq_ppis').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.PIS.pPIS;
    qryNFitens.FieldByName('det_prod_imposto_pis_pisaliq_vpis').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.PIS.vPIS;

    qryNFitens.FieldByName('det_prod_imposto_cofins_cofinsaliq_vbc').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.vBC;
    qryNFitens.FieldByName('det_prod_imposto_cofins_cofinsaliq_pcofins').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.pCOFINS;
    qryNFitens.FieldByName('det_prod_imposto_cofins_cofinsaliq_vcofins').AsFloat := DM.ACBrNFe.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.vCOFINS;

    qryNFitens.Post();
  end;

  qryNF.Post();
end;

function RetornaBandeiraCartao(Bandeira: integer): TpcnBandeiraCartao;
begin
  case Bandeira of
    1:
      Result := bcVisa;
    2:
      Result := bcMasterCard;
    3:
      Result := bcAmericanExpress;
    4:
      Result := bcSorocred;
    5:
      Result := bcDinersClub;
    6:
      Result := bcElo;
    7:
      Result := bcHipercard;
    8:
      Result := bcAura;
    9:
      Result := bcCabal;
    10:
      Result := bcAlelo;
    11:
      Result := bcBanesCard;
    12:
      Result := bcCalCard;
    13:
      Result := bcCredz;
    14:
      Result := bcDiscover;
    15:
      Result := bcGoodCard;
    16:
      Result := bcGreenCard;
    17:
      Result := bcHiper;
    18:
      Result := bcJcB;
    19:
      Result := bcMais;
    20:
      Result := bcMaxVan;
    21:
      Result := bcPolicard;
    22:
      Result := bcRedeCompras;
    23:
      Result := bcSodexo;
    24:
      Result := bcValeCard;
    25:
      Result := bcVerocheque;
    26:
      Result := bcVR;
    27:
      Result := bcTicket;
    99:
      Result := bcOutros;
  end;
end;

end.

