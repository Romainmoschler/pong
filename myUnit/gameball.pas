unit gameball;

interface

uses gamobjet,vect;

TYPE ball = RECORD
    obj:gameObjet;
    couleur:integer;
    velocite:integer;
end;

procedure setobj(obj:gameobjet; var boule:ball);
procedure setcouleur(couleur:integer; var boule:ball);
procedure setvelocite(velocite:integer; var boule:ball);
function getobj(boule:ball):gameObjet;
function getcouleur(boule:ball):integer;
function getvelocite(boule:ball):integer;

implementation

procedure setobj(obj:gameobjet; var boule:ball);
//BUT: permet de mettre une texture et une position sur la balle
//ENTREE: 1 objet et une balle
//SORTIE: une balle avec une position et une texture
begin
	boule.obj:= obj;
end;

procedure setcouleur(couleur:integer; var boule:ball);
//BUT: permet de mettre une couleur sur la balle
//ENTREE: 1 couleur et 1 balle
//SORTIE: uen balle avec une couleur
begin
	boule.couleur:= couleur;
end;

procedure setvelocite(velocite:integer; var boule:ball);
//BUT: permet de mettre une vitesse a la balle
//ENTREE: 1 balle et une velocite
//SORTIE: une balle avec une vitesse
begin
	boule.velocite:= velocite;
end;

function getobj(boule:ball):gameObjet;
//BUT: permet d'obtenirla texture et la position de la balle
//ENTREE: 1 balle avec gameObject
//SORTIE: la position et la texture de la balle
begin
	getobj:= boule.obj;
end;

function getcouleur(boule:ball):integer;
//BUT: permet de voir la couleur de la balle
//ENTREE: 1 balle avec 1 couleur
//SORTIE: la couleur de la balle
begin
	getcouleur:= boule.couleur;
end;

function getvelocite(boule:ball):integer;
//BUT: permet de voir la vitesse de la balle
//ENTREE: 1 balle avec 1 velocite
//SORTIE: la vitesse de la balle
begin
	getvelocite:= boule.velocite;
end;

end.

