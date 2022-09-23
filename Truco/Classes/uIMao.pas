unit uIMao;

interface
uses
  uICartas, System.Generics.Collections;

  type IMao = interface
  ['{F1EABBF8-F424-47E6-87CD-CD8770A9B343}']
    procedure ReceberCarta(carta : ICarta);
    procedure JogarCarta(carta : ICarta);

    procedure SetCartasMao(Value : TList<ICarta>);

    function GetCartasMao : TList<ICarta>;

    property CartasMao : TList<ICarta> read GetCartasMao write SetCartasMao;
  end;
implementation

end.
