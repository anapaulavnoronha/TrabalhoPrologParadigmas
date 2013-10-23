pessoa(nome,sexo,idade,profissao,cep,generoFilmePreferido,
estiloMusicalPreferido, temFilhos).

endereco(cep,estado,cidade,bairro).

pessoa(Fernanda, f, 24, jornalista, 70000, terror, samba, nao).
pessoa(Maria, f, 46, advogado, 70001, comedia, rock, sim).
pessoa(Eduardo, m, 32, professor, 70002, terror, jazz, nao).
pessoa(Pedro, m, 21, jornalista, 70003, drama, rock, nao).
pessoa(Camila, f, 34, engenheiro_civil, 70000, comedia, pop, sim).
pessoa(Felipe, m, 51, fotografo, Brasilia, 70005, comedia, axe, sim).
 
endereco(70000,Distrito_Federal,Brasilia,Asa_Sul).
endereco(70001,Distrito_Federal,Brasilia,Sudoeste).
endereco(70002,Distrito_Federal,Brasilia,Lago_Norte).
endereco(70003,Sao_Paulo,Sao_Paulo,Morumbi).
endereco(70004,Distrito_Federal,Brasilia,Asa_Norte).
endereco(70005,Distrito_Federal,Brasilia,Lago_Sul).

/* seria o inicio do nosso template pra fazer uma aplicacao
como se fosse um site de relacionamento. Coloquei alguns atributos
mas podem ter mais. A gente teria varias regras, por exemplo a idade,
a proximidade do bairro das pessoas e etc. Além disso teria a prioridade
determinado atributo é mais importante que outros, ideias? */