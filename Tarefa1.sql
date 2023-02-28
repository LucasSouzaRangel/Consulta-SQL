-- Schema
CREATE TABLE Pessoa (
    Id int,
    Nome nvarchar(100),
    Salario nvarchar(100),
    DeptId int)
     
CREATE TABLE Departamento (
    Id int,
    Nome nvarchar(100))


INSERT INTO Pessoa (Id, Nome, Salario, DeptId) VALUES (1, 'Joe', '70000', 1);
INSERT INTO Pessoa (Id, Nome, Salario, DeptId) VALUES (2, 'Henry', '80000', 2);
INSERT INTO Pessoa (Id, Nome, Salario, DeptId) VALUES (3, 'Sam', '60000', 2);
INSERT INTO Pessoa (Id, Nome, Salario, DeptId) VALUES (4, 'Mac', '90000', 1);

INSERT INTO Departamento (Id, Nome) VALUES (1, 'TI');
INSERT INTO Departamento (Id, Nome) VALUES (2, 'Vendas');
        
--SQL Commands
SELECT D.Nome as 'Departamento', P.Nome as 'Pessoa', P.Salario as 'Salário' FROM Pessoa AS P
INNER JOIN Departamento AS D ON P.DeptId = D.Id
ORDER BY P.Salario DESC, P.DeptId DESC