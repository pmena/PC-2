Feature: Registro de Usuario
	In order to ingresar datos
	As a usuario
	I want conocer tus datos

Scenario: Validar Datos
	Given Enviar username  con "pmena" 
	And  Enviar nombre con "Pablo" 
	And  Enviar paterno con "Mena" 
	And  Enviar materno con "Medrano" 
	When Presiono "Guardar"
	Then nombre es Pedro
	And  nombre es "Pablo" 
	And  paterno es "Mena" 
	And  materno es "Medrano" 

