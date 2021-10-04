ValueSet: MultiVersionTestValueSet
Id: multi-version-test-valueset
* include http://hl7.org/fhir/administrative-gender#female

Extension: MultiVersionTestExtension
Id: multi-version-test-extension
* value[x] only CodeableConcept
* valueCodeableConcept from MultiVersionTestValueSet (required)

Profile: MultiVersionTestPatient
Parent: Patient
Id: multi-version-test-patient
* active 1..1
* extension contains MultiVersionTestExtension  named test-extension 1..1

Instance: PatientExample
InstanceOf: MultiVersionTestPatient
* active = true
* extension[test-extension].valueCodeableConcept.coding = http://hl7.org/fhir/administrative-gender#female