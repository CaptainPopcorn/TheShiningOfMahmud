unit U_Characters;

interface
Type TPosition = record
    X: integer;
    Y: integer;
  end;

type TCharacter = class
private
  FPos: TPosition;
  procedure SetPos(NewPos: TPosition);
public
  property Pos: TPosition read FPos write SetPos;
end;


implementation

procedure TCharacter.SetPos(NewPos: TPosition);
begin
  FPos:= NewPos;
end;

end.
