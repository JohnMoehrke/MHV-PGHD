This is the notes for the VA.MHV.bloodPressure Profile


### Positive Tests

TODO write this in cucumber.

load all of the blood pressure examples that are [compliant to the MHV profile](StructureDefinition-VA.MHV.bloodPressure-examples.html) into PGHD, and all the heart rate examples that are in a hasMember relationship: 
* show them in MHV, they should show fine. 

load all of the other bloodPressure examples and heart rate examples. Some data won't show at all. They should not crash MHV.
* edit them in MHV, they should show the data that MHV understands. When the edit is saved, the resulting resource in PGHD should now be conformant to the [MHV bloodPressure profile](StructureDefinition-VA.MHV.bloodPressure.html)

### Negative Tests

TODO write this in cucumber.



