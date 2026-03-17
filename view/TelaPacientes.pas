unit TelaPacientes;

interface

uses
  DataModule, ModeloPaciente, RepositorioPaciente,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TfrmTelaPacientes = class(TForm)
    lblPacientes: TLabel;
    dbgrdPacientes: TDBGrid;
    dsPacientes: TDataSource;
    pgcPacientes: TPageControl;
    tsPacientesCadastrados: TTabSheet;
    tsCadastrarPacientes: TTabSheet;
    tsExcluirPacientes: TTabSheet;
    dsPacienteExcluir: TDataSource;
    cbPacienteExcluir: TDBLookupComboBox;
    btnExcluirPaciente: TButton;
    lblNome: TLabel;
    lblCartaoSUS: TLabel;
    edtNome: TEdit;
    edtCartaoSUS: TEdit;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnExcluirPacienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPacientes: TfrmTelaPacientes;

implementation

{$R *.dfm}

procedure TfrmTelaPacientes.btnCadastrarClick(Sender: TObject);
var
  Paciente: TPaciente;
  Repositorio: TPacienteRepository;
begin
  Paciente := TPaciente.Create;
  try
    Paciente.Nome := edtNome.Text;
    Paciente.CartaoSUS := edtCartaoSUS.Text;

    Repositorio := TPacienteRepository.Create(dtmdlPrincipal.fdtblpaciente);
    Repositorio.Adicionar(Paciente);
    ShowMessage('Paciente Cadastrado');
  finally
    Paciente.Free;
    Repositorio.Free;
  end;
end;

procedure TfrmTelaPacientes.btnExcluirPacienteClick(Sender: TObject);
var
  Repositorio : TPacienteRepository;
  Id: Integer;
begin
  if cbPacienteExcluir.KeyValue = Null then
    begin
      ShowMessage('Selecione um Produto para Excluir');
      Exit;
    end;

  Id := cbPacienteExcluir.KeyValue;
  Repositorio := TPacienteRepository.Create(dtmdlPrincipal.fdtblpaciente);
  try
    Repositorio.Excluir(Id);
    ShowMessage('Paciente Exluido');
  finally
    Repositorio.Free;
  end;
end;

end.
