program Truco;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmTelaPrincipal},
  uICarta in 'Classes\uICarta.pas',
  uIMao in 'Classes\uIMao.pas',
  uIJogo in 'Classes\uIJogo.pas',
  uIJogador in 'Classes\uIJogador.pas',
  uITime in 'Classes\uITime.pas',
  uIRodada in 'Classes\uIRodada.pas',
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
