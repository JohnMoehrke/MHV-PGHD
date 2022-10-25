The MHV Pain profile uses the R4 Observation.valueInteger to hold the pain value. This is the right thing to do in R4, but in DSTU2 this would need to be in Observation.valueQuantity with no units and only integers between 0-10.



### Search PGHD

Because Pain Score are recorded by various applications with either of two codes, MHV will query PGHD asking for Observations with either of the two codes. Because this is a logical "OR", then results will also include Observations with both codes. 

The following is a example, hitting the test PGHD service, about a test patient. 
```
https://veteran.apps-staging.va.gov/smart-pgd-fhir/v2/Observation?patient.identifier=urn:uuid:2.16.840.1.113883.4.349|1012853550V207686&code=http://loinc.org|72514-3,http://snomed.info/sct|225908003&_sort=-date&_count=100&_pretty=true&_format=json 
```
Breakdown of query parameters
- patient.identifier -- this takes the patient ICN, and the server will find appropriate entries for that patient
- code - searching for Observations with either of these codes (OR relationship)
  - [LOINC 72514-3](https://loinc.org/72514-3/) - Pain severity - 0-10 verbal numeric rating [Score] - Reported
  - [SNOMED 225908003](http://snomed.info/sct/225908003/) - Pain score
- _sort -- ask that the results be sorted by date
- _count -- ask that no more than 100 be returned in each page
- _pretty -- ask that the results be pretty printed (normal json has no unnecessary whitespace)
- _format -- ask for json encoding

Results will be limited to 100 pain score Observations.

The next page is retrieved using the FHIR [paging](http://hl7.org/fhir/http.html#paging) mechanism.

The User Experience should NOT be aware of pages at the FHIR API level.

### Profile
