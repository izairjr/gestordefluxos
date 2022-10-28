unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.WinXPickers;

type
  Ttelainicial = class(TForm)
    RelativePanel1: TRelativePanel;
    btnIncluirLancamento: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnImportar: TSpeedButton;
    editData: TDatePicker;
    labelBoasvindas: TLinkLabel;
    procedure btnIncluirLancamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telainicial: Ttelainicial;

implementation


{$R *.dfm}

uses inclusaoLancamento;

procedure Ttelainicial.btnIncluirLancamentoClick(Sender: TObject);
begin
inclusaoLancamento_view.ShowModal;

end;

end.
