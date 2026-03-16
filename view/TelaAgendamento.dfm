object frmTelaAgendamento: TfrmTelaAgendamento
  Left = 0
  Top = 0
  Caption = 'Agendamento'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAgendar: TLabel
    Left = 32
    Top = 16
    Width = 79
    Height = 30
    Caption = 'Agendar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPaciente: TLabel
    Left = 32
    Top = 72
    Width = 57
    Height = 21
    Caption = 'Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblProcedimento: TLabel
    Left = 32
    Top = 168
    Width = 97
    Height = 21
    Caption = 'Procedimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblDataHora: TLabel
    Left = 32
    Top = 264
    Width = 72
    Height = 21
    Caption = 'Data/Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cbPaciente: TDBLookupComboBox
    Left = 32
    Top = 99
    Width = 513
    Height = 23
    KeyField = 'id'
    ListField = 'nome'
    ListSource = dsPaciente
    TabOrder = 0
  end
  object cbProcedimento: TDBLookupComboBox
    Left = 32
    Top = 195
    Width = 513
    Height = 23
    KeyField = 'id'
    ListField = 'nome'
    ListSource = dsProcedimento
    TabOrder = 1
  end
  object edtDataHora: TEdit
    Left = 32
    Top = 291
    Width = 265
    Height = 23
    TabOrder = 2
  end
  object btnAgendar: TButton
    Left = 32
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Agendar'
    TabOrder = 3
    OnClick = btnAgendarClick
  end
  object dsPaciente: TDataSource
    DataSet = dtmdlPrincipal.fdtblpaciente
    Left = 240
    Top = 24
  end
  object dsProcedimento: TDataSource
    DataSet = dtmdlPrincipal.fdtblprocedimento
    Left = 328
    Top = 24
  end
  object dsAgendamento: TDataSource
    DataSet = dtmdlPrincipal.fdtblagendamento
    Left = 424
    Top = 24
  end
end
