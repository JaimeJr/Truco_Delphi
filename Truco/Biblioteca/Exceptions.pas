unit Exceptions;

interface
uses SysUtils;

  type ETrucoException = class(Exception);

  type EBaralhoException = class(ETrucoException);
  type EBaralhoVazioException = class(EBaralhoException);
  type ECartaRepetidaException = class(EBaralhoException);
  type ECartasInsuficientesException = class(EBaralhoException);
  type ESentidoCorteNaoDevidoException = class(EBaralhoException);

implementation

end.
