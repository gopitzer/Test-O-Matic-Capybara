Feature: Login

  Scenario: Login to env
    When I'm login to "http://suite0.emarsys.net" environment with these credentials:
      | customer           | admin   | pass       |
      | automat_QRS_suite0 | autobot | System2011 |