unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.WinXPickers, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Login, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type
  Ttelainicial = class(TForm)
    RelativePanel1: TRelativePanel;
    btnIncluirLancamento: TSpeedButton;
    btnRelatorios: TSpeedButton;
    btnImportar: TSpeedButton;
    labelBoasvindas: TLinkLabel;
    btnCadastrarUser: TSpeedButton;
    lbnUser: TLabel;
    procedure btnIncluirLancamentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
  user_logado: String;
  end;

var
  telainicial: Ttelainicial;

implementation


{$R *.dfm}

uses inclusaoLancamento , login_view;

procedure Ttelainicial.btnIncluirLancamentoClick(Sender: TObject);
begin
  inclusaoLancamento_view.ShowModal;

end;

procedure Ttelainicial.FormActivate(Sender: TObject);
begin
lbnUser.Caption := user_logado.ToUpper;
end;

procedure Ttelainicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
principal.telainicial.Destroy;
principal.telainicial.Close;
end;

end.
