program triangleXO;

uses crt;

{
//BUT : Créer un triangle en X et O
//ENTREE : La taille du triangle en X et O
//SORTIE : un triangle en X et O de la taille désirée

VAR
	i, j, taille : ENTIER
	
DEBUT
	ECRIRE La taille du triangle ?
	LIRE taille
	POUR i DE 1 A taille - 1 FAIRE
	DEBUT
		POUR j DE 1 A taille FAIRE
			SI ((j = 1) OU (j = i)) ALORS
				ECRIRE('X')
			SINON
				SI j < i ALORS ECRIRE('O')
			FINSI
		FINPOUR
		ECRIRE()
	FINPOUR
	POUR i DE 1 A taille FAIRE 
	ECRIRE('X')
FIN
}


VAR
	i, j, taille : INTEGER;
	
BEGIN
	clrscr;
	writeln('La taille du triangle ?');
	readln(taille);								//Demande à l'utilisateur la taille du futur triangle
	FOR i := 1 TO (taille - 1) DO
	BEGIN										//Boucles qui permettront de savoir ou poser les X et les O sauf pour la dernière ligne
		FOR j := 1 TO taille DO					
		BEGIN
			IF ((j = 1) OR (j = i)) THEN		//Si le caractère écrit est le premier ou le dernier de la ligne il sera un X
				write('X')
			ELSE
			BEGIN
				IF j < i THEN write('O');		//Si la caractère écrit est entre le premier et le dernier il sera un O
			END;
		END;
		writeln();								//Passage à la ligne suivante
	END;
	FOR i := 1 TO taille DO						//Boucle pour écrire la dernière ligne qui ne sera pas traité par les deux premières boucles
	write('X');
	readln();
END.
