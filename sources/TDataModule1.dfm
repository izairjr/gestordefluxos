object DataModule1: TDataModule1
  OldCreateOrder = True
  Height = 325
  Width = 526
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 112
    Top = 24
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Gestor Fluxo caixa\gestorfluxosDB.sqlite'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 25
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 198
    Top = 24
  end
end
