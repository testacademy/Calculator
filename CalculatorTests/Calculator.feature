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
Scenario: Add two numbers one positive and one negative number to return expected result
	Given I have entered 50 into the calculator
	And I have also entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen

Scenario: Subtracting two positive numbers should return expected result
	Given I have entered 10 into the calculator
		And I have also entered 2 into the calculator
	When I press Subtract
	Then the result should be 8 on the screen

Scenario: Multiplying two negative numbers should return expected result
	Given I have entered -10 into the calculator
		And I have also entered -3 into the calculator
	When I press Multiply
	Then the result should be 30 on the screen

Scenario: Dividing one positive and one negative number should return expected result
	Given I have entered -4 into the calculator
		And I have also entered 2 into the calculator
	When I press Multiply
	Then the result should be -8 on the screen



