Feature: Automating the BBC website
	
	Scenario: I am going to sign in to the BBC website
		Given I am on the BBC website
		When I click on the sign in button
		And I enter the incorrect sign in credentials 
		Then click sign in
		And find an error message

	Scenario: I am going to register to the BBC website
		Given I am on the BBC website
		And I click on the sign in button
		When I click on the register link
		And I am on the enter birthday credentials
		And click next
		Then I fill in the rest of the forms
		And I click next now registered