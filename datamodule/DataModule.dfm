object dtmdlPrincipal: TdtmdlPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object fdphyspgdrvrlnk1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 176
    Top = 208
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=SistemaSaude'
      'User_Name=postgres'
      'Password=senha'
      'DriverID=pG')
    Connected = True
    Left = 320
    Top = 208
  end
  object fdtblpaciente: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = con1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'paciente'
    Left = 192
    Top = 424
  end
  object fdtblendereco: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = con1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'endereco'
    Left = 336
    Top = 424
  end
  object fdtblagendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = con1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'agendamento'
    Left = 640
    Top = 432
  end
  object fdtblprocedimento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = con1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'procedimento'
    Left = 488
    Top = 424
  end
end
