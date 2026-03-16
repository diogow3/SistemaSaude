unit TelaPrincipal;

interface

uses
  DataModule, TelaPacientes, TelaProcedimentos, TelaAgendamento,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TfrmTelaPrincipal = class(TForm)
    dbgrdAgendamentos: TDBGrid;
    dsAgendamento: TDataSource;
    lblAgenda: TLabel;
    btnAgendar: TButton;
    btnPacientes: TButton;
    btnProcedimentos: TButton;
    procedure btnPacientesClick(Sender: TObject);
    procedure btnProcedimentosClick(Sender: TObject);
    procedure btnAgendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

procedure TfrmTelaPrincipal.btnAgendarClick(Sender: TObject);
begin
  frmTelaAgendamento := TfrmTelaAgendamento.Create(Self);
  try
    frmTelaAgendamento.ShowModal;
  finally
    frmTelaAgendamento.Free;
  end;
end;

procedure TfrmTelaPrincipal.btnPacientesClick(Sender: TObject);
begin
  frmTelaPacientes := TfrmTelaPacientes.Create(Self);
  try
    frmTelaPacientes.ShowModal;
  finally
    frmTelaPacientes.Free;
  end;
end;

procedure TfrmTelaPrincipal.btnProcedimentosClick(Sender: TObject);
begin
  frmTelaProcedimentos := TfrmTelaProcedimentos.Create(Self);
  try
    frmTelaProcedimentos.ShowModal;
  finally
    frmTelaProcedimentos.Free;
  end;
end;

end.
