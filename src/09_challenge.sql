SELECT p.name AS "Plano", COUNT(u.plan_id) AS "Quantidade de usuários"
FROM plans AS p
    INNER JOIN users AS u ON p.id = u.plan_id
GROUP BY
    p.name;