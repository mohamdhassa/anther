from selenium import webdriver
from selenium.webdriver.common.by import By
import time
from behave import given, when, then

from selenium.webdriver.chrome.options import Options

# Example WebDriver setup for headless mode
chrome_options = Options()
chrome_options.add_argument("--headless")  # Run Chrome in headless mode
chrome_options.add_argument("--no-sandbox")  # Bypass OS security model
chrome_options.add_argument("--disable-dev-shm-usage")  # Overcome limited resource problems
chrome_options.add_argument("--disable-gpu")  # Disable GPU hardware acceleration


driver = webdriver.Chrome(options=chrome_options)


# Initialize the WebDriver
driver = webdriver.Chrome()

@given('I am on the login page')
def step_given_login_page(context):
    driver.get("https://the-internet.herokuapp.com/login")
    time.sleep(2)

@when('I login with username "{username}" and password "{password}"')
def step_when_login(context, username, password):
    user_input = driver.find_element(By.ID, "username")
    pass_input = driver.find_element(By.ID, "password")
    user_input.clear()
    user_input.send_keys(username)
    pass_input.clear()
    pass_input.send_keys(password)
    login_button = driver.find_element(By.CLASS_NAME, "radius")
    login_button.click()
    time.sleep(1)

@then('I should see the message "{expected_message}"')
def step_then_validate_message(context, expected_message):
    try:
        message = driver.find_element(By.CSS_SELECTOR, "div.flash").text
        assert expected_message in message, f"Expected '{expected_message}', but got '{message}'"
    except Exception as e:
        raise AssertionError(f"Test Failed: {str(e)}")

# Hook for quitting the browser after tests
def after_all(context):
    driver.quit()
