/*pessoa(Nome,Sexo,Idade,Profissao,Cep,GeneroFilmePreferido,
EstiloMusicalPreferido, TemFilhos, opcaoSexual).

endereco(Cep,Estado,Cidade,Bairro).*/


pessoa(fernanda, f, 24, jornalista, 70000, terror, samba, nao, hetero).
pessoa(maria, f, 46, advogado, 70001, comedia, rock, sim, hetero).
pessoa(eduardo, m, 32, professor, 70002, terror, jazz, nao, homo).
pessoa(pedro, m, 21, jornalista, 70000, drama, rock, nao, homo).
pessoa(camila, f, 34, engenheiro_civil, 70000, comedia, pop, sim, hetero).
pessoa(felipe, m, 51, fotografo, 70001, comedia, axe, sim, hetero).


endereco(70000,distrito_Federal,brasilia,asa_Sul).
endereco(70001,distrito_Federal,brasilia,lago_Sul).
endereco(70002,distrito_Federal,brasilia,lago_Norte).
endereco(70000,distrito_Federal,brasilia,asa_Sul).
endereco(70004,distrito_Federal,brasilia,asa_Norte).
endereco(70001,distrito_Federal,brasilia,lago_Sul).

ifThenElse(X, Y, _) :- X, !, Y.
ifThenElse(_,_,Z) :- Z.


casal(X,Y):-pessoa(X,A,B,C,D,E,F,G,Z),pessoa(Y,L,M,N,J,P,Q,R,Z), X \= Y, ifThenElse(Z = homo, A = L, A\=L).


/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */