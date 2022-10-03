unit uBaralho;

interface
  uses uICarta, uIBaralho, uCarta, Tipos, Exceptions, SysUtils, System.Generics.Collections;

  type TBaralho = class(TInterfacedObject, IBaralho)
  private
    FCartasBaralho : TList<ICarta>;
    FCartasBaralhoCortado : TList<ICarta>;
    FSentidoCorte : tpSentidoCorte;

    procedure CriarNovoBaralho;
  public
    constructor Create;

    procedure EmbaralharCartas;
    procedure AdicionarCarta(carta : ICarta);
    procedure CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer);

    function RetirarCarta : ICarta;
    function SentidoCorte(Value : tpSentidoCorte) : IBaralho; overload;
    function SentidoCorte : tpSentidoCorte; overload;

    function QuantidadeCartas : integer; overload;
  end;

implementation

{ TBaralho }

procedure TBaralho.AdicionarCarta(carta: ICarta);
begin
  if FCartasBaralho.Contains(carta) then
    raise ECartaRepetidaException.Create('Carta já adicionado ao baralho');

  FCartasBaralho.Add(carta);
end;

procedure TBaralho.CortarBaralho(posicaoCorte: integer; sentidoCorte: tpSentidoCorte; cartasNecessarias : integer);
var
  baralhoCorte : TList<ICarta>;
begin
  baralhoCorte := TList<ICarta>.Create;

  if baralhoCorte.Count < cartasNecessarias then
    raise ECartasInsuficientesException.Create('Não há cartas suficientes para a rodada');
  
  FCartasBaralhoCortado := baralhoCorte;
end;

constructor TBaralho.Create;
begin
  FCartasBaralho := TList<ICarta>.Create;
  CriarNovoBaralho;
end;

procedure TBaralho.CriarNovoBaralho;
var
  j, k : integer;
  novaCarta : ICarta;
  naipesCarta : array of tpNaipeCarta;
  valoresCarta : array of tpValorCarta;
begin
  naipesCarta := [ncOuros, ncEspada, ncCopas, ncPaus];
  valoresCarta := [vcQuatro, vcCinco, vcSeis, vcSete, vcDama, vcValete, vcReis, vcAs, vcDois, vcTres, vcManilha];

  for j := 0 to 3 do
    for k := 0 to 10 do
    begin
      novaCarta := TCarta.Create(vcCinco, ncOuros);
      novaCarta.ValorCarta(valoresCarta[k]);
      novaCarta.NaipeCarta(naipesCarta[j]);
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
    tempBaralho := TList<ICarta>.Create;

    for carta in FCartasBaralho do
      tempBaralho.Add(Carta);

    repeat
      indexCarta := Random(FCartasBaralho.Count - 1);

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

function TBaralho.QuantidadeCartas: integer;
begin
  Result := FCartasBaralho.Count;
end;

function TBaralho.RetirarCarta : ICarta;
var
  posRetirar : Integer;
begin
  case FSentidoCorte of
    pcDescendo: posRetirar := 0;
    pcSubindo:  posRetirar := FCartasBaralho.Count - 1;
  else
    raise ESentidoCorteNaoDevidoException.Create('Sentido do corte não foi devido. Atribuir valor para SentidoCorte');
  end;

  Result := FCartasBaralhoCortado.Items[posRetirar];
  FCartasBaralho.Remove(Result);
end;

function TBaralho.SentidoCorte(Value: tpSentidoCorte): IBaralho;
begin
  Result := Self;
  FSentidoCorte := Value;
end;

function TBaralho.SentidoCorte: tpSentidoCorte;
begin
  Result := FSentidoCorte;
end;

end.
