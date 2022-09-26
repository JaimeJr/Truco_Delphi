unit uIBaralho;

interface
uses
  uICarta, Tipos, System.Generics.Collections;

  type IBaralho = interface
    ['{F74FDC72-6C2C-4FEE-9CF2-7D2510467FC6}']
    procedure EmbaralharCartas;
    procedure AdicionarCarta(carta : ICarta);
    procedure SetSentidoCorte(Value : tpSentidoCorte);

    function RetirarCarta : ICarta;
    function GetSentidoCorte : tpSentidoCorte;
    function CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer): TList<ICarta>;

    property SentidoCorte: tpSentidoCorte read GetSentidoCorte write SetSentidoCorte;
  end;
implementation

end.
