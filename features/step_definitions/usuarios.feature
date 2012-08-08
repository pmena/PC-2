Feature: Registro de Usuario
	In order to ingresar datos
	As a usuario
	I want conocer tus datos

Scenario: Comprobar consistencia de datos de usuario
	Given Enviar username  con "pmena" 
	And  Enviar nombre con "Pablo" 
	And  Enviar paterno con "Mena" 
	And  Enviar materno con "Medrano" 
	When Presiono "Enviar"
	Then username es "pmena"
	And  nombre es "Pablo" 
	And  paterno es "Mena" 
	And  materno es "Medrano" 


Scenario: Todos los datos son obligatorios
	Given Enviar username "pmena" 
	And  Enviar nombre "" 
	And  Enviar paterno "Mena" 
	And  Enviar materno "" 
	When Click "Enviar"
	Then Deberia visitar "index"
