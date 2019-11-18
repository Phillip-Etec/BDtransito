go 
use bdTransito2 
 
 --A

SELECT count(codMotorista) FROM tbMotorista

--B

SELECT COUNT (nomeMotorista) FROM tbMotorista
WHERE nomeMotorista LIKE '%Silva%'

--C

SELECT COUNT (dataNascMotorista) FROM tbMotorista
WHERE DATEPART(YEAR,dataNascMotorista) = 2000

--D

SELECT COUNT (codMotorista) FROM tbMotorista
WHERE pontAcumuladoMotorista > 10

--E

SELECT nomeMotorista,SUM(pontAcumuladoMotorista) 'pontos' FROM tbMotorista
ORDER BY nomeMotorista

--F

SELECT nomeMotorista , AVG(pontAcumuladoMotorista) 'pontos maiores' FROM tbMotorista
ORDER BY 'pontos maiores' desc

--G

--SELECT nomeMotorista , COUNT(codVeiculo) FROM tbVeiculo


--H

SELECT COUNT(placaVeiculo) 'placa' FROM tbVeiculo
WHERE placaVeiculo LIKE 'A%'

--I

SELECT COUNT (anoVeiculo) 'ano' FROM tbVeiculo
WHERE anoVeiculo < 2010

-- j
select avg (anoVeiculo) 'média dos anos dos veículos' from tbVeiculo

-- k

select count (modeloVeiculo) 'modelos com "Sedan" no nome do modelo' from tbVeiculo
    where modeloVeiculo like'%Sedan%'
    
-- l
select sum (pontosMultas) 'soma dos pontos' from tbMultas
select placaVeiculo 'placas dos veículos' from tbVeiculo

-- m
select avg (pontosMultas) 'média dos pontos' from tbMultas
select placaVeiculo 'placas dos veículos' from tbVeiculo

-- n
select placaVeiculo 'placas dos veículos' from tbVeiculo
select count (codMultas) 'quantidade de multas em abr/2018'
    where dataMultas=datepart(month, 4)
    
-- o
SELECT count (tbVeiculo.placaVeiculo) 'quantidade de placas terminadas em 1 ou 2' , tbMotorista 'Motorista'
FROM tbVeiculo
INNER JOIN tbMotorista
ON tbVeiculo.codMotorista = tbMotorista.codMotorista;
    where placaVeiculo = 1 or placaVeiculo =2
    
-- p
SELECT count (tbVeiculo.placaVeiculo) 'quantidade de placas terminadas em 4 ou 3' , tbMotorista 'Motorista'
FROM tbVeiculo
INNER JOIN tbMotorista
ON tbVeiculo.codMotorista = tbMotorista.codMotorista;
    where placaVeiculo = 4 or placaVeiculo =3
    
-- q
SELECT count (tbVeiculo.placaVeiculo) 'quantidade de placas terminadas em 5 ou 6' , tbMotorista 'Motorista'
FROM tbVeiculo
INNER JOIN tbMotorista
ON tbVeiculo.codMotorista = tbMotorista.codMotorista;
    where placaVeiculo = 5 or placaVeiculo =6


-- r
SELECT count (tbVeiculo.placaVeiculo) 'quantidade de placas terminadas em 8 ou 7' , tbMotorista 'Motorista'
FROM tbVeiculo
INNER JOIN tbMotorista
ON tbVeiculo.codMotorista = tbMotorista.codMotorista;
    where placaVeiculo = 8 or placaVeiculo =7
    
-- s
SELECT count (tbVeiculo.placaVeiculo) 'quantidade de placas terminadas em 9 ou 0' , tbMotorista 'Motorista'
FROM tbVeiculo
INNER JOIN tbMotorista
ON tbVeiculo.codMotorista = tbMotorista.codMotorista;
    where placaVeiculo = 9 or placaVeiculo =0
    
    
-- t
select count (codVeiculo) 'quantidade de veículos ordenado pelo ano???' from tbVeiculo
    order by anoVeiculo asc
    
-- u
select count (pontAcumuladoMotorista) 'quantidade de motoristas ordenado pela pontuação acumulada???' from tbMotorista
    order by pontAcumuladoMotorista asc
    
-- v
select count (pontAcumuladoMotorista) 'quantidade de motoristas que ultrapassaram 20 pontos' from tbMotorista
    where pontAcumuladoMotorista>20
    
-- w
select avg (pontAcumuladoMotorista) 'média dos pontos de quem nasceu em 2000', nomeMotorista from tbMotorista
    where datepart(yy, dataNascMotorista)=2000
        order by pontAcumuladoMotorista
    
-- x
select avg (pontosMultas) 'média dos pontos das multas aplicadas em julho de 2017' from tbMultas
    where datepart(month, dataMultas)=7 and datepart(yy, dataMultas)=2017
    
-- y
select count(placaVeiculo) 'quantidade de veículos que não podem circular na segunda-feira'
    where placaVeiculo like'%1' or placaVeiculo like "%2"
