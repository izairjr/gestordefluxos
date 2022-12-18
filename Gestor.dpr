program Gestor;

uses
  Vcl.Forms,
  principal in 'views\principal.pas' {telainicial},
  inclusaoLancamento in 'views\inclusaoLancamento.pas' {inclusaoLancamento_View},
  login_view in 'views\login_view.pas' {login},
  conexoesLogin in 'sources\conexoesLogin.pas',
  Vcl.Themes,
  Vcl.Styles,
  lancamento in 'sources\lancamento.pas',
  DBconection in 'sources\DBconection.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestor de Fluxos';
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Ttelainicial, telainicial);
  Application.CreateForm(TinclusaoLancamento_View, inclusaoLancamento_View);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
