unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Exceptions;

type
  TfrmTelaPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlCabecalho: TPanel;
    pnlRodape: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure TratarExcecoes(Sender : TObject; E : Exception);
    procedure ConfigurarAplicacao;
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

{ TfrmTelaPrincipal }

procedure TfrmTelaPrincipal.ConfigurarAplicacao;
begin
  Application.OnException := TratarExcecoes;
end;

procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  ConfigurarAplicacao;
end;

procedure TfrmTelaPrincipal.TratarExcecoes(Sender: TObject; E: Exception);
begin
  if not (E is ETrucoException) then
    raise Exception.Create('Ocorreu uma exceção sem tratamento' + E.Message);

  raise E;
end;

end.
