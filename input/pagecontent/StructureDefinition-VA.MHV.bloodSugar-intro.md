

### Search PGHD

Blood Sugar are recorded by various applications using the same LOINC codes, MHV will query PGHD asking for Observations with that code. 

Should not need to include the old LOINC code, as we are assured any DSTU2 data recorded using that old code will be upcoded in R4 to the new code.

The following is a example, hitting the test PGHD service, about a test patient. 
```
https://veteran.apps-staging.va.gov/smart-pgd-fhir/v2/Observation?patient.identifier=urn:uuid:2.16.840.1.113883.4.349|1012853550V207686&code=http://loinc.org|2339-0,http://loinc.org|2345-7&_sort=-date&_count=100&_pretty=true&_format=json 
```
Breakdown of query parameters
- patient.identifier -- this takes the patient ICN, and the server will find appropriate entries for that patient
- code - searching for Observations with the codes
  - [LOINC 2339-0](https://loinc.org/2339-0/) - Glucose [Mass/volume] in Blood
  - [LOINC 2345-7](https://loinc.org/2345-7) - Glucose [Mass/volume] in Serum or Plasma
    - searched only for historic reasons
- _sort -- ask that the results be sorted by date
- _count -- ask that no more than 100 be returned in each page
- _pretty -- ask that the results be pretty printed (normal json has no unnecessary whitespace)
- _format -- ask for json encoding

Results will be limited to 100 Blood Sugar Observations.

The next page is retrieved using the FHIR [paging](http://hl7.org/fhir/http.html#paging) mechanism.

The User Experience should NOT be aware of pages at the FHIR API level.

### Profile
