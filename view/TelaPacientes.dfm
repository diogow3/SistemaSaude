object frmTelaPacientes: TfrmTelaPacientes
  Left = 0
  Top = 0
  Caption = 'Pacientes'
  ClientHeight = 584
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblPacientes: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 30
    Caption = 'Pacientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object pgcPacientes: TPageControl
    Left = 8
    Top = 64
    Width = 673
    Height = 441
    ActivePage = tsPacientesCadastrados
    TabOrder = 0
    object tsPacientesCadastrados: TTabSheet
      Caption = 'Pacientes Cadastrados'
      object dbgrdPacientes: TDBGrid
        Left = 0
        Top = 0
        Width = 662
        Height = 409
        DataSource = dsPacientes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsCadastrarPacientes: TTabSheet
      Caption = 'Cadastrar Pacientes'
      ImageIndex = 1
      object lblNome: TLabel
        Left = 32
        Top = 11
        Width = 126
        Height = 21
        Caption = 'Nome do Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblCartaoSUS: TLabel
        Left = 32
        Top = 104
        Width = 163
        Height = 21
        Caption = 'Numero do Cartao SUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtNome: TEdit
        Left = 32
        Top = 38
        Width = 529
        Height = 23
        TabOrder = 0
      end
      object edtCartaoSUS: TEdit
        Left = 32
        Top = 131
        Width = 163
        Height = 23
        TabOrder = 1
      end
      object btnCadastrar: TButton
        Left = 32
        Top = 304
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 2
        OnClick = btnCadastrarClick
      end
    end
    object tsExcluirPacientes: TTabSheet
      Caption = 'Excluir Pacientes'
      ImageIndex = 2
      object cbPacienteExcluir: TDBLookupComboBox
        Left = 144
        Top = 88
        Width = 329
        Height = 23
        KeyField = 'id'
        ListField = 'nome'
        ListSource = dsPacienteExcluir
        TabOrder = 0
      end
      object btnExcluirPaciente: TButton
        Left = 256
        Top = 176
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 1
        OnClick = btnExcluirPacienteClick
      end
    end
  end
  object dsPacientes: TDataSource
    DataSet = dtmdlPrincipal.fdtblpaciente
    Left = 336
    Top = 8
  end
  object dsPacienteExcluir: TDataSource
    DataSet = dtmdlPrincipal.fdtblpaciente
    Left = 440
    Top = 8
  end
end
