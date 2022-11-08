program Gestor;

uses
  Vcl.Forms,
  principal in 'views\principal.pas' {telainicial},
  inclusaoLancamento in 'views\inclusaoLancamento.pas' {inclusaoLancamento_View},
  login_view in 'views\login_view.pas' {login},
  conexoesLogin in 'sources\conexoesLogin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tlogin, login);
  Application.Run;
end.
