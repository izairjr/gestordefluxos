object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Gestor Fluxo caixa\gestorfluxosDB.sqlite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 8
  end
end
