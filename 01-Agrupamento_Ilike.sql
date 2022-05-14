---------------------------------------------------
--- Lista de Exercícios
--- Aluno: Thiago Brito Cassimiro da Silva
---------------------------------------------------


SELECT U.id, 
       INITCAP(U.full_name) as "Nome Completo", --Inicialização de cada palavra com letra maiúscula
       (SUM(D.value)/100.) AS "Valor Total", --Somatório da razão do gasto por 100. para passar de centavos para reais
       COUNT(D.user_id) --Contagem para determinar a quantidade de usuários

FROM "Users" as U
LEFT JOIN "Debit_Card_Transactions" AS D on U.id = D.user_id --Pega os casos que estão na tabela U e na tabela D ao mesmo tempo

WHERE D.description ILIKE '%Uber%Trip%' --Busca por essas informações sem se preocupar com a escrita das palavras

GROUP BY U.id, initcap(U.full_name) --Agrupa por id e full_name
ORDER BY (SUM(D.value)/100.) DESC --Ordena de forma decrescente o valor total gasto
