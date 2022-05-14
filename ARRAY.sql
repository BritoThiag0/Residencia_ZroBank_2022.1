--------------------------------------------
--- Lista de Exercícios
--- Aluno: Thiago Brito Cassimiro da Silva
--------------------------------------------

SELECT CBO, "Comprimento"

FROM( --Criação de subselect (subquery) para melhor organização

SELECT CBO,
       ARRAY_AGG(CONCAT(COD_CBO, ' {', NAME, '}')) AS "Array", --Criação de vetor concatenado
       ARRAY_LENGTH(ARRAY_AGG(CONCAT(COD_CBO, ' {', NAME, '}')),1) AS "Comprimento" --Medição do tamanho dos vetores

FROM "Occupations"

GROUP BY CBO

) AS BASE

ORDER BY "Comprimento" DESC LIMIT 1 --Ordena de forma decerescente o comprimento e pega o primeiro valor
