unit uCarta;

interface
 uses
   uICarta, Tipos;

  type TCarta = class(TInterfacedObject, ICarta)

  private
    FValor : tpValorCarta;
    FNaipe : tpNaipeCarta;
  
    procedure SetNaipe(Value : tpNaipeCarta);
    procedure SetValor(Value : tpValorCarta);                 
    
    function GetValor : tpValorCarta;
    function GetNaipe : tpNaipeCarta;

    function VerificarCartaManilha(cartaManilha : ICarta) : Boolean;

  public
    constructor Create(valor : tpValorCarta ; naipe : tpNaipeCarta);
    property ValorCarta: tpValorCarta read GetValor write SetValor;
    property NaipeCarta: tpNaipeCarta read GetNaipe write SetNaipe; 
    function CompararCartas(segundaCarta : ICarta; cartaManilha : ICarta) : tpResultadoComparacao; 
        
  end;

implementation

{ TCartas }

function TCarta.CompararCartas(segundaCarta: ICarta; cartaManilha : ICarta): tpResultadoComparacao;
var
  valorTemp1,
  valorTemp2 : tpValorCarta;

  jogouManilha : Boolean;

  function CompararNaipes : tpResultadoComparacao;
  begin
    Result := rcIgual;

    if Self.FNaipe > segundaCarta.NaipeCarta then
      Result := rcMaior
    else if Self.FNaipe < segundaCarta.NaipeCarta then
      Result := rcMenor;
  end;
  
begin
  valorTemp1 := FValor;
  valorTemp2 := segundaCarta.ValorCarta;
  
  Result := rcIgual;

  jogouManilha := Self.VerificarCartaManilha(cartaManilha) or segundaCarta.VerificarCartaManilha(cartaManilha);
 
  if Self.VerificarCartaManilha(cartaManilha) then
    FValor := vcManilha;   

  if segundaCarta.VerificarCartaManilha(cartaManilha) then
    segundaCarta.ValorCarta := vcManilha;   
  
  if Self.FValor > segundaCarta.ValorCarta then
    Result := rcMaior
  else if Self.FValor < segundaCarta.ValorCarta then
    Result := rcMenor;

  FValor := valorTemp1;
  segundaCarta.ValorCarta := valorTemp2;

  if (Result = rcIgual) and jogouManilha then
    Result := CompararNaipes;  
end;

constructor TCarta.Create(valor : tpValorCarta;
                           naipe : tpNaipeCarta);
begin
  ValorCarta := valor;
  NaipeCarta := naipe;
end;

function TCarta.GetNaipe: tpNaipeCarta;
begin
  Result := FNaipe;
end;

function TCarta.GetValor: tpValorCarta;
begin
  Result := FValor;
end;

procedure TCarta.SetNaipe(Value: tpNaipeCarta);
begin
  FNaipe := Value;
end;

procedure TCarta.SetValor(Value: tpValorCarta);
begin
  FValor := Value;
end;

function TCarta.VerificarCartaManilha(cartaManilha: ICarta): Boolean;
begin
  Result := Self.FValor = cartaManilha.ValorCarta;
end;

end.
