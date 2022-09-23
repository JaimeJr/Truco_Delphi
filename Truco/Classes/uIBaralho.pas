unit uIBaralho;

interface
uses
  uICartas, System.Generics.Collections;

  type IBaralho = interface
    ['{F74FDC72-6C2C-4FEE-9CF2-7D2510467FC6}']
    procedure AdicionarCarta(carta: ICarta);
    procedure RetirarCarta(carta: ICarta);
    procedure EmbaralharCartas;

    procedure SetCartas(cartas : TList<ICarta>);
    function GetCartas : TList<ICarta>;

    property Cartas: TList<ICarta> read GetCartas write SetCartas;
  end;
implementation

end.