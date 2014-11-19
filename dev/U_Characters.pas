unit U_Characters;

interface

uses extctrls, classes, controls;

// Classe de type personnage
type TCharacter = class(TObject)
private
  FPos_X: integer;
  FPos_Y: Integer;
  FDirection: integer;
  FVitesse: integer;
  FSprite: TImage;
  procedure SetPos_X(NewPos_X: integer);
  procedure SetPos_Y(NewPos_Y: integer);
  procedure SetDirection(NewDir: integer);
  procedure SetVitesse(NewVitesse: integer);
  procedure SetSprite(NewSprite: TImage);
public
  constructor Create(AOwner: TComponent); overload;
  constructor Create(Y, X: Integer; AOwner: TComponent); overload;
  constructor Create(Y, X: Integer; SpritePath: string; AOwner: TComponent); overload;
  property Sprite: TImage read FSprite write SetSprite;
  property Pos_X : integer read FPos_X write SetPos_X;
  property Pos_Y : integer read FPos_Y write SetPos_Y;
  property Direction: integer read FDirection write SetDirection;
  property Vitesse: integer read FVitesse write SetVitesse;
  procedure Move();
end;

type TMahmud = class(TCharacter)
private
public
end;

implementation

{*************************************************

  TCharacter

*************************************************}
constructor TCharacter.Create(AOwner: TComponent);
begin
  inherited Create;

  Sprite:= TImage.Create(AOwner);
end;

constructor TCharacter.Create(Y, X: integer; AOwner: TComponent);
begin
  inherited Create;
  Pos_X:= X;
  Pos_Y:= y;
  Sprite:= TImage.Create(AOwner);
end;

constructor TCharacter.Create(Y, X: Integer; SpritePath: string; AOwner: TComponent);
begin
  inherited Create;
  Sprite:= TImage.Create(AOwner);
  Sprite.Parent:= (AOwner as TWinControl);
  Pos_X:= X;
  Pos_Y:= y;
  Vitesse:= 4;
  Sprite.Top:= Y;
  Sprite.Left:= X;
  Sprite.Picture.LoadFromFile(SpritePath);
end;

procedure TCharacter.SetPos_X(NewPos_X: integer);
begin
  FPos_X:= NewPos_X;
end;

procedure TCharacter.SetPos_Y(NewPos_Y: integer);
begin
  FPos_Y:= NewPos_Y;
end;

procedure TCharacter.SetVitesse(NewVitesse: integer);
begin
  FVitesse:= NewVitesse;
end;

procedure TCharacter.SetDirection(NewDir: integer);
begin
  FDirection:= NewDir;
end;


procedure TCharacter.Move();
begin
  case Direction of
    0: Pos_Y:= Pos_Y - Vitesse;
    1: Pos_X:= Pos_X + Vitesse;
    2: Pos_Y:= Pos_Y + Vitesse;
    3: Pos_X:= Pos_X - Vitesse;
  end;
  Sprite.Top:= Pos_Y;
  Sprite.Left:= Pos_X;
end;

procedure TCharacter.SetSprite(NewSprite: TImage);
begin
  FSprite:= NewSprite;
end;

{*************************************************

  TMahmud

*************************************************}



end.
