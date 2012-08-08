Feature: Registro de Usuario
	In order to ingresar datos
	As a usuario
	I want conocer tus datos

Scenario: Validar Datos
	Given nombre vacio 
	When ingreso Pedro
	Then nombre es Pedro

