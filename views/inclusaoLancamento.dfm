object inclusaoLancamento_View: TinclusaoLancamento_View
  Left = 0
  Top = 0
  Caption = 'Inclus'#227'o de Lan'#231'amento'
  ClientHeight = 377
  ClientWidth = 654
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 377
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 657
    object historico: TLabel
      Left = 24
      Top = 15
      Width = 266
      Height = 19
      Caption = 'Informe o hist'#243'rico do lan'#231'amento:'
    end
    object informeValor: TLabel
      Left = 24
      Top = 71
      Width = 121
      Height = 19
      Caption = 'Informe o Valor'
    end
    object labelValor: TLabel
      Left = 200
      Top = 71
      Width = 107
      Height = 19
      Caption = 'InformeValor: '
    end
    object labelTipo: TLabel
      Left = 368
      Top = 71
      Width = 82
      Height = 19
      Caption = 'Tipo Lanc:'
    end
    object TEdit
      Left = 24
      Top = 40
      Width = 601
      Height = 27
      TabOrder = 0
      Text = '...'
    end
    object valor: TEdit
      Left = 24
      Top = 96
      Width = 121
      Height = 27
      TabOrder = 1
    end
    object dataLanc: TEdit
      Left = 200
      Top = 96
      Width = 121
      Height = 27
      TabOrder = 2
    end
    object comboTipoLanc: TComboBox
      Left = 368
      Top = 96
      Width = 137
      Height = 27
      TabOrder = 3
      Items.Strings = (
        'Entrada'
        'Saida')
    end
    object checkAtivo: TCheckBox
      Left = 24
      Top = 152
      Width = 97
      Height = 17
      Caption = 'Ativo'
      TabOrder = 4
      OnClick = checkAtivoClick
    end
    object checkPassivo: TCheckBox
      Left = 24
      Top = 175
      Width = 97
      Height = 17
      Caption = 'Passivo'
      TabOrder = 5
      OnClick = checkPassivoClick
    end
    object comboTipoBalanco: TComboBox
      Left = 200
      Top = 147
      Width = 121
      Height = 27
      TabOrder = 6
      Visible = False
      Items.Strings = (
        'Circulante'
        'N'#227'o-Circulante')
    end
    object checkPatrimonioLiquido: TCheckBox
      Left = 24
      Top = 198
      Width = 177
      Height = 17
      Caption = 'Patrimonio liquido'
      TabOrder = 7
    end
  end
end