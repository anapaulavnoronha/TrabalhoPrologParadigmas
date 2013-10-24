/*pessoa(Nome,Sexo,OpcaoSexual,Idade,Profissao,Cep,Filme1,Filme2,
EstiloMusicalPreferido, TemFilhos, Gosto1, Gosto2, Gosto3, Gosto4).
*/


/*Definição de opçoes a serem escolhidas como gosto, cada usuário deve escolher as 4 favoritas:
	-Esporte
	-Cinema
	-Seriados
	-Festa
	-Estudos
	-Musica
	-Dança
	-Trabalho
	-Culinaria
*/

/*Definição de opçoes a serem escolhidas como pereferência de FILMES, cada usuário deve escolher as 2 favoritas:
	-Terror
	-Comedia
	-Ficcao
	-Suspense
	-Drama
	-Aventura
	-Acao
*/



/*BASE DE DADOS*/
pessoa(fernanda, f, hetero, 24, jornalista, brasilia, terror, suspense, samba, esporte, cinema, seriados, festa).
pessoa(maria, f, hetero, 46, advogado, salvador, comedia, acao, rock, cinema, danca, trabalho, culinaria).
pessoa(eduardo, m, hetero, 25, professor, brasilia, terror, suspense, jazz, esporte, cinema, seriados, festa).
pessoa(pedro, m, homo, 21, jornalista, salvador, drama, terror, rock, seriados, danca, esporte, festa).
pessoa(camila, f, hetero, 34, engenheiro_civil, brasilia, ficcao, comedia, pop, trabalho, musica, estudo, cinema).
pessoa(felipe, m, hetero, 51, fotografo, brasilia, ficcao, comedia, axe, musica, seriado, festa, cinema).




/* Criação  de uma regra IF THEN ELSE */

ifThenElse(IF, THEN, _) :- IF, !, THEN.
ifThenElse(_,_,ELSE) :- ELSE.


/* Regra para idade */

idade(IdadeX,IdadeY) :- (IdadeX-IdadeY)=<7 , (IdadeY-IdadeX)=<7.




/*Regra para comparar gostos(Para as pessoas serem compativeis, todos os gostos devem ser iguais)*/

gostos(NomeX, NomeY) :- pessoa(NomeX,_,_,_,_,_,_,_,Gosto1,Gosto2,Gosto3,Gosto4), pessoa(NomeY,_,_,_,_,_,_,_,Gosto5,Gosto6,Gosto7,Gosto8), 
			(Gosto1 = Gosto5; Gosto1 = Gosto6; Gosto1 = Gosto7; Gosto1 = Gosto8),
			(Gosto2 = Gosto5; Gosto2 = Gosto6; Gosto2 = Gosto7; Gosto2 = Gosto8),
			(Gosto3 = Gosto5; Gosto3 = Gosto6; Gosto3 = Gosto7; Gosto3 = Gosto8),
			(Gosto4 = Gosto5; Gosto4 = Gosto6; Gosto4 = Gosto7; Gosto4 = Gosto8).


/* Regra para comparar gêneros de filmes favoritos (Para as pessoas serem compativeis, os 2 gostos de filmes devem ser iguais)

gostosFilmes(NomeX, NomeY) :- pessoa(NomeX,_,_,_,_,_,Filme1,Filme2,_,_,_,_), pessoa(NomeX,_,_,_,_,_,Filme3,Filme4,_,_,_,_), 
			     (Filme1 = Filme3; Filme1 = Filme4),
			     (Filme2 = Filme3; Filme2 = Filme4).


/*Regra geral para criar um casal*/

casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,Filme1,Filme2,EstiloMusicalX,Gosto1, Gosto2, Gosto3, Gosto4)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeX,Filme1,Filme2,EstiloMusicalY,Gosto1, Gosto2, Gosto3, Gosto4)
		    ,NomeX \= NomeY, 
		    ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY), 
		    idade(IdadeX, IdadeY),
		    gostos(NomeX, NomeY),
		    gostosFilmes(NomeX, NomeY).
