### Usage

The Family Member History enables recording into a Patient's chart relevant medical history of that Patient's family members. Given a Patient, there will be some number of Family Member History resource that indicate various relatives. Each Family Member History resource contains the list of medical conditions that family member had or has. Thus the Family Member History resource is about the Patient potential to have similar medical conditions due to genetics or social environment.

#### Minimal Viable

* create, read, update, and delete of FamilyMemberHistory FHIR core resource
* must point at the patient
* must indicate the date being recorded
* should have the family member's name or some alias
* must have relationship between family member and patient
* should have sex of the family member (birth sex)
* should indicate if the family member is deceased
* will have zero or more medical conditions using SNOMED-CT codes
  * allow free-text entered conditions for those not listed
* should have a note

#### Coordination with current MyHealtheVet Family Health History 

Existing (old) [Family Health History in MyHealtheVet](ExistingFamilyHealthHistory.png)
* All elements map directoy to FHIR elements
  * See [defined mapping from old to PGHD](StructureDefinition-VA.MHV.familymemberhistory-mappings.html#mappings-for-myhealthevet-old-family-health-history-ui-mapping-t)
  * old conditions need to be mapped to proper Conditions vocabulary
* No need for extensions 

**Existing Relationship to FHIR relationship and gender**

MHV Relationship            | FHIR relationship |
-----------------------------|----------------------------------|
Self | N/A -> Conditions 
Mother | #MTR "mother"
Father | #FTH "father"
Grandfather - Mother's Side | #MGRFTH	"maternal grandfather"
Grandmother - Mother's Side | #MGRMTH	"maternal grandmother"
Grandfather - Father's Side | #PGRFTH	"paternal grandfather"
Grandmother - Father's Side | #PGRMTH	"paternal grandmother"
Uncle - Mother's Side | #MUNCLE	"maternal uncle"
Aunt - Mother's Side | #MAUNT	"maternal aunt"
Uncle - Father's Side | #PUNCLE	"paternal uncle"
Aunt - Father's Side | #PAUNT	"paternal aunt"
Sister | #SIS	"sister"
Brother | #BRO	"brother"
Daughter | #DAUC	"daughter"
Son | #SONC	"son"
Half Sister | #HSIS	"half-sister"
Half Brother | #HBRO	"half-brother"
Male Cousin | #COUSN "cousin"
Female Cousin | #COUSN	"cousin"
Nephew | #NEPHEW	"nephew"
Niece | #NIECE	"niece"
N/A | #SIGOTHR	"significant other"
{: .grid}

Note: There are [more codes](http://hl7.org/fhir/v3/FamilyMember/vs.html), specifically such as codes for adoptions on all of these. 


##### Support for exporting the existing data into PGHD

This option has minimal changes to the current User Interface of MyHealtheVet. The change would enable the Veteran to "Export your existing Family Health History to PGHD". 

The MVP of this would not enable the Veteran to see the data in PGHD, but where MyHealtheVet is the only application writing Family Member History into PGHD, the data there should be the same as already being displayed in MyHealthevet. There is risk that some application may be approved that does enable the Veteran to add or change, such as HealthHub or some third-party application.

The MVP would need to enable the Veteran to "Update" the data previously exported. Likely the MyHealtheVet would know that data had been exported, and thus after the Veteran has changed the Family Health History, would automatically change the PGHD equally. This ability to can be based on a query of PGHD for existing FamilyMemberHistory resources that would indicate a previously export, or we could record a Consent resource into PGHD to indicte agreement. NOTE: There would be failure-modes where the eVault and PGHD might get out-of-date.  

WARNING: the existing Family Health History User Interface (and database) can not support the fidelity of the FHIR Family Member History resource. So it is not advisable to make the existing user interface bi-directional. Meaning the current User Interface can not show the data as it appears in PGHD.

WARNING: the current Family Health History set of conditions (checkboxes) need to be mapped to SNOMED-CT specific codes. Where this mapping can be done strictly, there should be no problem. However it is unclear at this time if this mapping can be done with clinical accuracy. Note that when mapped, the FHIR specification allows for recording both the proper SNOMED-CT code and also the historic MyHealtheVet condition code.

##### Similar UI 

This option uses a similar UI to the current Family Member History, much like we did for Vitals. The user interface would be replicated and improved as minimal as possible.  Likely the one big change to the UI would be moving away from the current long list of checkboxes for conditions to something that could support the much larger number of conditions allowed by SNOMED-CT (over 1000 items). 

###### Export to start

Given some Veterans have recorded Family Health History, there could be an ability to export this data to start a new Family Member History. That is to say when a Veteran first uses the PGHD Family Member History, they are propted to initialize with the existing Family Health History data. This would only be offered the first time. This export would still have the SNOMED-CT code translation problem mentioned above.

1. Import just the Family Members structure, not the conditions each member has.
2. Import also the Conditions, but import them purely as displaynames with no attempt to convert to SNOMED-CT.
3. Import the Conditions and convert them to a SNOMED-CT mapped term. This will require a clinically relevant mapping approved by medical professionals.

Note: The old MHV Family Health History can not handle FHIR managed data. This is because the FHIR FamilyMemberHistory resource is more specific, and carry many more details. Thus one would not give a Veteran the impression that the old MHV Family Health History is showing the data in PGHD to prevent the Veteran from presuming that it does, and complaining that data has been lost.

###### BlueButton

It might be helpful to export PGHD information including FamilyMemberHistory into the BlueButton report. The current Family Health History export into the BlueButton report is similar to how this would look for FamilyMemberHistory data from PGHD. This text export is also similar to the current VCM way of handling the FamilyMemberHistory in PGHD.

##### Selecting Conditions

The CDC prototype proposed that the 92 Condition codes would be grouped into categories that would be the first level the user would select from. Each group has an "other", and the list of 17 groups allows for unknonw, and also user entered code. It is not obvious that SNOMED-CT was common use at the time this CDC Prototype was developed. 

[CDC Prototype Condition Groups](CDC-Conditions-SubSet.png "Conditions Groups")
* Cancer -> 24
* Clotting Disorder -> 4
* Dementia/Alzheimers
* Diabetes -> 10
* Gastrointestinal Disorder -> 8
* Heart Disease -> 5
* High Cholesterol -> 2
* Hypertension
* Kidney Disease -> 7
* Lung Disease -> 8
* Osteoporosis
* Psychological Disorder -> 15
* Septicemia
* Stroke/Brain Attack
* Sudden Death -> 4
* Unknown
* (user entered)

This grouping does not exist formally. This [grouping would be nice](https://chat.fhir.org/#narrow/stream/179202-terminology/topic/Layperson.20Conditions.20valueset), but it seems inappropriate that MyHealtheVet is looked to to provide this kind of clinical knowledge breakdown. Thus this seems a good opportunity for multiple ValueSets. With the top level valueSet being the groups, and a valueSet for each of those groups. Thus the management of the groups and the members in that group can be managed dynamically and not be fixed in application logic.

See the [SNOMED-CT subset for conditions](https://www.nlm.nih.gov/research/umls/Snomed/core_subset.html).
* 25,000+ codes, and changes often. Not lay person friendly terms.
* has 241 groups, but not lay person friendly groups

Recommendation to me is to use the [USA Edition of CMT release](https://www.nlm.nih.gov/research/umls/Snomed/cmt.html) ( 25,604 codes). 
Noted is that the SNOMED-CT terms do have a "lay person" display name for the code. Not sure how to get to them yet.
Mapping from [MyHealtheVet current Conditions to SNOMED-CT](https://docs.google.com/spreadsheets/d/1ZY6on5PU-MiYqjoJtkMAeky0wFIKZB1CZE3XtuAgDXA/edit?usp=sharing)

#### Additional features beyond MVP

* should have date-of-birth or age of the family member
* may have extension indication of twin (multiple-birth) using 
* may have extension indicate Race 
* may have extension indicate Ethnicity 
* may have extension indicate Adopted
* for each condition
  * condition.outcome should indicate the outcome of this condition
  * condition.onset[x] should indicate when this condition first manifested
  * condition.note may include a freetext note
* allow Veteran to enter their own Conditions (from their perspective)

### Background

This is the notes for the VA.MHV.familymemberhistory Profile

The specification here is 
* inspired by [CDC prototype](https://phgkb.cdc.gov/FHH/html/index.html)
* [Impact assessment of CDC family health assessment](https://pubmed.ncbi.nlm.nih.gov/25901453)
* could derive off of [QI-Core FamilyMemberHistory profile](https://hl7.org/fhir/us/qicore/StructureDefinition-qicore-familymemberhistory.html), but it is not clear that gives us anything useful  
* There is no profile of FamilyMemberHistory in us-core
* USCDI [v2](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#uscdi-v2) added Health Conserns and hint that family member is included. 
* USCDI [v3](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#draft-uscdi-v3) seems to be similar 
* Level [2](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#level-2) has it clear Family Health History 
* Cerner Millennium R4 has [support for FamilyMemberHistory](http://fhir.cerner.com/millennium/r4/clinical/summary/family-member-history/) 
  * extension for patient-Adopted (Boolean)
  
Some discussion notes
* could indication of twin (multiple-birth) using [http://hl7.org/fhir/R4/extension-family-member-history-genetics-sibling](http://hl7.org/fhir/R4/extension-family-member-history-genetics-sibling.html)
  * not clear this is the best match, as this requires a link to the 'other' sibling
  * where as the CDC prototype just wanted to know if this member was a MultiBirth
* could indicate Race and Ethnicity using [http://hl7.org/fhir/R4/extension-family-member-history-genetics-observation](http://hl7.org/fhir/R4/extension-family-member-history-genetics-observation.html)
  * not clear these are useful as they require the family-member to also be a Patient
  * these observations likely are contained so as to not confuse with a real patient
* age in decades -- no known valueSet for this, but it sure seems useful



