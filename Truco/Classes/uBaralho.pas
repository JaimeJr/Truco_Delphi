unit uBaralho;

interface
  uses uICarta, uIBaralho, uCarta, Tipos, Exceptions, SysUtils, System.Generics.Collections;

  type TBaralho = class(TInterfacedObject, IBaralho)
  private
    FCartasBaralho : TList<ICarta>;
    FSentidoCorte : tpSentidoCorte;

    function GetSentidoCorte: tpSentidoCorte;

    procedure SetSentidoCorte(Value : tpSentidoCorte);
    procedure ValidarClasse;
  protected
    constructor Create;
  public
    procedure EmbaralharCartas;
    procedure AdicionarCarta(carta : ICarta);

    function CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer): TList<ICarta>;
    function RetirarCarta : ICarta;

    property SentidoCorte: tpSentidoCorte read GetSentidoCorte write SetSentidoCorte;
  end;
implementation

{ TBaralho }

procedure TBaralho.AdicionarCarta(carta: ICarta);
begin
  try
    ValidarClasse;
    if FCartasBaralho.Contains(carta) then
      raise ECartaRepetidaException.Create('Carta já adicionado ao baralho');
    
    FCartasBaralho.Add(carta);
  except
    raise;
  end;
end;

function TBaralho.CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer): TList<ICarta>;
var
  baralhoCorte : TList<ICarta>;
begin
  baralhoCorte := TList<ICarta>.Create;

  if baralhoCorte.Count < cartasNecessarias then
    raise ECartasInsuficientes.Create('Não há cartas suficientes para a rodada');
  
  Result := baralhoCorte;
end;

constructor TBaralho.Create;
var
  i, j, k : integer;
  novaCarta : ICarta;
  valoresCarta : array of tpValorCarta;
  naipesCarta : array of tpNaipeCarta;
begin
  FCartasBaralho := TList<ICarta>.Create;
  
  naipesCarta := [ncOuros, ncEspada, ncCopas, ncPaus];
  valoresCarta := [vcQuatro, vcCinco, vcSeis, vcSete, vcDama, vcValete, vcReis, vcAs, vcDois, vcTres, vcManilha];

  for i := 0 to 43 do
    for j := 0 to 3 do
      for k := 0 to 11 do
      begin    
        novaCarta := TCarta.Create(vcCinco, ncOuros);
        novaCarta.ValorCarta := valoresCarta[k];
        novaCarta.NaipeCarta := naipesCarta[j]; 
        try        
          AdicionarCarta(novaCarta);
        except 
          on E : ECartaRepetidaException do         
            Continue;
            
          on E : Exception do
            raise;
        end;                  
      end; 

  EmbaralharCartas;
end;

procedure TBaralho.EmbaralharCartas;
var
  indexCarta : integer;
  carta : ICarta;
  novoBaralho,
  tempBaralho : TList<ICarta>;
begin
  try
    novoBaralho := TList<ICarta>.Create;
    tempBaralho := FCartasBaralho;

    repeat
      indexCarta := Random(tempBaralho.Count);

      carta := FCartasBaralho.Items[indexCarta];

      if novoBaralho.Contains(carta) then
        Continue;

      novoBaralho.Add(carta);
      tempBaralho.Delete(indexCarta);
    until novoBaralho.Count = FCartasBaralho.Count;

    FCartasBaralho := novoBaralho;
  finally
    FreeAndNil(tempBaralho);
    FreeAndNil(novoBaralho);
  end;
end;

function TBaralho.GetSentidoCorte: tpSentidoCorte;
begin
  Result := FSentidoCorte;
end;

function TBaralho.RetirarCarta : ICarta;
begin
  case FSentidoCorte of
    pcDescendo: ;
    pcSubindo: ;
  end;
end;

procedure TBaralho.SetSentidoCorte(Value: tpSentidoCorte);
begin
  FSentidoCorte := Value;
end;

procedure TBaralho.ValidarClasse;
begin
  if not Assigned(Self) then
    raise EBaralhoException.Create('A classe não foi construida. Rodar o Create().');
end;

end.
