/*pessoa(Nome,Sexo,OpcaoSexual,Idade,Profissao,Cep,GeneroFilmePreferido,
EstiloMusicalPreferido, TemFilhos).

endereco(Cep,Estado,Cidade,Bairro).*/


pessoa(fernanda, f, hetero, 24, jornalista, brasilia, terror, samba, nao).
pessoa(maria, f, hetero, 46, advogado, salvador, comedia, rock, sim).
pessoa(eduardo, m, homo, 32, professor, brasilia, terror, jazz, nao).
pessoa(pedro, m, homo, 21, jornalista, salvador, drama, rock, nao).
pessoa(camila, f, hetero, 34, engenheiro_civil, brasilia, comedia, pop, sim).
pessoa(felipe, m, hetero, 51, fotografo, brasilia, comedia, axe, sim).

/*
endereco(70000,distrito_Federal,brasilia,asa_Sul).
endereco(70001,distrito_Federal,brasilia,lago_Sul).
endereco(70002,distrito_Federal,brasilia,lago_Norte).
endereco(70000,distrito_Federal,brasilia,asa_Sul).
endereco(70004,distrito_Federal,brasilia,asa_Norte).
endereco(70001,distrito_Federal,brasilia,lago_Sul).
*/


ifThenElse(X, Y, _) :- X, !, Y.
ifThenElse(_,_,OpcaoSexual) :- OpcaoSexual.


casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeY,GeneroFilmeY,EstiloMusicalY)
		    ,NomeX \= NomeY, ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY).

casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeX,GeneroFilmeY,EstiloMusicalY)
		    ,NomeX \= NomeY, ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY).



/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */