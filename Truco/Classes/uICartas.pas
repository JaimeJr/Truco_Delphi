unit uICartas;

interface

uses
  Tipos, Vcl.Controls, Vcl.ExtCtrls;

  type ICarta = interface
  ['{F6A2BC0C-A9FA-4F9E-9B68-B6154AD0DEE4}']
    procedure SetNaipe(Value : tpNaipeCarta);
    procedure SetValor(Value : tpValorCarta);

    function GetValor : tpValorCarta;
    function GetNaipe : tpNaipeCarta;

    property ValorCarta: tpValorCarta read GetValor write SetValor;
    property NaipeCarta: tpNaipeCarta read GetNaipe write SetNaipe;

    function CompararCartas(segundaCarta : ICarta ; cartaManilha : ICarta) : tpResultadoComparacao;
    function VerificarCartaManilha(cartaManilha : ICarta) : Boolean;
  end;

  type ICartaFigurada = interface(ICarta)
    ['{41CC13C0-4B11-4814-B9F0-B33CC6330320}']
    procedure SetFigura(Value : TImage);
    procedure SetFiguras(Value : TImageList);

    function GetFigura : TImage;
    function GetFiguras : TImageList;

    property Figura  : TImage     read GetFigura write SetFigura;
    property Figuras : TImageList read GetFiguras  write SetFiguras ;
  end;

  implementation


end.
