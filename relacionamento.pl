/*pessoa(Nome,Sexo,Idade,Profissao,Cep,GeneroFilmePreferido,
EstiloMusicalPreferido, TemFilhos).

endereco(Cep,Estado,Cidade,Bairro).*/


pessoa(fernanda, f, 24, jornalista, 70000, terror, samba, nao).
pessoa(maria, f, 46, advogado, 70001, comedia, rock, sim).
pessoa(eduardo, m, 32, professor, 70002, terror, jazz, nao).
pessoa(pedro, m, 21, jornalista, 70003, drama, rock, nao).
pessoa(camila, f, 34, engenheiro_civil, 70000, comedia, pop, sim).
pessoa(felipe, m, 51, fotografo, Brasilia, 70005, comedia, axe, sim).
 
endereco(70000,distrito_Federal,brasilia,asa_Sul).
endereco(70001,distrito_Federal,brasilia,sudoeste).
endereco(70002,distrito_Federal,brasilia,lago_Norte).
endereco(70003,sao_Paulo,sao_Paulo,morumbi).
endereco(70004,distrito_Federal,brasilia,asa_Norte).
endereco(70005,distrito_Federal,brasilia,lago_Sul).

/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */