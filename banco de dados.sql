create database bdTransito2
go
use bdTransito2
create table tbMotorista (
	codMotorista int primary key identity (1,1)	
	, nomeMotorista  varchar (64) not null
	, dataNascMotorista  smalldatetime not null
	, cpfMotorista  varchar (14) not null
	, CNHMotorista smallInt
	, pontAcumuladoMotorista smallInt 
) 
create table tbVeiculo (
	codVeiculo int primary key identity (1,1)	
	, modeloVeiculo varchar
	, placaVeiculo varchar(8)
	, renavamVeiculo varchar
	, anoVeiculo smallInt
	, codMotorista int foreign key references tbMotorista (codMotorista) 
) 
create table tbMultas (
	codMultas int primary key identity (1,1)	
	, dataMultas  smalldatetime
	, horaMultas smalldatetime
	, pontosMultas smallInt
	, codVeiculo int foreign key references tbVeiculo (codVeiculo) 
) 