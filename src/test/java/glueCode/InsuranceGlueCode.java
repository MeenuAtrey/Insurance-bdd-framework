package glueCode;

import org.junit.Assert;
import org.openqa.selenium.By;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import utilities.Webconnector;

public class InsuranceGlueCode extends Webconnector {
	
	@Given("I am on insurance page")
	public void i_am_on_insurance_page() {
		driver.get(insurancepageUrl);
	}
	
}
