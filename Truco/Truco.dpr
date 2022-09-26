program Truco;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmTelaPrincipal},
  uICartas in 'Classes\uICartas.pas',
  uIMao in 'Classes\uIMao.pas',
  uIJogo in 'Classes\uIJogo.pas',
  uIJogador in 'Classes\uIJogador.pas',
  uITime in 'Classes\uITime.pas',
  uIRodada in 'Classes\uIRodada.pas',
  uCartas in 'Classes\uCartas.pas',
  Exceptions in 'Biblioteca\Exceptions.pas',
  Tipos in 'Biblioteca\Tipos.pas',
  uBaralho in 'Classes\uBaralho.pas',
  uIBaralho in 'Classes\uIBaralho.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
