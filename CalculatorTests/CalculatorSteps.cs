namespace CalculatorTests
{
    using Calc;
    using NUnit.Framework;
    using TechTalk.SpecFlow;

    [Binding]
    public class CalculatorSteps
    {
        private int result;

        private Calculator calculator = new Calculator();

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int firstNumber)
        {
            calculator.FirstNumber = firstNumber;
        }

        [Given(@"I have also entered (.*) into the calculator")]
        public void GivenIHaveAlsoEnteredIntoTheCalculator(int secondNumber)
        {
            calculator.SecondNumber = secondNumber;
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            result = calculator.Add();
        }
        [When(@"I press Subtract")]
        public void WhenIPressSubstract()
        {
            result = calculator.Subtract();
        }
        [When(@"I press Multiply")]
        public void WhenIPressMultiply()
        {
            result = calculator.Multiply();
        }
        [When(@"I press Divide")]
        public void WhenIPressDivide()
        {
            result = calculator.Divide();
        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int expectedResult)
        {
            Assert.AreEqual(expectedResult, result);
   
        }
    }
}
