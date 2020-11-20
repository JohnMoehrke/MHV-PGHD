This is the notes for the VA.MHV.bodyWeight Profile

### Positive Tests

all compliant examples can be found load all of the body weight examples that are [compliant to the MHV profile](StructureDefinition-VA.MHV.bodyWeight-examples.html) into PGHD, 
* show them in MHV, they should show fine. 

#### Simple MHV Weight
Given [Example MHV weight Observation](Observation-ex-MHV-weight.html) is [loaded into PGHD](background.html#load-x-into-pghd)

WHEN MHV shows body weight values

THEN MHV shows the weight as 185 lbs with the comment of "a bit heavy"

WHEN MHV edits this values

THEN MHV shows the weight as 185 lbs with the comment of "a bit heavy"

WHEN the test-user changes the weight value to 200 lbs 
AND submits the changes

THEN MHV will succeed to save to MHV
AND the Test-Bench can retrieve the resource successfully
AND the Test-Bench shows the weight value has changed to 200 lbs
AND no other elements from the original are changed

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

TODO write this in cucumber.

load all of the body weight examples into PGHD, 
* show them in MHV, they should show fine. Some data won't show at all. They should not crash MHV.
* edit them in MHV, they should show the data that MHV understands. When the edit is saved, the resulting resource in PGHD should now be conformant to the [MHV body weight profile](StructureDefinition-VA.MHV.bodyWeight.html)

### Negative Tests

TODO write this in cucumber.

EKG should NOT show in MHV????

