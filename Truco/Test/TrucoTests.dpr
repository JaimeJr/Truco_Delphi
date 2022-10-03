program TrucoTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestuCartas in 'TestuCartas.pas',
  Tipos in '..\Biblioteca\Tipos.pas',
  uICarta in '..\Classes\uICarta.pas',
  uCarta in '..\Classes\uCarta.pas',
  TestuBaralho in 'TestuBaralho.pas',
  uBaralho in '..\Classes\uBaralho.pas',
  Exceptions in '..\Biblioteca\Exceptions.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

