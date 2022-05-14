-------------------------------------------
--- Lista de Exercícios
--- Aluno: Thiago Brito Cassimiro da Silva
-------------------------------------------

SELECT CASE WHEN EXTRACT(month FROM birth) IN (1, 2, 3) THEN ('1o_TRI')::varchar 
            WHEN EXTRACT(month FROM birth) IN (4, 5, 6) THEN ('2o_TRI')::varchar
            WHEN EXTRACT(month FROM birth) IN (7, 8, 9) THEN ('3o_TRI')::varchar
            WHEN EXTRACT(month FROM birth) IN (10, 11, 12) THEN ('4o_TRI')::varchar
            END AS "Trimestre",--Quando o mês estiver entre 1-3 então o resultado será um conj. caracteres

        COUNT(CASE WHEN (EXTRACT(month FROM birth) IN (1, 2, 3)) THEN 1
                   WHEN (EXTRACT(month FROM birth) IN (4, 5, 6)) THEN 2
                   WHEN (EXTRACT(month FROM birth) IN (7, 8, 9)) THEN 3
                   WHEN (EXTRACT(month FROM birth) IN (10, 11, 12)) THEN 4
                   END) AS "Qtd_Users" --Contagem de usuários por trimestre

FROM "Users"

GROUP BY CASE WHEN EXTRACT(month FROM birth) IN (1, 2, 3) THEN ('1o_TRI')::varchar
            WHEN EXTRACT(month FROM birth) IN (4, 5, 6) THEN ('2o_TRI')::varchar
            WHEN EXTRACT(month FROM birth) IN (7, 8, 9) THEN ('3o_TRI')::varchar
            WHEN EXTRACT(month FROM birth) IN (10, 11, 12) THEN ('4o_TRI')::varchar
            END

ORDER BY COUNT(CASE WHEN (EXTRACT(month FROM birth) IN (1, 2, 3)) THEN 1
                   WHEN (EXTRACT(month FROM birth) IN (4, 5, 6)) THEN 2
                   WHEN (EXTRACT(month FROM birth) IN (7, 8, 9)) THEN 3
                   WHEN (EXTRACT(month FROM birth) IN (10, 11, 12)) THEN 4
                   END) DESC
