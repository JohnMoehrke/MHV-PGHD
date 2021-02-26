This is the notes for the VA.MHV.bodyWeight Profile

### Example Mapping:

* Positive Tests
  * create simple MHV Weight
    * weight is recorded
  * read set of weights
    * display of basic values from weights
  * read simple weight
    * weight is viewed
  * read good but extensive weight
    * weight is viewed
  * update a simple existing weight
    * weight is updated
  * update an extensive weight
    * weight is updated, all non-MHV elements are removed
    * weight saved is simple
* Negative Tests
  * read set of weights where one is not valid
    * the not valid one will not be displayed


See the [create-simple-weight feature file](create-simple-weight.feature)

### Positive Tests

all compliant examples can be found load all of the body weight examples that are [compliant to the MHV profile](StructureDefinition-VA.MHV.bodyWeight-examples.html) into PGHD, 
* show them in MHV, they should show fine. 

#### Simple MHV Weight

Feature: simple MHV weight 

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

##### example driven simple MHV weights

Feature: view of sample weights
  a set of example weights that are known to be compliant with the body weight profile, these should all be viewable in MHV 

  Scenario: read and view simple weight
    Given [Example MHV weight Observation](Observation-ex-MHV-weight.html) is [loaded into PGHD](background.html#load-x-into-pghd)
    When Michale views body weight values
    Then Michale sees the weight as 185 lbs with the comment of "a bit heavy"

  Scenario: update and view simple weight
    Given [Example MHV weight Observation](Observation-ex-MHV-weight.html) is [loaded into PGHD](background.html#load-x-into-pghd)
    When Michale edits this weight changing the weight value to 200 lbs
    And submits the change to PGHD
    Then saving will succeed
    And the Test-Bench can retrieve the resource successfully
    And the Test-Bench shows the weight value has changed to 200 lbs
    And no other elements from the original are changed

#### Simple MHV Weight
Given [Example MHV weight Observation](Observation-example-weight-min.html) is [loaded into PGHD](background.html#load-x-into-pghd)

WHEN MHV shows body weight values

THEN MHV shows the weight as 83.9146 kg with the comment of "a bit podgy"

WHEN MHV edits this values

THEN MHV shows the weight as 83.9146 kg with the comment of "a bit podgy"

WHEN the test-user changes the weight value to 200 lbs 
AND submits the changes

THEN MHV will succeed to save to MHV
AND the Test-Bench can retrieve the resource successfully
AND the Test-Bench shows the weight value has changed to 200 lbs
AND no other elements from the original are changed

### Stress Positive Tests

TODO write this in gherkin.

load all of the body weight examples into PGHD, 
* show them in MHV, they should show fine. Some data won't show at all. They should not crash MHV.
* edit them in MHV, they should show the data that MHV understands. When the edit is saved, the resulting resource in PGHD should now be conformant to the [MHV body weight profile](StructureDefinition-VA.MHV.bodyWeight.html)

### Negative Tests

TODO write this in gherkin.

EKG should NOT show in MHV????

