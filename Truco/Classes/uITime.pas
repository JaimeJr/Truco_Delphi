unit uITime;

interface
uses uIJogador, System.Generics.Collections;

  type ITime = interface
    ['{A795F29A-D62B-429F-A392-8F912AC23844}']
    procedure SetPlacar(Value : integer);
    procedure SetJogadores(Value : TList<IJogador>);
    procedure SetNomeTime(Value : String);

    function GetPlacar : integer;
    function GetJogadores : TList<IJogador>;
    function GetNomeTime : String;

    property Placar    : integer         read GetPlacar    write SetPlacar;
    property Jogadores : TList<IJogador> read GetJogadores write SetJogadores;
    property NomeTime  : String          read GetNomeTime  write SetNomeTime;
  end;
implementation

end.
