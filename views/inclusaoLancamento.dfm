object inclusaoLancamento_View: TinclusaoLancamento_View
  Left = 0
  Top = 0
  Caption = 'Inclus'#227'o de Lan'#231'amento'
  ClientHeight = 330
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
    Height = 330
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 377
    object historico: TLabel
      Left = 24
      Top = 72
      Width = 266
      Height = 19
      Caption = 'Informe o hist'#243'rico do lan'#231'amento:'
    end
    object informeValor: TLabel
      Left = 190
      Top = 14
      Width = 115
      Height = 19
      Caption = 'Informe o Valor'
    end
    object labelData: TLabel
      Left = 344
      Top = 14
      Width = 110
      Height = 19
      Caption = 'Infome a Data:'
    end
    object labelTipo: TLabel
      Left = 24
      Top = 14
      Width = 82
      Height = 19
      Caption = 'Tipo Lanc:'
    end
    object btnCancelar: TSpeedButton
      Left = 24
      Top = 264
      Width = 91
      Height = 49
      Caption = 'Cancelar'
    end
    object btnConfirmar: TSpeedButton
      Left = 520
      Top = 264
      Width = 105
      Height = 49
      Caption = 'Confirmar'
    end
    object TEdit
      Left = 24
      Top = 97
      Width = 601
      Height = 27
      TabOrder = 2
      Text = '...'
    end
    object valor: TEdit
      Left = 190
      Top = 39
      Width = 121
      Height = 27
      NumbersOnly = True
      OEMConvert = True
      TabOrder = 1
    end
    object comboTipoLanc: TComboBox
      Left = 24
      Top = 38
      Width = 137
      Height = 27
      TabOrder = 0
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
      Left = 190
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
      OnClick = checkPatrimonioLiquidoClick
    end
    object checkCaixa: TCheckBox
      Left = 24
      Top = 221
      Width = 177
      Height = 17
      Caption = 'Caixa Direto'
      TabOrder = 8
      OnClick = checkCaixaClick
    end
    object MaskEdit1: TMaskEdit
      Left = 344
      Top = 39
      Width = 118
      Height = 27
      EditMask = '!99/99/0000;0;_'
      MaxLength = 10
      TabOrder = 3
      Text = ''
    end
  end
  object ActionList1: TActionList
    Left = 568
    Top = 152
  end
end
