

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class LoginTest {

    private WebDriver driver;

    @BeforeEach
    void setup() {

        ChromeOptions options = new ChromeOptions();

        // Jenkins ke liye browser background mein chalega
//        options.addArguments("--headless=new");
//        options.addArguments("--window-size=1920,1080");

        driver = new ChromeDriver(options);
    }

    @Test
    void testLogin() {

        // Tomcat par deployed application
        driver.get(
                "http://localhost:8081/DevOpsShop-1.0-SNAPSHOT/login.jsp"
        );

        // Check login page opened
        Assertions.assertTrue(
                driver.getTitle().contains("DevOps")
        );

        // Enter username
        driver.findElement(By.id("username"))
                .sendKeys("admin");

        // Enter password
        driver.findElement(By.id("password"))
                .sendKeys("admin123");

        // Click Login
        driver.findElement(By.id("loginButton"))
                .click();

        // Successful login ke baad products page ka title
        Assertions.assertEquals(
                "Products - DevOps Shop",
                driver.getTitle()
        );

        // Product page mein Laptop hona chahiye
        String pageText = driver.findElement(By.tagName("body"))
                .getText();

        Assertions.assertTrue(
                pageText.contains("Laptop"),
                "Laptop product should be visible"
        );

        // Mobile bhi check
        Assertions.assertTrue(
                pageText.contains("Mobile"),
                "Mobile product should be visible"
        );

        // Headphones bhi check
        Assertions.assertTrue(
                pageText.contains("Headphones"),
                "Headphones product should be visible"
        );
    }

    @AfterEach
    void closeBrowser() {

        if (driver != null) {
            driver.quit();
        }
    }
}