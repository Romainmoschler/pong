program pongg;

uses crt,vect,gamobjet,gameball;

var
    vector: Vect2d;
    vector2: Vect2d;

begin
clrscr;
setVectPosX(vector,5);
setVectPosY(vector,10);
Writeln (vector.posY);
setVectPosX(vector2,15);
setVectPosY(vector2,5);

readln();
end.
