-- Selecionar todos os elementos de cada tabela
select * from filmes;
select * from posts;


-- Populando tabela filmes
insert into filmes (nome, ano, duracao, diretor, produtora, genero, sinopse, trailer)
values ("O Fantástico Senhor Raposo",	2009,	88,	"Wes Anderson",	"Fox Filmes",	"Animação",	
"O Sr. Raposo (George Clooney), a Sra. Raposa (Meryl Streep) e seu filho vão morar em uma árvore, 
localizada em uma colina. Lá eles têm como vizinhos o Coelho (Mario Batali), o Texugo (Bill Murray) 
e a Doninha (Wes Anderson), entre outros animais, todos com suas respectivas famílias. O Sr. Raposo 
prometeu à esposa que deixaria a vida de roubos de galinhas, já que ela estava grávida. Desde então 
ele iniciou uma respeitável carreira de colunista de jornal. Porém, a proximidade do novo lar com as
 fazendas de Boggis (Brian Cox), Bunce (Hugo Guinness) e Bean (Michael Gambon) faz com que volte à 
 velha vida, às escondidas. Só que logo o trio de fazendeiros se une para capturá-lo.",
 "https://www.youtube.com/watch?v=Kci6mhjdKlA");select * from assinantes;



#Inserir filme
#insert into alunos (nome, ano, duracao, diretor, produtora, genero, sinopse, trailer) values (?,?,?,?,?,?,?,?)

#Remover filme
#DELETE FROM filmes WHERE id=?

#Aterar filme
#update filmes set nome=?, ano=?, duracao=?, diretor=?, produtora=?, genero=?, sinopse=?, trailer=? where id=?"



