unit inclusaoLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TinclusaoLancamento_View = class(TForm)
    Panel1: TPanel;
    historico: TLabel;
    valor: TEdit;
    informeValor: TLabel;
    labelData: TLabel;
    comboTipoLanc: TComboBox;
    labelTipo: TLabel;
    checkAtivo: TCheckBox;
    checkPassivo: TCheckBox;
    comboTipoBalanco: TComboBox;
    checkPatrimonioLiquido: TCheckBox;
    checkCaixa: TCheckBox;
    MaskEdit1: TMaskEdit;
    btnCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    ActionList1: TActionList;
    procedure checkAtivoClick(Sender: TObject);
    procedure checkPassivoClick(Sender: TObject);
    procedure checkCaixaClick(Sender: TObject);
    procedure checkPatrimonioLiquidoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  inclusaoLancamento_View: TinclusaoLancamento_View;
  tipoConta : String;

implementation

{$R *.dfm}

procedure TinclusaoLancamento_View.btnCancelarClick(Sender: TObject);
begin
comboTipoLanc.ItemIndex := 0;
inclusaoLancamento_View.Close;

end;

procedure TinclusaoLancamento_View.checkAtivoClick(Sender: TObject);
begin
if checkAtivo.Checked = True then
begin
    checkPassivo.Checked := False;
    checkPassivo.Enabled := False;
    comboTipoBalanco.Visible := True;
    checkPatrimonioLiquido.Enabled :=False;
    checkPatrimonioLiquido.Checked := False;
    checkCaixa.Checked := False;
    checkCaixa.Enabled := False;
    tipoconta := 'A';
end
else
begin
    checkPassivo.Enabled := True;
    comboTipoBalanco.Visible := False;
    checkPatrimonioLiquido.Enabled :=True;
    checkCaixa.Enabled := True;
end;
end;

procedure TinclusaoLancamento_View.checkCaixaClick(Sender: TObject);
begin
if checkCaixa.Checked = True then
begin
    checkAtivo.Enabled := False;
    checkAtivo.Checked := False;
    checkPassivo.Checked := False;
    checkPassivo.Enabled := False;
    checkPatrimonioLiquido.Enabled :=False;
    checkPatrimonioLiquido.Checked := False;
    tipoconta := 'C';
end
else
begin
     checkAtivo.Enabled := True;
     comboTipoBalanco.Visible := False;
     checkPatrimonioLiquido.Enabled :=True;
     checkPassivo.Enabled := True;
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
    checkCaixa.Checked := False;
    checkCaixa.Enabled := False;
    tipoconta := 'P';
end
else
begin
     checkAtivo.Enabled := True;
     comboTipoBalanco.Visible := False;
     checkPatrimonioLiquido.Enabled :=True;
     checkCaixa.Enabled := True;
end;
end;

procedure TinclusaoLancamento_View.checkPatrimonioLiquidoClick(Sender: TObject);
begin
if checkPatrimonioLiquido.Checked = True then
begin
  checkAtivo.Enabled := False;
  checkPassivo.Enabled := False;
  checkCaixa.Enabled := False;
  checkAtivo.Checked := False;
  checkPassivo.Checked := False;
  checkCaixa.Checked := False;
  tipoconta := 'PL';
end
else
begin
  checkAtivo.Enabled := True;
  checkPassivo.Enabled := True;
  checkCaixa.Enabled := True;

end;

end;

end.
