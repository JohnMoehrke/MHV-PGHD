This is the notes for the VA.MHV.heartRate Profile

### Positive Tests

#### Simple MHV HeartRate 1
Given [Example MHV Heart Rate 1 Observation](Observation-ex-MHV-heartRate-1.html) is [loaded into PGHD](background.html#load-x-into-pghd)

WHEN MHV shows Heart Rate 1 values

THEN MHV shows the heart rate as 185 beats per minute with the comment of "a bit fast"

WHEN MHV edits this values

THEN MHV shows the heart rate as 185 beats per minute with the comment of "a bit fast"

WHEN the test-user changes the heart rate value to 200 beats per minute 
AND submits the changes

THEN MHV will succeed to save to MHV
AND the Test-Bench can retrieve the resource successfully
AND the Test-Bench shows the heart rate value has changed to 200 beats per minute
AND no other elements from the original are changed

#### Simple MHV HeartRate 2
Given [Example MHV Heart Rate 2 Observation](Observation-ex-MHV-heartRate-2.html) is [loaded into PGHD](background.html#load-x-into-pghd)

WHEN MHV shows Heart Rate 1 values

THEN MHV shows the heart rate as 18 beats per minute with the comment of "a bit slow"

WHEN MHV edits this values

THEN MHV shows the heart rate as 18 beats per minute with the comment of "a bit slow"

WHEN the test-user changes the heart rate value to 200 beats per minute 
AND submits the changes

THEN MHV will succeed to save to MHV
AND the Test-Bench can retrieve the resource successfully
AND the Test-Bench shows the heart rate value has changed to 200 beats per minute
AND no other elements from the original are changed

#### Simple MHV HeartRate 3
Given [Example MHV Heart Rate 3 Observation](Observation-ex-MHV-heartRate-3.html) is [loaded into PGHD](background.html#load-x-into-pghd)

WHEN MHV shows Heart Rate 1 values

THEN MHV shows the heart rate as 65 beats per minute with the comment of "a nice calm"

WHEN MHV edits this values

THEN MHV shows the heart rate as 65 beats per minute with the comment of "a nice calm"

WHEN the test-user changes the heart rate value to 200 beats per minute 
AND submits the changes

THEN MHV will succeed to save to MHV
AND the Test-Bench can retrieve the resource successfully
AND the Test-Bench shows the heart rate value has changed to 200 beats per minute
AND no other elements from the original are changed



### Stress Positive Tests

TODO write this in cucumber.

load all of the heart rate examples into PGHD, 
* show them in MHV, they should show fine. Some data won't show at all. They should not crash MHV.
* edit them in MHV, they should show the data that MHV understands. When the edit is saved, the resulting resource in PGHD should now be conformant to the [MHV heart rate profile](StructureDefinition-VA.MHV.heartRate.html)

### Negative Tests

TODO write this in cucumber.

EKG should NOT show in MHV????

