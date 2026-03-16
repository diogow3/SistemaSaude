object frmTelaProcedimentos: TfrmTelaProcedimentos
  Left = 0
  Top = 0
  Caption = 'Procedimentos'
  ClientHeight = 606
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblProcedimentos: TLabel
    Left = 8
    Top = 8
    Width = 138
    Height = 30
    Caption = 'Procedimentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object pgcProcedimentos: TPageControl
    Left = 8
    Top = 64
    Width = 689
    Height = 481
    ActivePage = tsExcluirProcedimento
    TabOrder = 0
    object tsProcedimentosCadastrados: TTabSheet
      Caption = 'Procedimentos Cadastrados'
      object dbgrdProcedimentos: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 448
        DataSource = dsProcedimentos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsCadastrarProcedimento: TTabSheet
      Caption = 'Cadastrar Procedimento'
      ImageIndex = 1
      object lblNome: TLabel
        Left = 56
        Top = 32
        Width = 168
        Height = 21
        Caption = 'Nome Do Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblCodigo: TLabel
        Left = 56
        Top = 168
        Width = 173
        Height = 21
        Caption = 'Codigo do Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtNome: TEdit
        Left = 56
        Top = 59
        Width = 537
        Height = 23
        TabOrder = 0
      end
      object edtCodigo: TEdit
        Left = 56
        Top = 195
        Width = 273
        Height = 23
        TabOrder = 1
      end
      object btnCadastrar: TButton
        Left = 56
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 2
        OnClick = btnCadastrarClick
      end
    end
    object tsExcluirProcedimento: TTabSheet
      Caption = 'Excluir Procedimento'
      ImageIndex = 2
      object cbExcluirProcedimento: TDBLookupComboBox
        Left = 136
        Top = 112
        Width = 385
        Height = 23
        KeyField = 'id'
        ListField = 'nome'
        ListSource = dsExcluirProcedimento
        TabOrder = 0
      end
      object btnExcluirProcedimento: TButton
        Left = 272
        Top = 224
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 1
        OnClick = btnExcluirProcedimentoClick
      end
    end
  end
  object dsProcedimentos: TDataSource
    DataSet = dtmdlPrincipal.fdtblprocedimento
    Left = 384
    Top = 8
  end
  object dsExcluirProcedimento: TDataSource
    DataSet = dtmdlPrincipal.fdtblprocedimento
    Left = 504
    Top = 16
  end
end
