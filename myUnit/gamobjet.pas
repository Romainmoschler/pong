unit gamobjet;

interface

uses vect;

TYPE gameObjet = RECORD
    texture : INTEGER; //SDL;
    position : Vect2D;
end;

procedure settexture(texture:integer; var obj:gameObjet);
procedure setpos(position : Vect2d; var obj:gameObjet);
function gettexture(obj:gameObjet):INTEGER;
function getpos(obj:gameObjet):Vect2d;

implementation
procedure settexture(texture:integer; var obj: gameObjet);
//BUT: permet de donner une texture a un objet
//ENTREE: un objet et une texture
//SORTIE: un objet avec texture
begin
	obj.texture:= texture ;
end;

procedure setpos(position: Vect2d; var obj: gameObjet);
//BUT: permet de donner une position a un objet
//ENTREE: 1 position vect2d et 1 objet
//SORTIE: 1 objet avec une position
begin
	obj.position:= position ;
end;

function gettexture(obj: gameObjet): INTEGER;
//BUT: permet de recuperer une texture d'un objet
//ENTREE: 1 objet avec texture
//SORTIE: la texture de l'objet
begin
	gettexture:= obj.texture;
end;

function getpos(obj:gameObjet):Vect2d;
//BUT: permet de recuperer la position d'un objet
//ENTREE: 1 objet avec une position
//SORTIE: la position de l'objet
begin
	getpos:= obj.position;
end;

end.
