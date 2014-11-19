unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, U_Characters;

type
  TForm1 = class(TForm)
    Image1: TImage;
    TmrMain: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  Mahmud: TMahmud;

implementation

{$R *.DFM}


procedure TForm1.FormActivate(Sender: TObject);
begin
  Mahmud:= TMahmud.Create(100, 100, './img/Mahmud/Mahmud_Up_1.bmp', Form1);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [ord('a'), ord('A')] then
  begin
    Mahmud.Direction := 3;
    Mahmud.move();
  end;
end;

end.
