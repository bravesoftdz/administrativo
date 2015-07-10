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

unit ACBrNFeDANFEClass;

interface

uses Forms, SysUtils, Classes,
  pcnNFe, pcnConversao;

type

  TCasasDecimais = class(TComponent)
  private
    FqCom: integer;
    FvUnCom: integer;

    procedure Set_qCom(AValue: integer);
    procedure Set_vUnCom(AValue: integer);
  public
    constructor Create(AOwner: TComponent); override ;
    destructor Destroy; override;
  published
    property _qCom: Integer read FQCom write Set_qCom;
    property _vUnCom: Integer read FvUnCom write Set_vUnCom;
  end;

  TACBrNFeDANFEClass = class( TComponent )
   private
    procedure SetNFE(const Value: TComponent);
    procedure ErroAbstract( NomeProcedure : String ) ;
  protected
    FACBrNFe : TComponent;
    FLogo: String;
    FSistema:String;
    FUsuario:String;
    FPathArquivos : String;
    FImpressora : String;
    FImprimirHoraSaida : Boolean;
    FMostrarPreview : Boolean;
    FTipoDANFE : TpcnTipoImpressao;
    FNumCopias : Integer;
    FFax  : String;
    FSite : String;
    FEmail: String;
    FImprimeDescPorc : Boolean;
	 FProtocoloNFe: string;
    FMargemInferior: Double;
    FCasasDecimais: TCasasDecimais;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ImprimirDANFE(NFE : TNFe = nil); virtual;
    procedure ImprimirDANFEPDF(NFE : TNFe = nil); virtual;
  published
    property ACBrNFe : TComponent  read FACBrNFe write SetNFE ;
    property Logo: String read FLogo write FLogo ;
    property Sistema: String read FSistema write FSistema ;
    property Usuario: String read FUsuario write FUsuario ;
    property PathPDF: String read FPathArquivos write FPathArquivos ;
    property Impressora: String read FImpressora write FImpressora ;
    property ImprimirHoraSaida: Boolean read FImprimirHoraSaida write FImprimirHoraSaida ;
    property MostrarPreview: Boolean read FMostrarPreview write FMostrarPreview ;
    property TipoDANFE: TpcnTipoImpressao read FTipoDANFE write FTipoDANFE ;
    property NumCopias: Integer read FNumCopias write FNumCopias ;
    property Fax  : String read FFax   write FFax ;
    property Site : String read FSite  write FSite ;
    property Email: String read FEmail write FEmail ;
    property ImprimirDescPorc: Boolean read FImprimeDescPorc write FImprimeDescPorc ;
    property ProtocoloNFe: String read FProtocoloNFe write FProtocoloNFe ;
    property MargemInferior: Double read FMargemInferior write FMargemInferior ;
    property CasasDecimais: TCasasDecimais read FCasasDecimais ;
  end;

implementation

uses ACBrNFe ;

//Casas Decimais
constructor TCasasDecimais.Create(AOwner: TComponent);
begin
  inherited create( AOwner );

  FQCom := 2;
  FvUnCom := 2;
end;

destructor TCasasDecimais.Destroy;
begin

  inherited Destroy ;
end;

procedure TCasasDecimais.Set_qCom(AValue: integer);
begin
  if ((AValue >= 0) and
      (AValue <= 4))  then
    FqCom := AValue
  else
    FqCom := 2;
end;

procedure TCasasDecimais.Set_vUnCom(AValue: integer);
begin
  if ((AValue >= 0) and
      (AValue <= 4))  then
    FvUnCom := AValue
  else
    FvUnCom := 2;
end;

//DANFE CLASS
constructor TACBrNFeDANFEClass.Create(AOwner: TComponent);
begin
  inherited create( AOwner );

  FACBrNFe      := nil ;
  FLogo         := '' ;
  FSistema      := '' ;
  FUsuario      := '' ;
  FPathArquivos := '' ;
  FImpressora   := '' ;
  FImprimirHoraSaida    := False;
  FMostrarPreview       := True;
  FNumCopias := 1;
  FFax   := '' ;
  FSite  := '' ;
  FEmail := '' ;
  FImprimeDescPorc := False;
  FProtocoloNFe := '';
  FMargemInferior := 0.8;
  FCasasDecimais := TCasasDecimais.Create(self);
  FCasasDecimais.Name:= 'CasasDecimais' ;
  {$IFDEF COMPILER6_UP}
      FCasasDecimais.SetSubComponent( true );{ para gravar no DFM/XFM }
  {$ENDIF}

end;

destructor TACBrNFeDANFEClass.Destroy;
begin

  inherited Destroy ;
end;

procedure TACBrNFeDANFEClass.ImprimirDANFE(NFE : TNFe = nil) ;
begin
  ErroAbstract('Imprimir');
end;

procedure TACBrNFeDANFEClass.ImprimirDANFEPDF(NFE : TNFe = nil) ;
begin
  ErroAbstract('ImprimirPDF');
end;

procedure TACBrNFeDANFEClass.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) and (FACBrNFe <> nil) and (AComponent is TACBrNFe) then
     FACBrNFe := nil ;
end;

procedure TACBrNFeDANFEClass.SetNFE(const Value: TComponent);
  Var OldValue : TACBrNFe ;
begin
  if Value <> FACBrNFe then
  begin
     if Value <> nil then
        if not (Value is TACBrNFe) then
           raise Exception.Create('ACBrDANFERave.NFE deve ser do tipo TACBrNFe') ;

     if Assigned(FACBrNFe) then
        FACBrNFe.RemoveFreeNotification(Self);

     OldValue := TACBrNFe(FACBrNFe) ;   // Usa outra variavel para evitar Loop Infinito
     FACBrNFe := Value;                 // na remo��o da associa��o dos componentes

     if Assigned(OldValue) then
        if Assigned(OldValue.DANFE) then
           OldValue.DANFE := nil ;

     if Value <> nil then
     begin
        Value.FreeNotification(self);
        TACBrNFe(Value).DANFE := self ;
     end ;
  end ;
end;

procedure TACBrNFeDANFEClass.ErroAbstract(NomeProcedure: String);
begin
  raise Exception.Create( NomeProcedure ) ;
end;

end.
