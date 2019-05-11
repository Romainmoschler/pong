unit vect;

interface

type
	Vect2d = record
		posX: INTEGER;
		posY: INTEGER;
end;
function getVectPosX(position:Vect2d): INTEGER ;
function getVectPosY(position:Vect2d): INTEGER ;
procedure setVectPosX(var position: Vect2d; x: INTEGER) ;
procedure setVectPosY(var position: Vect2d; y: INTEGER) ;
function addiVect2d(vect1,vect2: Vect2d): Vect2d ;
function soustvect2d(vect1,vect2: Vect2d): Vect2d ;
function parscalvect2d (vect1: Vect2d; a: INTEGER): Vect2d ;
function scalvect2d(vect1,vect2: Vect2d): Vect2d ;
function produitvect2d(vect1,vect2: Vect2d): Vect2d ;

implementation

procedure setVectPosX(var position: Vect2d; x:INTEGER) ;
//BUT: Pose une valeur sur la coordonee X d'un vecteur
//ENTREE: Un vecteur x et une position donner par l'utilisateur
//SORTIE: une postion sur le vecteur de coordonee x
begin
	position.posX:= x ;
end;

procedure setVectPosY(var position: Vect2d; y:INTEGER) ;
//BUT: Pose une valeur sur la coordonee y d'un vecteur
//ENTREE: Un vecteur y et une position donner par l'utilisateur
//SORTIE: une postion sur le vecteur de coordonee y
begin
	position.posY:= y ;
end;

function getVectPosX (position: Vect2d): INTEGER ;
//BUT: prend la postion d'un vecteur en x
//ENTREE: la position d'un vecteur en x
//SORTIE: renvoie la position d'un vecteur en x
begin
	getVectPosX:= position.posX ;
end;

function getVectPosY (position: Vect2d): INTEGER ;
//BUT: prend la postion d'un vecteur en y
//ENTREE: la position d'un vecteur en y
//SORTIE: renvoie la position d'un vecteur en y
begin
	getVectPosY:= position.posY ;
end;

function addivect2d (vect1,vect2: Vect2d): Vect2d ;
//BUT: Additioner deux vecteur permetant de cree un nouveau vecteur
//ENTREE: 2 Vecteur differents
//SORTIE: 1 nouveau vecteur
var sommevect: Vect2d;
begin
	sommevect.posX:= vect1.posX + vect2.posX ;
	sommevect.posY:= vect1.posY + vect2.posY ;
	addivect2d:= sommevect ;
end;

function soustvect2d (vect1,vect2: Vect2d): Vect2d ;
//BUT: soustrait 2 vecteur afin d'en avoir un nouveau vecteur
//ENTREE: 2 vecteur differents
//SORTIE: 1 nouveau vecteur
var sommevect: Vect2d;
begin
	sommevect.posX:= vect1.posX - vect2.posX ;
	sommevect.posY:= vect1.posY - vect2.posY ;
	soustvect2d:= sommevect ;
end;

function parscalvect2d (vect1: Vect2d; a: INTEGER): Vect2d ;
//BUT: permet d'agrandir, de changer la direction ou de sosustraire la taille d'un vecteur 
//ENTREE: 1 vecteur et 1 nombre entier
//SORTIE: 1 vecteur
var sommevect: Vect2d;
begin
	sommevect.posX:= vect1.posX*a ;
	sommevect.posY:= vect1.posY*a ;
	parscalvect2d:= sommevect ;
end;

function scalvect2d(vect1,vect2: Vect2d): Vect2d ;
//BUT: permet de multiuplier 2 vecteur entre eux
//ENTREE: 2 vecteur differents
//SORTIE: 1 nouveau vecteur
var sommevect: Vect2d;
begin
	sommevect.posX:= vect1.posX*vect2.posX ;
	sommevect.posY:= vect1.posY*vect2.posY ;
	scalvect2d:= sommevect ;
end;

function produitvect2d(vect1,vect2: Vect2d): Vect2d ;
//BUT: permet de multiplier 2 vecteur entre eux
//ENTREE: 2 vecteur differents
//SORTIE: 1 nouveau vecteur
var sommevect: Vect2d;
begin
	sommevect.posX:= vect1.posY-vect2.posY ;
	sommevect.posY:= vect2.posX-vect1.posX ;
	produitvect2d:= sommevect ;
end;
end.
