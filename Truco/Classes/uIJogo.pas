unit uIJogo;

interface
uses
  uIBaralho, uITime, uIRodada, System.Generics.Collections;

  type IJogo = interface
    ['{6B9A67CC-EE6B-4658-A75F-5B6F54EA9D86}']
    procedure ComecarRodada(novaRodada : IRodada);
    procedure VerificarVencedor;

    procedure SetTimes(Value : TList<ITime>);
    procedure SetRodadaAtual(Value : IRodada);
    procedure SetBaralhoJogo(Value : IBaralho);

    function GetTimes : TList<ITime>;
    function GetRodadaAtual : IRodada;
    function GetBaralhoJogo : IBaralho;

    property Times       : TList<ITime> read GetTimes       write SetTimes;
    property RodadaAtual : IRodada      read GetRodadaAtual write SetRodadaAtual;
    property BaralhoJogo : IBaralho     read GetBaralhoJogo write SetBaralhoJogo;
  end;
implementation

end.
