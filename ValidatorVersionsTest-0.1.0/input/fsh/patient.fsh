ValueSet: MultiVersionTestValueSet
Id: multi-version-test-valueset
* include http://hl7.org/fhir/administrative-gender#male

Extension: MultiVersionTestExtension
Id: multi-version-test-extension
* value[x] only Coding
* valueCoding from MultiVersionTestValueSet (required)

Profile: MultiVersionTestPatient
Parent: Patient
Id: multi-version-test-patient
* active 0..0
* extension contains MultiVersionTestExtension  named test-extension 1..1

Instance: PatientExample
InstanceOf: MultiVersionTestPatient
* extension[test-extension].valueCoding = http://hl7.org/fhir/administrative-gender#male