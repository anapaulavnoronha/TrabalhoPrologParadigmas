/*pessoa(Nome,Sexo,OpcaoSexual,Idade,Profissao,Cidade,Filme1,Filme2,EstiloMusicalPreferido, Gosto1, Gosto2, Gosto3, Gosto4).*/


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

/*Definição de opçoes a serem escolhidas como pereferência de Gênero Musical, cada usuário deve escolher a favorita:
	-Rock
	-Pop
	-Samba
	-Jazz
	-Funk
	-Eletrônico
*/


/*BASE DE DADOS*/
pessoa(fernanda, f, hetero, 24, jornalista, brasilia, terror, suspense, samba, esporte, cinema, seriados, festa).
pessoa(maria, f, hetero, 46, advogado, salvador, comedia, acao, rock, cinema, danca, trabalho, culinaria).
pessoa(eduardo, m, hetero, 25, professor, brasilia, terror, suspense, jazz, esporte, cinema, seriados, festa).
pessoa(pedro, m, homo, 21, jornalista, salvador, drama, terror, rock, seriados, danca, esporte, festa).
pessoa(camila, f, hetero, 34, engenheiro_civil, brasilia, ficcao, comedia, pop, trabalho, musica, estudo, cinema).
pessoa(felipe, m, hetero, 51, fotografo, brasilia, ficcao, comedia, funk, musica, seriado, festa, cinema).
pessoa(matheus, m, hetero, 23, programador, brasilia, ficcao, suspense, rock, musica, seriado, festa, cinema).
pessoa(louize, f, hetero, 23, estudante, brasilia, ficcao, suspense, rock, musica, seriado, festa, cinema).
pessoa(guilherme, m, homo, 21, engenheiro, brasilia, terror, comedia, eletronico, musica, esporte, culinaria, cinema).
pessoa(joao, m, homo, 32, garcom, brasilia, terror, comedia, eletronico, musica, esporte, culinaria, cinema).
pessoa(sofia, f, hetero, 33, filosofa, curitiba, drama, comedia, jazz, musica, trabalho, estudos, culinaria).
pessoa(fernando, m, hetero, 35, desempregado, curitiba, drama, comedia, jazz, musica, trabalho, estudos, culinaria).
pessoa(paul, m, hetero, 71, musico, liverpool, drama, comedia, rock, musica, estudos, festa, trabalho).
pessoa(janis, f, hetero, 70, musico, miami, ficcao, comedia, rock, musica, seriado, festa, cinema).
pessoa(anderson, m, hetero, 38, lutador, curitiba, acao, comedia, pop, musica, esporte, trabalho, cinema).
pessoa(joana, m, hetero, 33, professora, curitiba, acao, comedia, pop, musica, esporte, trabalho, cinema).
pessoa(ronaldo, m, hetero, 33, futebolista, beloHorizonte, acao, comedia, funk, musica, esporte, festa, trabalho).
pessoa(jessica, f, hetero, 34, escritora, beloHorizonte, acao, comedia, funk, musica, esporte, festa, trabalho).
pessoa(leandro, m, hetero, 37, medico, curitiba, comedia, acao, pop, esporte, musica, cinema, trabalho).
pessoa(fabiana, f, homo, 22, jornalista, brasilia, ficcao, comedia, rock, musica, esporte, culinaria, trabalho). 
pessoa(eduarda, f, hetero, 41, desempregada, brasilia, comedia, terror, jazz, seriados, festa, culinaria, cinema).
pessoa(mariana, f, homo, 21, professora, brasilia, ficcao, comedia, rock, musica, esporte, culinaria, trabalho).
pessoa(igor, m, hetero, 44, medico, brasilia, comedia, terror, jazz, seriados, festa, culinaria, cinema).
pessoa(gabriel, m, hetero, 48, pedreiro, salvador, comedia, acao, rock, cinema, danca, trabalho, culinaria).
pessoa(gustavo, m, homo, 35, musico, brasilia, terror, comedia, eletronico, musica, esporte, culinaria, cinema).
pessoa(paloma, f, hetero, 54, jardineira, brasilia, ficcao, comedia, funk, musica, seriado, cinema, festa).
pessoa(danilo, m, hetero, 18, estudante, brasilia, drama, aventura, samba, estudos, festa, cinema, esporte).
pessoa(carolina, f, hetero, 21, estudante, brasilia, aventura, drama, samba, estudos, cinema, esporte, festa).




/* Criação  de uma regra IF THEN ELSE */

ifThenElse(IF, THEN, _) :- IF, !, THEN.
ifThenElse(_,_,ELSE) :- ELSE.


/* Regra para idade */

idade(IdadeX,IdadeY) :- (IdadeX-IdadeY)=<7 , (IdadeY-IdadeX)=<7.


/*Regra para comparar gostos(Para as pessoas serem compativeis, todos os gostos devem ser iguais)*/

gostos(NomeX, NomeY) :- pessoa(NomeX,_,_,_,_,_,_,_,_,Gosto1,Gosto2,Gosto3,Gosto4), pessoa(NomeY,_,_,_,_,_,_,_,_,Gosto5,Gosto6,Gosto7,Gosto8), 
			(Gosto1 = Gosto5; Gosto1 = Gosto6; Gosto1 = Gosto7; Gosto1 = Gosto8),
			(Gosto2 = Gosto5; Gosto2 = Gosto6; Gosto2 = Gosto7; Gosto2 = Gosto8),
			(Gosto3 = Gosto5; Gosto3 = Gosto6; Gosto3 = Gosto7; Gosto3 = Gosto8),
			(Gosto4 = Gosto5; Gosto4 = Gosto6; Gosto4 = Gosto7; Gosto4 = Gosto8).


/* Regra para comparar gêneros de filmes favoritos (Para as pessoas serem compativeis, os 2 gostos de filmes devem ser iguais) */

gostosFilmes(NomeX, NomeY) :- pessoa(NomeX,_,_,_,_,_,Filme1,Filme2,_,_,_,_,_), pessoa(NomeX,_,_,_,_,_,Filme3,Filme4,_,_,_,_,_), 
			     (Filme1 = Filme3; Filme1 = Filme4),
			     (Filme2 = Filme3; Filme2 = Filme4).


/* Regra para comparar gêneros musical favorito (Para as pessoas serem compativeis, o gosto musical deve ser igual) */

gostoMusical(NomeX, NomeY) :- pessoa(NomeX,_,_,_,_,_,_,_,EstiloMusicalX,_,_,_,_), pessoa(NomeX,_,_,_,_,_,_,_,EstiloMusicalY,_,_,_,_), 
			     (EstiloMusicalX = EstiloMusicalY).


/*Regra geral para criar um casal*/

casal(NomeX, NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,Filme1,Filme2,EstiloMusicalX,Gosto1, Gosto2, Gosto3, Gosto4)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeX,Filme1,Filme2,EstiloMusicalY,Gosto1, Gosto2, Gosto3, Gosto4)
		    ,NomeX \= NomeY, 
		    ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY), 
		    idade(IdadeX, IdadeY),
		    gostos(NomeX, NomeY),
		    gostosFilmes(NomeX, NomeY),
		    gostoMusical(NomeX, NomeY),
	            write(NomeX), write(' eh compativel com '), write(NomeY),nl,fail.




