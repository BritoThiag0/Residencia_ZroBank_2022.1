--------------------------------------------
--- Lista de Exercícios
--- Aluno: Thiago Brito Cassimiro da Silva
--------------------------------------------

SELECT DATE(CREATED_AT) AS "Data Criada", --Passa para o formato de data mm/dd/aaaa
       AVG(VALUE/POWER(10 ,8)) AS "Média" --Média dos valores gastos em BTC

FROM "Bitcoin_Transfers"

[[WHERE DATE(CREATED_AT) BETWEEN {{dataInicial}} AND {{DataFinal}}]] --Criação de filtros ajustáveis pelo usuário

GROUP BY DATE(CREATED_AT) --Agrupamento pela data de criação
ORDER BY DATE(CREATED_AT) ASC --Ordenamento crescente pela data de criação
