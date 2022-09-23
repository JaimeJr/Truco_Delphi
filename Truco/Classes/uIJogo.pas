unit uIJogo;

interface
uses
  uICartas, uIBaralho, uIMao, uIMesa, uIJogador, uITime, System.Generics.Collections;

  type IJogo = interface
    ['{6B9A67CC-EE6B-4658-A75F-5B6F54EA9D86}']
    function GetMaos : TList<IMao>;
    procedure SetMaos(maos: TList<IMao>);

    property Maos: TList<IMao> read GetMaos write SetMaos;
  end;
implementation

end.
