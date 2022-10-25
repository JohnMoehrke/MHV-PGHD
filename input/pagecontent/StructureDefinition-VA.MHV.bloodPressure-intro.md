

### Search PGHD

Because BloodPressure are recorded by various applications with either of two LOINC codes, MHV will query PGHD asking for Observations with either of the two codes. Because this is a logical "OR", then results will also include Observations with both codes. MHV further requests inclusion of other Observations linked by a hasMember relationship, which would be related heart rate at the time the blood pressure was taken.

The following is a example, hitting the test PGHD service, about a test patient. 
```
https://veteran.apps-staging.va.gov/smart-pgd-fhir/v2/Observation?patient.identifier=urn:uuid:2.16.840.1.113883.4.349|1012853550V207686&code=http://loinc.org|55284-4,http://loinc.org|8716-3&_include=Observation:has-member&_sort=-date&_count=100&_pretty=true&_format=json 
```
Breakdown of query parameters
- patient.identifier -- this takes the patient ICN, and the server will find appropriate entries for that patient
- code - searching for Observations with either of these codes (OR relationship)
  - [LOINC 55284-4](https://loinc.org/55284-4/) - Blood pressure systolic and diastolic
  - [LOINC 8716-3](https://loinc.org/8716-3/) - Vital signs
    - This is included for backward compatibility. This code should not generally be used in best-practice.
- _include -- also return anything that the Observation.hasMember points at
  - this should return any heart rate that is associated with the bloodpressure observations being returned
- _sort -- ask that the results be sorted by date
- _count -- ask that no more than 100 be returned in each page
- _pretty -- ask that the results be pretty printed (normal json has no unnecessary whitespace)
- _format -- ask for json encoding

Results will be limited to 100 bloodPressure Observations, which might be larger than 100 as there would be associated heart rate observations.

The next page is retrieved using the FHIR [paging](http://hl7.org/fhir/http.html#paging) mechanism.

The User Experience should NOT be aware of pages at the FHIR API level.

### Profile
