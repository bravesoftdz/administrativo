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
|* 09/03/2009: Dulcemar P.Zilli
|*  - Correcao impress�o informa��es IPI
|* 11/03/2008: Dulcemar P.Zilli
|*  - Inclus�o Observa��es Fisco
|* 11/03/2008: Dulcemar P.Zilli
|*  - Inclus�o totais ISSQN
|* 23/06/2009: Jo�o H. Souza
|*  - Altera��es diversas
******************************************************************************}
{$I ACBr.inc}

unit ACBrNFeDANFEQR;

interface

uses Forms, SysUtils, Classes, RpDefine,
  ACBrNFeDANFEClass, ACBrNFeDANFEQRDM, pcnNFe;

type
  TACBrNFeDANFEQR = class( TACBrNFeDANFEClass )
   private
     formDanfe : TformACBrNFeQR;
   public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ImprimirDANFE(NFE : TNFe = nil; NumCopias : Integer = 1); override ;
    procedure ImprimirDANFEPDF(NFE : TNFe = nil; NumCopias : Integer = 1); override ;
  end;

implementation

uses ACBrNFe, ACBrNFeUtil, ACBrUtil, StrUtils;

constructor TACBrNFeDANFEQR.Create(AOwner: TComponent);
begin
  inherited create( AOwner );
end;

destructor TACBrNFeDANFEQR.Destroy;
begin
  inherited Destroy ;
end;

procedure TACBrNFeDANFEQR.ImprimirDANFE(NFE : TNFe = nil; NumCopias : Integer = 1);
var
 i : Integer;
 formDanfe : TformACBrNFeQR;
begin
  if NFE = nil then
   begin
     for i:= 0 to TACBrNFe(ACBrNFe).NotasFiscais.Count-1 do
      begin
        formDanfe := TformACBrNFeQR.Create(Self);
        formDanfe.NFe := TACBrNFe(ACBrNFe).NotasFiscais.Items[i].NFe;
        formDanfe.QuickRepDanfe.Visible := False;
        formDanfe.QuickRepDanfe.Preview;
        formDanfe.Free;
      end;
   end
  else
   begin
        formDanfe.NFe := NFE;
        formDanfe.QuickRepDanfe.Visible := False;
        formDanfe.QuickRepDanfe.Preview;

   end;

end;

procedure TACBrNFeDANFEQR.ImprimirDANFEPDF(NFE : TNFe = nil; NumCopias : Integer = 1);
var
 i : Integer;
begin
  if NFE = nil then
   begin
     for i:= 0 to TACBrNFe(ACBrNFe).NotasFiscais.Count-1 do
      begin
//        dmDanfe.NFe := TACBrNFe(ACBrNFe).NotasFiscais.Items[i].NFe;
//        dmDanfe.RvSystem1.OutputFileName := PathWithDelim(FPathArquivos)+dmDanfe.NFe.infNFe.ID+'.pdf';
//        dmDanfe.RvProject.Execute;
      end;
   end
  else
   begin
//     dmDanfe.NFe := NFE;
//     dmDanfe.RvSystem1.OutputFileName := PathWithDelim(FPathArquivos)+dmDanfe.NFe.infNFe.ID+'.pdf';
//     dmDanfe.RvProject.Execute;
   end;
end;


end.
