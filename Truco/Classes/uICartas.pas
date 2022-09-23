unit uICartas;

interface

uses
  Tipos, Vcl.ExtCtrls;

  type ICarta = interface
  ['{F6A2BC0C-A9FA-4F9E-9B68-B6154AD0DEE4}']
    procedure SetNaipe(naipe : tpNaipeCarta);
    function GetNaipe : tpNaipeCarta;

    procedure SetValor(valor : tpValorCarta);
    function GetValor : tpValorCarta;

    property Valor: tpValorCarta read GetValor  write SetValor;
    property Naipe: tpNaipeCarta read GetNaipe  write SetNaipe;
  end;

  type ICartaFigurada = interface(ICarta)
    ['{41CC13C0-4B11-4814-B9F0-B33CC6330320}']
    procedure SetFigura(figura : TImage);
    function GetFigura : TImage;

    property Figura: TImage read GetFigura write SetFigura;
  end;

  implementation


end.
