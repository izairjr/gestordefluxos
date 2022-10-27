unit inclusaoLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TinclusaoLancamento_View = class(TForm)
    Panel1: TPanel;
    historico: TLabel;
    valor: TEdit;
    informeValor: TLabel;
    dataLanc: TEdit;
    labelValor: TLabel;
    comboTipoLanc: TComboBox;
    labelTipo: TLabel;
    checkAtivo: TCheckBox;
    checkPassivo: TCheckBox;
    comboTipoBalanco: TComboBox;
    checkPatrimonioLiquido: TCheckBox;
    procedure checkAtivoClick(Sender: TObject);
    procedure checkPassivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inclusaoLancamento_View: TinclusaoLancamento_View;

implementation

{$R *.dfm}

procedure TinclusaoLancamento_View.checkAtivoClick(Sender: TObject);
begin
if checkAtivo.Checked = True then
begin
    checkPassivo.Checked := False;
    checkPassivo.Enabled := False;
    comboTipoBalanco.Visible := True;
    checkPatrimonioLiquido.Enabled :=False;
    checkPatrimonioLiquido.Checked := False;
end
else
begin
    checkPassivo.Enabled := True;
    comboTipoBalanco.Visible := False;
    checkPatrimonioLiquido.Enabled :=True;
end;
end;

procedure TinclusaoLancamento_View.checkPassivoClick(Sender: TObject);
begin
if checkPassivo.Checked = True then
begin
    checkAtivo.Enabled := False;
    checkAtivo.Checked := False;
    checkPatrimonioLiquido.Enabled :=False;
    checkPatrimonioLiquido.Checked := False;
    comboTipoBalanco.Visible := True;
end
else
begin
     checkAtivo.Enabled := True;
     comboTipoBalanco.Visible := False;
     checkPatrimonioLiquido.Enabled :=True;
end;
end;

end.