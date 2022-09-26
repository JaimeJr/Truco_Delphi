unit Exceptions;

interface
uses SysUtils;

  type ETrucoException = class(Exception);

  type EBaralhoException = class(ETrucoException);
  type EBaralhoVazioException = class(EBaralhoException);
  type ECartaRepetidaException = class(EBaralhoException);
  type ECartasInsuficientes = class(EBaralhoException);

implementation

end.
