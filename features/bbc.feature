Feature: Automating the BBC website
	
	Scenario: I am going to sign in to the BBC website
		Given I am on the BBC website
		When I click on the sign in button
		And I enter the incorrect sign in credentials 
		Then click sign in
		And find an error message