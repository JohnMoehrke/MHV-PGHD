Feature: Heart Rate Vital Signs

  This will test positive and edge cases for Heart Rate Vital Sign. 
  
  Scenario Outline: Heart Rates are recognized as vital signs with a given code and is profiled as TODO
  
  Each Heart Rate falls in a generally accepted range.
  
  When a <vitalSign> is compliant with profile TODO
  Then it should have a value between <low> and <high>
  
  Examples: Heart Rate Vital Signs that are compliant with the profile are indicated
  
  | example-id | low | high | comment |
  |   |   |   |   |
  
  Scenario: Data being entered by the Patient
    Given Diana has a new measurement 
	And the data are
	  | low | high | comment |
	  |     |      |         |
	When she enters the data 
	And she submits the data
	Then a new item will appear on the list of Heart Rate values  
	  
  Scenario: Data being entered but not saved
     Given Diana has a new measurement 
	 When she enters the data
	 And cancels the data entry
	 Then no new item will appear on the list of Heart Rate values
	 