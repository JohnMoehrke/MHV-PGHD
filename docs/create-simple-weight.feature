Feature: simple weight 

  Variations of legitimate weights
  
  Scenario Outline: Entering weights
    Given Michael creates a new body weight
    When Michale enters a <weight> <units> and <comment>
      | comment     | weight | units |
      | infant      | 15     | oz    |
      | a bit heavy | 185    | lbs   |
      | big         | 567    | lbs   |
      | European    | 97     | kgs   |
    Then the PGHD will hold a resource with the <weight> <units>
    And the resource will be compliant with the MHV weight profile


  Scenario: read and view simple weight
    Given [Example MHV weight Observation](Observation-ex-MHV-weight.html) is [loaded into PGHD](testplan.html#load-x-into-pghd)
    When Michale views body weight values
    Then Michale sees the weight as 185 lbs with the comment of "a bit heavy"

  Scenario: update and view simple weight
    Given [Example MHV weight Observation](Observation-ex-MHV-weight.html) is [loaded into PGHD](testplan.html#load-x-into-pghd)
    When Michale edits this weight
    Then Michale sees the weight as 185 lbs with the comment of "a bit heavy"
	
  
  