from demo10_qa_support_agent import demo1_qa_agent as agent


logs = """
Traceback (most recent call last):
  File "test_login.py", line 18, in <module>
    driver.find_element(By.ID, "submit-btn").click()
  File ".../site-packages/selenium/webdriver/remote/webdriver.py", line 748, in find_element
    return self.execute(Command.FIND_ELEMENT, {"using": by, "value": value})["value"]
selenium.common.exceptions.NoSuchElementException: Message: no such element: Unable to locate element: {"method":"css selector","selector":"[id="submit-btn"]"}
  (Session info: chrome=131.0.6778.85)

"""

respone=agent.analyze_error_log(logs)
print(respone)
