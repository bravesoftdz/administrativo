{******************************************************************************}
{ Projeto: Componente ACBrNFe                                                  }
{  Biblioteca multiplataforma de componentes Delphi para emiss�o de Nota Fiscal}
{ eletr�nica - NFe - http://www.nfe.fazenda.gov.br                          }
{                                                                              }
{ Direitos Autorais Reservados (c) 2008 Wemerson Souto                         }
{                                       Daniel Simoes de Almeida               }
{                                       Andr� Ferreira de Moraes               }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do Projeto ACBr     }
{ Componentes localizado em http://www.sourceforge.net/projects/acbr           }
{                                                                              }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Historico
|*
|* 16/12/2008: Wemerson Souto
|*  - Doa��o do componente para o Projeto ACBr
******************************************************************************}
{$I ACBr.inc}

unit ACBrNFeConfiguracoes;

interface

uses {$IFNDEF ACBrNFeOpenSSL} ACBrNFeCAPICOM_TLB, {$ENDIF}
  Classes, Sysutils, pcnConversao;


type

  TCertificadosConf = class(TComponent)
  private
    {$IFDEF ACBrNFeOpenSSL}
       FCertificado: AnsiString;
       FSenhaCert: AnsiString;
    {$ELSE}
       FNumeroSerie: AnsiString;
       procedure SetNumeroSerie(const Value: AnsiString);
       function GetNumeroSerie: AnsiString;
    {$ENDIF}
  public
    {$IFNDEF ACBrNFeOpenSSL}
       function SelecionarCertificado:AnsiString;
       function GetCertificado: ICertificate2;
    {$ENDIF}
  published
    {$IFDEF ACBrNFeOpenSSL}
       property Certificado: AnsiString read FCertificado write FCertificado;
       property Senha: AnsiString read FSenhaCert write FSenhaCert;
    {$ELSE}
       property NumeroSerie: AnsiString read GetNumeroSerie write SetNumeroSerie;
    {$ENDIF}
  end;

  TWebServicesConf = Class(TComponent)
  private
    FVisualizar : Boolean;
    FUF: String;
    FUFCodigo: Integer;
    FAmbiente: TpcnTipoAmbiente;
    FAmbienteCodigo: Integer;
    FProxyHost: String;
    FProxyPort: String;
    FProxyUser: String;
    FProxyPass: String;
    procedure SetUF(AValue: String);
    procedure SetAmbiente(AValue: TpcnTipoAmbiente);
  public
    constructor Create(AOwner: TComponent); override ;
  published
    property Visualizar: Boolean read FVisualizar write FVisualizar
      default False ;
    property UF: String read FUF write SetUF;
    property UFCodigo: Integer read FUFCodigo;
    property Ambiente: TpcnTipoAmbiente read FAmbiente write SetAmbiente
      default taHomologacao ;
    property AmbienteCodigo: Integer read FAmbienteCodigo;
    property ProxyHost: String read FProxyHost write FProxyHost;
    property ProxyPort: String read FProxyPort write FProxyPort;
    property ProxyUser: String read FProxyUser write FProxyUser;
    property ProxyPass: String read FProxyPass write FProxyPass;
  end;

  TGeralConf = class(TComponent)
  private
    FFormaEmissao: TpcnTipoEmissao;
    FFormaEmissaoCodigo: Integer;
    FSalvar: Boolean;
    FPathSalvar: String;
    procedure SetFormaEmissao(AValue: TpcnTipoEmissao);
    function GetPathSalvar: String;
  public
    constructor Create(AOwner: TComponent); override ;
    function Save(AXMLName: String; AXMLFile: WideString): Boolean;
  published
    property FormaEmissao: TpcnTipoEmissao read FFormaEmissao
      write SetFormaEmissao default teNormal ;
    property FormaEmissaoCodigo: Integer read FFormaEmissaoCodigo;
    property Salvar: Boolean read FSalvar write FSalvar default False ;
    property PathSalvar: String read GetPathSalvar write FPathSalvar;
  end;

  TConfiguracoes = class(TComponent)
  private
    FGeral: TGeralConf;
    FWebServices: TWebServicesConf;
    FCertificados: TCertificadosConf;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Geral: TGeralConf read FGeral ;
    property WebServices: TWebServicesConf read FWebServices ;
    property Certificados: TCertificadosConf read FCertificados ;
  end;

implementation

uses ACBrNFeUtil,  Math;

{ TConfiguracoes }

constructor TConfiguracoes.Create(AOwner: TComponent);
begin
  inherited Create( AOwner ) ;
  
  FGeral       := TGeralConf.Create(Self);
  FGeral.Name  := 'GeralConf' ;
  {$IFDEF COMPILER6_UP}
   FGeral.SetSubComponent( true );{ para gravar no DFM/XFM }
  {$ENDIF}

  FWebServices  := TWebServicesConf.Create(self);
  FWebServices.Name  := 'WebServicesConf' ;
  {$IFDEF COMPILER6_UP}
   FWebServices.SetSubComponent( true );{ para gravar no DFM/XFM }
  {$ENDIF}

  FCertificados := TCertificadosConf.Create(self);
  FCertificados.Name  := 'CertificadosConf' ;
  {$IFDEF COMPILER6_UP}
   FCertificados.SetSubComponent( true );{ para gravar no DFM/XFM }
  {$ENDIF}
end;

destructor TConfiguracoes.Destroy;
begin
  FGeral.Free;
  FWebServices.Free;
  FCertificados.Free;
  inherited;
end;

{ TGeralConf }

constructor TGeralConf.Create(AOwner: TComponent);
begin
  Inherited Create( AOwner );

  FFormaEmissao       := teNormal;
  FFormaEmissaoCodigo := StrToInt(TpEmisToStr(FFormaEmissao));
  FSalvar             := False;
  FPathSalvar         := '' ;
end;

function TGeralConf.GetPathSalvar: String;
begin
  if NotaUtil.EstaVazio(FPathSalvar) then
    Result := NotaUtil.PathAplication
  else
    Result := FPathSalvar;
end;

function TGeralConf.Save(AXMLName: String; AXMLFile: WideString): Boolean;
var
  vSalvar: TStrings;
begin
  Result := False;
  vSalvar := TStringList.Create;
  try
    try
      vSalvar.Text := AXMLFile;
      ForceDirectories(FPathSalvar);
      vSalvar.SaveToFile(FPathSalvar+PathDelim+AXMLName);
      Result := True;
    except on E: Exception do
      raise Exception.Create('Erro ao salvar .'+E.Message);
    end;
  finally
    vSalvar.Free;
  end;
end;

procedure TGeralConf.SetFormaEmissao(AValue: TpcnTipoEmissao);
begin
  FFormaEmissao := AValue;
  FFormaEmissaoCodigo := StrToInt(TpEmisToStr(FFormaEmissao));
end;

{ TWebServicesConf }

constructor TWebServicesConf.Create(AOwner: TComponent);
begin
  Inherited Create( AOwner );

  FUF               := NFeUF[24];
  FUFCodigo         := NFeUFCodigo[24];
  FAmbiente         := taHomologacao;
  FVisualizar       := False ;
  FAmbienteCodigo   := StrToInt(TpAmbToStr(FAmbiente));
end;

procedure TWebServicesConf.SetAmbiente(AValue: TpcnTipoAmbiente);
begin
  FAmbiente := AValue;
  FAmbienteCodigo := StrToInt(TpAmbToStr(AValue));
end;

procedure TWebServicesConf.SetUF(AValue: String);
var
  Codigo, i: Integer;
begin
  Codigo := -1 ;
  for i:= 0 to High(NFeUF) do
  begin
    if NFeUF[I] = AValue then
      Codigo := NFeUFCodigo[I];
  end;

  if Codigo < 0 then
     raise Exception.Create('UF inv�lida');
     
  FUF       := AValue;
  FUFCodigo := Codigo;
end;

{ TCertificadosConf }

{$IFNDEF ACBrNFeOpenSSL}
function TCertificadosConf.GetCertificado: ICertificate2;
var
  Store        : IStore3;
  Certs        : ICertificates2;
  Cert         : ICertificate2;
  i            : Integer;
begin
  Result := nil;
  Store := CoStore.Create;
  Store.Open(CAPICOM_CURRENT_USER_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

  Certs := Store.Certificates as ICertificates2;
  for i:= 1 to Certs.Count do
  begin
    Cert := IInterface(Certs.Item[i]) as ICertificate2;
    if Cert.SerialNumber = FNumeroSerie then
    begin
      Result := Cert;
      break;
    end;
  end;

  if not(Assigned(Result)) then
    raise Exception.Create('Certificado Digital n�o encontrado!');

end;

function TCertificadosConf.GetNumeroSerie: AnsiString;
begin
  Result := Trim(UpperCase(StringReplace(FNumeroSerie,' ','',[rfReplaceAll] )));
end;

procedure TCertificadosConf.SetNumeroSerie(const Value: AnsiString);
begin
  FNumeroSerie := Trim(UpperCase(StringReplace(Value,' ','',[rfReplaceAll] )));
end;

function TCertificadosConf.SelecionarCertificado: AnsiString;
var
  Store        : IStore3;
  Certs        : ICertificates2;
  Certs2       : ICertificates2;
  Cert         : ICertificate2;
begin
  Store := CoStore.Create;
  Store.Open(CAPICOM_CURRENT_USER_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

  Certs := Store.Certificates as ICertificates2;
  Certs2 := Certs.Select('Certificado(s) Digital(is) dispon�vel(is)', 'Selecione o Certificado Digital para uso no aplicativo', false);

  if not(Certs2.Count = 0) then
  begin
    Cert := IInterface(Certs2.Item[1]) as ICertificate2;
    FNumeroSerie := Cert.SerialNumber;
  end;

  Result := FNumeroSerie;
end;

{$ENDIF}

end.
