unit uCartas;

interface
 uses
   uICartas, Tipos;

  type TCartas = class(TInterfacedObject, ICarta)

  private
    FValor : tpValorCarta;
    FNaipe : tpNaipeCarta;
  
    procedure SetNaipe(Value : tpNaipeCarta);
    procedure SetValor(Value : tpValorCarta);                 
    
    function GetValor : tpValorCarta;
    function GetNaipe : tpNaipeCarta;

    function VerificarCartaManilha(cartaManilha : ICarta) : Boolean;
  protected
    constructor Create(valor : tpValorCarta ; naipe : tpNaipeCarta);  

  public                                                
    property ValorCarta: tpValorCarta read GetValor write SetValor;
    property NaipeCarta: tpNaipeCarta read GetNaipe write SetNaipe; 
    function CompararCartas(segundaCarta : ICarta; cartaManilha : ICarta) : tpResultadoComparacao; 
        
  end;

implementation

{ TCartas }

/// <summary>
///   Compara a carta atual com outra e retorna se é maior, igual ou menor.
/// </summary>
/// <param name="segundaCarta">
///   Carta que sera comparada com a carta atual
/// </param>
/// <param name="cartaManilha">
///   Carta manilha da rodada.
/// </param>
function TCartas.CompararCartas(segundaCarta: ICarta; cartaManilha : ICarta): tpResultadoComparacao;
var
  valorTemp1,
  valorTemp2 : tpValorCarta;

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
 
  if Self.VerificarCartaManilha(cartaManilha) then
    FValor := vcManilha;   

  if segundaCarta.VerificarCartaManilha(cartaManilha) then
    segundaCarta.ValorCarta := vcManilha;   
  
  if Self.FValor > segundaCarta.ValorCarta then
    Result := rcMaior
  else if Self.FValor < Self.FValor then
    Result := rcMenor;

  FValor := valorTemp1;
  segundaCarta.ValorCarta := valorTemp2;     
    
  if Result <> rcIgual then
    Exit;                              

  Result := CompararNaipes;    
end;

constructor TCartas.Create(valor : tpValorCarta;
                           naipe : tpNaipeCarta);
begin
  ValorCarta := valor;
  NaipeCarta := naipe;
end;

function TCartas.GetNaipe: tpNaipeCarta;
begin
  Result := FNaipe;
end;

function TCartas.GetValor: tpValorCarta;
begin
  Result := FValor;
end;

procedure TCartas.SetNaipe(Value: tpNaipeCarta);
begin

end;

procedure TCartas.SetValor(Value: tpValorCarta);
begin

end;

function TCartas.VerificarCartaManilha(cartaManilha: ICarta): Boolean;
begin

end;

end.
