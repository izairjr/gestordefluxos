unit lancamento;


interface

uses
principal,
login_view;
type
  Tlancamento = class

private

public
  procedure incluirLancamento;
end;

var
   unt_lancamento : Tlancamento;
   sucesso :boolean;

  {

  O VAR aqui declara a sua unit para as demais units do sistema.
  mesmo assim, vai ser preciso vc criar ela antes de chamar ...
  Tem dois jeitos, ou vc cria junto com o projeto (não recomendo) ou
  vc cria antes de chamar... assim...

  }



implementation

uses
inclusaoLancamento; DBconection;



procedure TLancamento.incluirLancamento;
begin      // =)
//login.FDConnection1.Connected := true;
// login_view.login.FDQuery1.Close;
 login_view.login.FDQuery1.SQL.Clear;
 login_view.login.FDQuery1.SQL.Add('INSERT INTO IGNORE LANCAMENTOS VALUES :data_lanc,:tipo_lanc,:saldo,:historico,:tipo_conta,:circulante)');
 login_view.login.FDQuery1.ParamByName('data_lanc').AsString := inclusaoLancamento_View.edtdatas.Text;
 login.FDquery1.ParamByName('tipo_lanc').AsString := inclusaoLancamento.tipoLanc;
 login.FDquery1.ParamByName('saldo').AsFloat := inclusaoLancamento_view.edtvalorlanc.Value;
 login.FDquery1.ParamByName('historico').AsString := inclusaoLancamento_View.edtHistorico.Text;
 login.FDquery1.ParamByName('tipo_conta').AsString := inclusaoLancamento.tipoConta;
 login.FDquery1.ParamByName('circulante').AsString := inclusaoLancamento.tipoBalanco;
 LOGIN.FDQuery1.Open();
end;

{ Tlancamento }
function inclLancamento:boolean;
begin
 login_view.login.FDConnection1.Connected := True;
 login_view.login.FDQuery1.Close;
 login_view.login.FDQuery1.SQL.Clear;
 login_view.login.FDQuery1.SQL.Add('INSERT INTO IGNORE LANCAMENTOS VALUES :data_lanc,:tipo_lanc,:saldo,:historico,:tipo_conta,:circulante)');
 login_view.login.FDQuery1.ParamByName('data_lanc').AsString := inclusaoLancamento_View.edtdatas.Text;
 login.FDquery1.ParamByName('tipo_lanc').AsString := inclusaoLancamento.tipoLanc;
 login.FDquery1.ParamByName('saldo').AsFloat := inclusaoLancamento_view.edtvalorlanc.Value;
 login.FDquery1.ParamByName('historico').AsString := inclusaoLancamento_View.edtHistorico.Text;
 login.FDquery1.ParamByName('tipo_conta').AsString := inclusaoLancamento.tipoConta;
 login.FDquery1.ParamByName('circulante').AsString := inclusaoLancamento.tipoBalanco;
 login.FDQuery1.Open();
end;
end.


