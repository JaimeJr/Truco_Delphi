unit uIMao;

interface
uses
  uICartas;
  type IMao = interface
  ['{F1EABBF8-F424-47E6-87CD-CD8770A9B343}']
    procedure ReceberCarta(carta : ICarta);
    procedure JogarCarta(carta : ICarta);
  end;
implementation

end.
