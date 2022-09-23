unit uIJogador;

interface
uses
  uIMao, Tipos;

  type IJogador = interface
    ['{9451BD50-31C0-4502-A00D-6726FBD44B9C}']
    procedure SetMao(mao : IMao);
    procedure SetProximoJogador(jogador : IJogador);
    procedure SetNomeJogador(nome : String);

    function GetMao : IMao;
    function GetProximoJogador : IJogador;
    function GetNomeJogador : String;

    procedure Trucar;
    procedure Fugir;
    procedure Enconbrir;
    procedure PassarSinal(naipeSinal : tpNaipeCarta);

    property Mao: IMao read GetMao write SetMao;
    property ProximoJogador: IJogador read GetProximoJogador write SetProximoJogador;
    property NomeJogador: String read GetNomeJogador write SetNomeJogador;
  end;
implementation

end.
