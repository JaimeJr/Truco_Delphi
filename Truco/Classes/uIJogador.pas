unit uIJogador;

interface
uses
  uIMao, Tipos;

  type IJogador = interface
    ['{9451BD50-31C0-4502-A00D-6726FBD44B9C}']
    procedure Trucar;
    procedure Fugir;
    procedure Enconbrir;
    procedure PassarSinal(naipeSinal : tpNaipeCarta);

    function Mao(Value : IMao) : IJogador; overload;
    function NomeJogador(Value : String) : IJogador; overload;
    function ProximoJogador(Value : IJogador) : IJogador; overload;

    function Mao : IMao; overload;
    function NomeJogador : String; overload;
    function ProximoJogador : IJogador; overload;
  end;
implementation

end.
