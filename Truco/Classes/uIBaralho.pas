unit uIBaralho;

interface
uses
  uICarta, Tipos, System.Generics.Collections;

  type IBaralho = interface
    ['{F74FDC72-6C2C-4FEE-9CF2-7D2510467FC6}']
    procedure EmbaralharCartas;
    procedure AdicionarCarta(carta : ICarta);
    procedure CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer);

    function RetirarCarta : ICarta;

    function SentidoCorte(Value : tpSentidoCorte) : IBaralho; overload;
    function SentidoCorte : tpSentidoCorte; overload;
  end;
implementation

end.
