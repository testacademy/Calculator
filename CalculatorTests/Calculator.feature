Feature: Calculator
	In order to learn SpecFlow
	I want to write scenarios with bindings for Calculator
	So I could be SpecFLow master

#1) Create scenario for Add method and test one positive and one negative number. Implement bindings. Test should PASS.
#2) Create scenario for Subtract method and test two positive numbers. Implement bindings. Test should PASS.
#3) Create scenario for Multiply method and test two negative numbers. Implement bindings. Test should PASS.
#4) Create scenario for Divide method and test one positive and one negative number. Implement bindings. Test should PASS.
#5) BONUS: Add step to check if result is positive or negative number (depending on the context)

@calculator
Scenario: Add two numbers
	Given I have entered 5 into the calculator
	And I have also entered -5 into the calculator
	When I press add
	Then the result should be 0 on the screen

Scenario: subtract two numbers
	Given I have entered 5 into the calculator
	And I have also entered 5 into the calculator
	When I press subtract
	Then the result should be 0 on the screen

Scenario: multiply two numbers
	Given I have entered -5 into the calculator
	And I have also entered -5 into the calculator
	When I press multiply
	Then the result should be 25 on the screen

Scenario: divide two numbers
	Given I have entered 5 into the calculator
	And I have also entered -5 into the calculator
	When I press divide
	Then the result should be -1 on the screen

#Scenario: add two positive numbers
#	Given I have entered 5 into the calculator
#	And I have also entered 5 into the calculator
#	When I press add
#	Then the result should be >0 on the screen
