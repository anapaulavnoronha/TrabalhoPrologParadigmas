/*pessoa(Nome,Sexo,OpcaoSexual,Idade,Profissao,Cep,GeneroFilmePreferido,
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



/*BASE DE DADOS*/
pessoa(fernanda, f, hetero, 24, jornalista, brasilia, terror, samba, esporte, cinema, seriados, festa).
pessoa(maria, f, hetero, 46, advogado, salvador, comedia, rock, cinema, danca, trabalho, culinaria).
pessoa(eduardo, m, hetero, 25, professor, brasilia, terror, jazz, esporte, cinema, seriados, festa).
pessoa(pedro, m, homo, 21, jornalista, salvador, drama, rock, seriados, danca, esporte, festa).
pessoa(camila, f, hetero, 34, engenheiro_civil, brasilia, comedia, pop, trabalho, musica, estudo, cinema).
pessoa(felipe, m, hetero, 51, fotografo, brasilia, comedia, axe, musica, seriado, festa, cinema).




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



/*Regra geral para criar um casal*/

casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX,Gosto1, Gosto2, Gosto3, Gosto4)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeX,GeneroFilmeY,EstiloMusicalY,Gosto1, Gosto2, Gosto3, Gosto4)
		    ,NomeX \= NomeY, 
		    ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY), 
		    idade(IdadeX, IdadeY),
		    gostos(NomeX, NomeY).




/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */