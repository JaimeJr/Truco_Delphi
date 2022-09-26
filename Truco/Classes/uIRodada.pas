unit uIRodada;

interface
  uses uICarta, uIBaralho, uIJogador, Tipos, System.Generics.Collections;

  type IRodada = interface
  ['{0D232DF4-22D8-4DC4-B1FC-6AE718C96DC3}']
    procedure DistribuirCartas(tipoDistribuicao : tpDistruibuirCarta);

    procedure DistribuirCorrido;
    procedure DistribuirPicado;

    procedure SetVira(Value : ICarta);
    procedure SetManilha(Value : ICarta);
    procedure SetJogadorMao(Value : IJogador);
    procedure SetMaiorCarta(Value : ICarta);
    procedure SetValorRodada(Value : tpValorRodada);
    procedure SetCartasJogadas(Value : TList<ICarta>);

    function GetVira : ICarta;
    function GetManilha : ICarta;
    function GetJogadorMao : IJogador;
    function GetMaiorCarta : ICarta;
    function GetValorRodada : tpValorRodada;
    function GetCartasJogadas : TList<ICarta>;

    property Vira          : ICarta        read GetVira          write SetVira;
    property Manilha       : ICarta        read GetManilha       write SetManilha;
    property JogadorMao    : IJogador      read GetJogadorMao    write SetJogadorMao;
    property MaiorCarta    : ICarta        read GetMaiorCarta    write SetMaiorCarta;
    property ValorRodada   : tpValorRodada read GetValorRodada   write SetValorRodada;
    property CartasJogadas : TList<ICarta> read GetCartasJogadas write SetCartasJogadas;
  end;

  type IRodadaMaoOnze = interface(IRodada)
  ['{C2F944A9-447A-4B4F-96D5-DDBFBA2D5B1E}']
    procedure VerificarMaos;
  end;
implementation

end.
