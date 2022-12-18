unit inclusaoLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.Buttons, System.Actions, Vcl.ActnList, Vcl.NumberBox, lancamento;

type
  TinclusaoLancamento_View = class(TForm)
    Panel1: TPanel;
    historico: TLabel;
    informeValor: TLabel;
    labelData: TLabel;
    comboTipoLanc: TComboBox;
    labelTipo: TLabel;
    checkAtivo: TCheckBox;
    checkPassivo: TCheckBox;
    comboTipoBalanco: TComboBox;
    checkPatrimonioLiquido: TCheckBox;
    checkCaixa: TCheckBox;
    edtdatas: TMaskEdit;
    btnCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    edtvalorlanc: TNumberBox;
    valor: TEdit;
    edtHistorico: TEdit;
    procedure checkAtivoClick(Sender: TObject);
    procedure checkPassivoClick(Sender: TObject);
    procedure checkCaixaClick(Sender: TObject);
    procedure checkPatrimonioLiquidoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure comboTipoLancChange(Sender: TObject);
//    procedure FormActivate(Sender: TObject);
    procedure comboTipoBalancoChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  inclusaoLancamento_View: TinclusaoLancamento_View;
  tipoConta : String;
  tipoLanc : String;
  tipoBalanco : String;

implementation



{$R *.dfm}

procedure TinclusaoLancamento_View.btnCancelarClick(Sender: TObject);
begin
comboTipoLanc.ItemIndex := 0;
edtvalorlanc.Value := 0;
edtdatas.Text := '';
edtHistorico.Text := '';
checkAtivo.Checked := False;
checkPassivo.Checked := False;
checkPatrimonioLiquido.Checked := False;
checkcaixa.Checked := False;
inclusaoLancamento_View.Close;

end;

procedure TinclusaoLancamento_View.btnConfirmarClick(Sender: TObject);
var
   Lancamento: TLancamento;
begin
Try
  begin

  Lancamento := TLancamento.Create;
  Lancamento.incluirLancamento;
  ;

  // Voce pode tamb�m criar uma fun��o, assim vc n�o precisa criar essa var
  // sucesso.

  // A function , eu passo que o tipo � bool e que ela retorna sucesso, seria isso?
  // assim �
     showmessage('Lan�amento Incluido com Sucesso');





  {


  }


   end
except
  on e:exception do
  begin
  showmessage('Infelizmente n�o foi possivel realizar a inclus�o' + e.Message);
  showmessage(e.StackTrace);
  end;
End;
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
    tipoBalanco := 'C';
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
    tipoBalanco := 'C';
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

procedure TinclusaoLancamento_View.comboTipoBalancoChange(Sender: TObject);
begin
if comboTipoBalanco.ItemIndex = 0 then
begin
  tipoBalanco := 'C';
end
else
begin
  tipoBalanco := 'N';
end;

end;

procedure TinclusaoLancamento_View.comboTipoLancChange(Sender: TObject);
begin
if comboTipolanc.ItemIndex = 0 then
begin
tipoLanc := 'E';
end
else
begin
  tipoLanc := 'S';
end;
end;

//procedure TinclusaoLancamento_View.FormActivate(Sender: TObject);
//begin
//tipoLanc := 'E';
//end;

end.
