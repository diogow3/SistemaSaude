unit TelaAgendamento;

interface

uses
  DataModule, ModeloAgendamento, RepositorioAgendamento,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.DBCtrls;

type
  TfrmTelaAgendamento = class(TForm)
    lblAgendar: TLabel;
    lblPaciente: TLabel;
    lblProcedimento: TLabel;
    lblDataHora: TLabel;
    cbPaciente: TDBLookupComboBox;
    cbProcedimento: TDBLookupComboBox;
    edtDataHora: TEdit;
    btnAgendar: TButton;
    dsPaciente: TDataSource;
    dsProcedimento: TDataSource;
    dsAgendamento: TDataSource;
    procedure btnAgendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaAgendamento: TfrmTelaAgendamento;

implementation

{$R *.dfm}

procedure TfrmTelaAgendamento.btnAgendarClick(Sender: TObject);
var
  Agendamento: TAgendamento;
  Repositorio: TAgendamentoRepository;
begin
  Agendamento := TAgendamento.Create;

  if (cbPaciente.KeyValue = Null) or (cbProcedimento.KeyValue = Null) then
  begin
    ShowMessage('Selecione o Paciente e o Procedimento para Agendar');
    Exit;
  end;

  try
    Agendamento.PacienteId := cbPaciente.KeyValue;
    Agendamento.ProcedimentoId := cbProcedimento.KeyValue;
    Agendamento.DataHora := edtDataHora.Text;

    Repositorio := TAgendamentoRepository.Create(dtmdlPrincipal.fdtblagendamento);
    Repositorio.Adicionar(Agendamento);
    ShowMessage('Agendamento Cadastrado');
  finally
    Agendamento.Free;
    Repositorio.Free;
  end;
end;

end.
