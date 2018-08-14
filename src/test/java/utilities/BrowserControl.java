package utilities;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.After;
import cucumber.api.java.Before;

public class BrowserControl extends Webconnector {
	
	@Before
	public void openBrowser() {
		if(browserType.equalsIgnoreCase("chrome")) {
	        System.setProperty("webdriver.chrome.driver", "../BDDframework-Maven/src/test/java/resources/chromedriver");
			driver = new ChromeDriver();
		} else if (browserType.equalsIgnoreCase("firefox")) {
			System.setProperty("webdriver.gecko.driver", "../BDDframework-Maven/src/test/java/resources/geckodriver");
			driver = new FirefoxDriver();
		}
	}
	
	@After
	public void closeBrowser() {
		driver.quit();
	}

}
