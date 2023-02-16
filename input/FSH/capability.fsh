Instance: MHVcapabilities
InstanceOf: CapabilityStatement
Usage: #definition
* description = "CapabilityStatement prototype for MHV as a FHIR Client"
* name = "MHV_uses_PGHD"
* title = "This indicates how MHV uses PGHD"
* status = #active
* experimental = false
* date = "2022-10-27"
* kind = #instance
//* kind = #requirements
* implementation
  * description = "MyHealtheVet"
  * url = "https://www.myhealth.va.gov/"
* fhirVersion = #4.0.1
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "MHV queries the PGHD endpoint."
  * security
    * cors = false
    * description = "Security is system level, PGHD presumes MHV properly handles user (as patient) rights"
  * resource[+]
    * type = #Observation
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.bloodPressure"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.bloodSugar"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.bodyTemperature"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.bodyWeight"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.heartRate"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.pain"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.bloodOxygenSat"
    * supportedProfile[+] = "https://johnmoehrke.github.io/MHV-PGHD/StructureDefinition/VA.MHV.respirationRate"
    * documentation = "MHV [PGHD use](https://johnmoehrke.github.io/MHV-PGHD/index.html)"
    * interaction[+].code = #search-type
    * interaction[+].code = #read
    * interaction[+].code = #create
    * searchParam[+]
      * name = "patient.identifier"
      * type = #token
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "_sort"
      * type = #string
    * searchParam[+]
      * name = "_count"
      * type = #number
    * searchParam[+]
      * name = "_pretty"
      * type = #string
    * searchParam[+]
      * name = "_format"
      * type = #uri
  * interaction.code = #search-system
