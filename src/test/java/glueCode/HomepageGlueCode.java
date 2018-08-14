package glueCode;

import org.junit.Assert;
import org.openqa.selenium.By;

//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import utilities.Webconnector;

public class HomepageGlueCode extends Webconnector {
	
	@Given("I am on home page")
	public void i_am_on_home_page() {
	    driver.get(baseUrl);
	}

	@Then("I should see {string} title")
	public void i_should_see_title(String expectedTitle) {
	    Assert.assertEquals(expectedTitle, driver.getTitle());
	}
	
	@When("I click on {string} button")
	public void i_click_on_button(String locator) {
		driver.findElement(By.xpath(locator)).click();
	}
		
		@Then("the page url should contain {string}")
		public void the_page_url_should_contain(String expectedPath) {
		    Assert.assertTrue(driver.getCurrentUrl().contains(expectedPath));
		}
	    
	

}
