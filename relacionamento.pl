/*pessoa(Nome,Sexo,OpcaoSexual,Idade,Profissao,Cep,GeneroFilmePreferido,
EstiloMusicalPreferido, TemFilhos).
*/


pessoa(fernanda, f, hetero, 24, jornalista, brasilia, terror, samba).
pessoa(maria, f, hetero, 46, advogado, salvador, comedia, rock).
pessoa(eduardo, m, homo, 32, professor, brasilia, terror, jazz).
pessoa(pedro, m, homo, 21, jornalista, salvador, drama, rock).
pessoa(camila, f, hetero, 34, engenheiro_civil, brasilia, comedia, pop).
pessoa(felipe, m, hetero, 51, fotografo, brasilia, comedia, axe).


ifThenElse(X, Y, _) :- X, !, Y.
ifThenElse(_,_,OpcaoSexual) :- OpcaoSexual.


casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeY,GeneroFilmeY,EstiloMusicalY)
		    ,NomeX \= NomeY, ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY).

casal(NomeX,NomeY):-pessoa(NomeX,SexoX,OpcaoSexual,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX)
	            ,pessoa(NomeY,SexoY,OpcaoSexual,IdadeY,ProfissaoY,CidadeX,GeneroFilmeY,EstiloMusicalY)
		    ,NomeX \= NomeY, ifThenElse(OpcaoSexual = homo, SexoX = SexoY, SexoX\=SexoY).


idade(IdadeX,IdadeY) :- (IdadeX-IdadeY)=<7 , (IdadeY-IdadeX)=<7.

casal(NomeX,NomeY) :- pessoa(NomeX,SexoX,OpcaoSexualX,IdadeX,ProfissaoX,CidadeX,GeneroFilmeX,EstiloMusicalX),
	              pessoa(NomeY,SexoY,OpcaoSexualY,IdadeY,ProfissaoY,CidadeY,GeneroFilmeY,EstiloMusicalY),
		      idade(IdadeX,IdadeY).



/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */