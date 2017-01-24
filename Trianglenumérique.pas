program trianglenumérique;

uses crt;

(*
//BUT : Fait un triangle en numéros
//ENTREE : La taille du triangle en numéros
//SORTIE : Un triangle en numéros de la taille désirée

VAR
	taille, i, j : ENTIER
	
DEBUT
	ECRIRE 'Entrez la taille du triangle en numéros !'		
	LIRE taille									//Récupération de la taille du triangle en numéros
	POUR i DE 1 A taille FAIRE					//Boucle pour ecrire les lignes (diminue la longueur de la ligne à chaque ligne)
		POUR j de 1 A (taille - i + 1) FAIRE	//Boucle qui écrit le contenu de la ligne (diminue la longueur de la ligne à chaque ligne)
			ECRIRE(i-1)							//Le chiffre écrit est i - 1 pour commencer à 0 au lieu de 1
		FINPOUR
	FINPOUR
FIN
*)


VAR	
	taille, i, j : INTEGER;
	
BEGIN
	clrscr;
	writeln('Entrez la taille du triangle en numéros !');
	readln(taille);												//récupération de la taille
	FOR i := 1 TO taille DO										//Boucle pour écrire les lignes.
	BEGIN
		FOR j := 1 TO (taille -i + 1) DO						//Boucle qui écrit le contenu de la ligne définie par la boucle précédente.
		BEGIN
			write(i-1);											//Le chiffre écrit est i - 1 pour commencer à 0 au lieu de 1
		END;
	writeln();
	END;
	readln();
END.