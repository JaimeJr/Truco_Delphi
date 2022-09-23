unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmTelaPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlCabecalho: TPanel;
    pnlRodape: TPanel;
    pnlCartaExemplo: TPanel;
    pnlRodCarta: TPanel;
    pnlCabCarta: TPanel;
    pnlCartaNaipe: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

end.
