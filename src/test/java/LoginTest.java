import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class LoginTest {

    private WebDriver driver;
    private WebDriverWait wait;

    @BeforeEach
    void setup() {

        ChromeOptions options = new ChromeOptions();

        options.addArguments("--headless=new");
        options.addArguments("--window-size=1920,1080");

        driver = new ChromeDriver(options);

        wait = new WebDriverWait(
                driver,
                Duration.ofSeconds(10)
        );
    }

    @Test
    void testLogin() {

        driver.get(
                "http://localhost:8081/DevOpsShop-1.0-SNAPSHOT/login.jsp"
        );

        System.out.println("PAGE TITLE: " + driver.getTitle());
        System.out.println("PAGE URL: " + driver.getCurrentUrl());

        wait.until(
                ExpectedConditions.titleContains("Login")
        );

        driver.findElement(
                By.id("username")
        ).sendKeys("admin");

        driver.findElement(
                By.id("password")
        ).sendKeys("admin123");

        driver.findElement(
                By.id("loginButton")
        ).click();

        wait.until(
                ExpectedConditions.titleIs(
                        "Products - DevOps Shop"
                )
        );

        System.out.println("AFTER LOGIN TITLE: " + driver.getTitle());
        System.out.println("AFTER LOGIN URL: " + driver.getCurrentUrl());
    }

    @AfterEach
    void closeBrowser() {

        if (driver != null) {
            driver.quit();
        }
    }
}