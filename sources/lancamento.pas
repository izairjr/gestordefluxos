unit lancamento;


interface
uses
inclusaoLancamento,
principal,
login_view;

implementation
var
sucesso :boolean;

procedure incluirLancamento();
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
Try
BEGIN
  LOGIN.FDQuery1.Open();
  sucesso := True  ;
END
except
  sucesso := False;
begin

end;

End;








end;

end.
