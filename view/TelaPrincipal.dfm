object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema Saude'
  ClientHeight = 671
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblAgenda: TLabel
    Left = 8
    Top = 8
    Width = 492
    Height = 30
    Caption = 'Agenda de Marca'#231#227'o de Procedimentos por Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dbgrdAgendamentos: TDBGrid
    Left = 8
    Top = 48
    Width = 873
    Height = 409
    DataSource = dsAgendamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idpaciente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idprocedimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datahora'
        Visible = True
      end>
  end
  object btnAgendar: TButton
    Left = 8
    Top = 480
    Width = 129
    Height = 73
    Caption = 'Agendar'
    TabOrder = 1
    OnClick = btnAgendarClick
  end
  object btnPacientes: TButton
    Left = 160
    Top = 480
    Width = 129
    Height = 73
    Caption = 'Pacientes'
    TabOrder = 2
    OnClick = btnPacientesClick
  end
  object btnProcedimentos: TButton
    Left = 312
    Top = 480
    Width = 137
    Height = 73
    Caption = 'Procedimentos'
    TabOrder = 3
    OnClick = btnProcedimentosClick
  end
  object dsAgendamento: TDataSource
    DataSet = dtmdlPrincipal.fdtblagendamento
    Left = 592
    Top = 8
  end
end
