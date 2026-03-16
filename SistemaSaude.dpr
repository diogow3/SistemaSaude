program SistemaSaude;

uses
  Vcl.Forms,
  TelaPrincipal in 'view\TelaPrincipal.pas' {frmTelaPrincipal},
  ModeloPaciente in 'model\ModeloPaciente.pas',
  DataModule in 'datamodule\DataModule.pas' {dtmdlPrincipal: TDataModule},
  ModeloEndereco in 'model\ModeloEndereco.pas',
  ModeloProcedimento in 'model\ModeloProcedimento.pas',
  ModeloAgendamento in 'model\ModeloAgendamento.pas',
  ServicoCEP in 'service\ServicoCEP.pas',
  TelaPacientes in 'view\TelaPacientes.pas' {frmTelaPacientes},
  TelaProcedimentos in 'view\TelaProcedimentos.pas' {frmTelaProcedimentos},
  RepositorioPaciente in 'repository\RepositorioPaciente.pas',
  RepositorioProcedimento in 'repository\RepositorioProcedimento.pas',
  TelaAgendamento in 'view\TelaAgendamento.pas' {frmTelaAgendamento},
  RepositorioAgendamento in 'repository\RepositorioAgendamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TdtmdlPrincipal, dtmdlPrincipal);
  Application.CreateForm(TfrmTelaPacientes, frmTelaPacientes);
  Application.CreateForm(TfrmTelaProcedimentos, frmTelaProcedimentos);
  Application.CreateForm(TfrmTelaAgendamento, frmTelaAgendamento);
  Application.Run;
end.
