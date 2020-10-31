Feature: OrangeHRM Login

  Scenario: Login to OrangeHRM with valid parameters
    Given I launch Chrome browser
    When I open orange HRM Homepage
    And Enter username "admin" and password "admin123"
    And Click on login button
    Then User must successsfully login to the Dashboard page

  Scenario Outline: Login to OrangeHRM with valid parameters
    Given I launch Chrome browser
    When I open orange HRM Homepage
    And Enter username "<username>" and password "<password>"
    And Click on login button
    Then User must successsfully login to the Dashboard page

    Examples:
    |username|password|
    |admin   |admin   |
    |admin   |admin123|
    |admin123|admin   |
    |adminxyz|admin123|