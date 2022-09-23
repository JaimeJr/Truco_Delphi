program Truco;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmTelaPrincipal},
  uICartas in 'Classes\uICartas.pas',
  Tipos in 'Biblioteca\Tipos.pas',
  uIBaralho in 'Classes\uIBaralho.pas',
  uIMesa in 'Classes\uIMesa.pas',
  uIMao in 'Classes\uIMao.pas',
  uIJogo in 'Classes\uIJogo.pas',
  uIJogador in 'Classes\uIJogador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
