USE project
GO

/*
a - Quantos projetos n�o tem usu�rios associados a ele. A coluna deve chamar
qty_projects_no_users
*/
SELECT
    pro.id AS Id_Projeto,
    pro.name AS NomeProjeto,
    COUNT(up.id_users) AS qty_users_project
FROM
    projects pro
LEFT JOIN
    users_has_projects up ON pro.id = up.id_projects
GROUP BY
    pro.id, pro.name
HAVING
    COUNT(up.id_users) = 0
ORDER BY
    pro.name ASC;
/*
b - Id do projeto, nome do projeto, qty_users_project (quantidade de usu�rios por
projeto) em ordem alfab�tica crescente pelo nome do projeto
*/
 SELECT
  pro.id AS Id_projeto,
  pro.name AS Nome_Projeto,
  COUNT(up.id_users) AS qty_users_project
 FROM
    projects pro LEFT JOIN users_has_projects up ON pro.id = up.id_projects
  GROUP BY
    pro.id, pro.name
  ORDER BY
    pro.name ASC;
