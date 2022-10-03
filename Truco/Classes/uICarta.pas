unit uICarta;

interface

uses
  Tipos, Vcl.Controls, Vcl.ExtCtrls;

  type ICarta = interface
  ['{F6A2BC0C-A9FA-4F9E-9B68-B6154AD0DEE4}']
    function ValorCarta(Value : tpValorCarta) : ICarta; overload;
    function ValorCarta : tpValorCarta; overload;

    function NaipeCarta(Value : tpNaipeCarta) : ICarta; overload;
    function NaipeCarta : tpNaipeCarta; overload;

    function CompararCartas(segundaCarta : ICarta ; cartaManilha : ICarta) : tpResultadoComparacao;
    function VerificarCartaManilha(cartaManilha : ICarta) : Boolean;
  end;

  implementation


end.
