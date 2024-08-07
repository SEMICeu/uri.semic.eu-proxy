local _M = {}

_M.htmlmap = {
  --CCCEV
  [ "/m8g/bias" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Criterion.bias",
  [ "/m8g/confidentialityLevelType" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.confidentialityleveltype",
  [ "/m8g/constrains" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Constraint.constrains",
  [ "/m8g/Constraint" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Constraint",
  [ "/m8g/Criterion" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Criterion ",
  [ "/m8g/Evidence" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType",
  [ "/m8g/evidenceTypeClassification" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType.evidencetypeclassification",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType",
  [ "/m8g/EvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceTypeList",
  [ "/m8g/expressionOfExpectedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#InformationConcept.expressionofexpectedvalue",
  [ "/m8g/hasConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.hasconcept",
  [ "/m8g/hasEvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.hasevidencetypelist",
  [ "/m8g/hasQualifiedRelation" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.hasqualifiedrelation",
  [ "/m8g/hasRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.hasrequirement",
  [ "/m8g/hasSupportingEvidence" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.hassupportingevidence",
  [ "/m8g/InformationConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#InformationConcept",
  [ "/m8g/InformationRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#InformationRequirement",
  [ "/m8g/isDerivedFrom" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.isderivedfrom",
  [ "/m8g/isProvidedBy" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.isprovidedby",
  [ "/m8g/isRequirementOf" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement.isrequirementof",
  [ "/m8g/isSpecifiedIn" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType.isspecifiedin",
  [ "/m8g/issuingPlace" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType.issuingplace",
  [ "/m8g/providesValueFor" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#SupportedValue.providesvaluefor",
  [ "/m8g/query" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#SupportedValue.query",
  [ "/m8g/ReferenceFramework" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#ReferenceFramework",
  [ "/m8g/Requirement" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Requirement",  
  [ "/m8g/specifiesEvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceTypeList.specifiesevidencetype",
  [ "/m8g/SupportedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#SupportedValue",
  [ "/m8g/supportsConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.supportsconcept",
  [ "/m8g/supportsRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.supportsrequirement",
  [ "/m8g/supportsValue" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.supportsvalue",
  [ "/m8g/validityPeriod" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Evidence.validityperiod",
  [ "/m8g/validityPeriodConstraint" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#EvidenceType.validityperiodconstraint",
  [ "/m8g/value" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#SupportedValue.value",
  [ "/m8g/weight" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Criterion.weight",
  [ "/m8g/weightingConsiderationDescription" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Criterion.weightingconsiderationdescription",
  [ "/m8g/weightingType" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#Criterion.weightingtype",
  [ "/m8g/PeriodOfTime" ] = "https://semiceu.github.io/CCCEV/releases/2.1.0/#PeriodofTime",
  --CCCEV deprecated
  [ "/m8g/CriterionRequirement" ] = "https://semiceu.github.io/CCCEV/releases/1.00/core_evidence_and_core_criterion_vocabulary_version_1.0.0.pdf",
  [ "/m8g/hasCriterion" ] = "https://semiceu.github.io/CCCEV/releases/1.00/core_evidence_and_core_criterion_vocabulary_version_1.0.0.pdf",

  --CPSV-AP
  [ "/m8g/BusinessEvent" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#BusinessEvent",
  [ "/m8g/Channel" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Channel",  
  [ "/m8g/ConcessionContract" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#ConcessionContract",
  [ "/m8g/Cost" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Cost",
  [ "/m8g/cpsvap" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/",
  [ "/m8g/currency" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Cost.currency",
  [ "/m8g/Event" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Event",
  [ "/m8g/establishedUnder" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#ServiceConcessionContract.establishedunder",
  [ "/m8g/fulfils" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Requirement.fulfils",
  [ "/m8g/hasChannel" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.haschannel",
  [ "/m8g/hasCompetentAuthority" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.hascompetentauthority",
  [ "/m8g/hasContractingAuthority" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#ServiceConcessionContract.hascontractingauthority",
  [ "/m8g/hasCost" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.hascost",
  [ "/m8g/hasEconomicOperator" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#ServiceConcessionContract.haseconomicoperator",
  [ "/m8g/hasInputType" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.hasinputtype",
  [ "/m8g/hasLegalResource" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.haslegalresource",
  [ "/m8g/hasRelatedService" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Event.hasrelatedservice",
  [ "/m8g/hasValue" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Cost.hasvalue",
  [ "/m8g/holdsRequirement" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.holdsrequirement",
  [ "/m8g/ifAccessedThrough" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Cost.ifaccessedthrough",
  [ "/m8g/isClassifiedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.isclassifiedby",
  [ "/m8g/isDefinedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Cost.isdefinedby",
  [ "/m8g/isDescribedAt" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.isdescribedat",
  [ "/m8g/isGroupedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.isgroupedby",
  [ "/m8g/LifeEvent" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#LifeEvent",
  [ "/m8g/Output" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Output",
  [ "/m8g/ownedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Channel.ownedby",
  [ "/m8g/Participation" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Participation",
  [ "/m8g/processingTime" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#Channel.processingtime",
  [ "/m8g/relatedService" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.relatedservice",
  [ "/m8g/sector" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.sector",
  [ "/m8g/ServiceConcessionContract" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#ServiceConcessionContract",
  [ "/m8g/thematicArea" ] = "https://semiceu.github.io/CPSV-AP/releases/3.2.0/#PublicService.thematicarea",
  --CPSV-AP deprecated
  [ "/m8g/hasContactPoint" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20contact%20point",
  [ "/m8g/playsRole" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Agent%3Aplays%20role",
  
  --CPEV
  [ "/m8g/accessibility" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.accessibility",
  [ "/m8g/audience" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.audience",
  [ "/m8g/eventNumber" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.eventnumber",
  [ "/m8g/eventStatus" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.eventstatus",
  [ "/m8g/expectedNumberOfParticipants" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.expectednumberofparticipants",
  [ "/m8g/hasNextEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.hasnextevent",
  [ "/m8g/hasParticipant" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#Participation.hasparticipant",
  [ "/m8g/hasParticipation" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.hasparticipation",
  [ "/m8g/hasPreviousEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.haspreviousevent",
  [ "/m8g/format" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.format",
  [ "/m8g/parentEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.parentevent",
  [ "/m8g/participates" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#Agent.participates",
  [ "/m8g/PublicEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent",
  [ "/m8g/registrationPage" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.registrationpage",
  [ "/m8g/subEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.subevent",
  [ "/m8g/role" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#Participation.role",

  --CPOV
  [ "/m8g/contactPage" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.contactpage",
  [ "/m8g/ContactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint",
  [ "/m8g/contactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#PublicOrganisation.contactpoint",
  [ "/m8g/email" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.hasemail",
  [ "/m8g/frequency" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#TemporalEntity.frequency",
  [ "/m8g/hasFormalFramework" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ChangeEvent.hasformalframework",
  [ "/m8g/hoursAvailable" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.availabilityrestriction",
  [ "/m8g/ImageObject" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ImageObject",
  [ "/m8g/logo" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#PublicOrganisation.logo",
  [ "/m8g/openingHours" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.openinghours",
  [ "/m8g/PublicOrganisation" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#PublicOrganisation",
  [ "/m8g/specialOpeningHoursSpecification" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.availabilityRestriction",
  [ "/m8g/telephone" ] = "https://semiceu.github.io/CPOV/releases/2.1.1/#ContactPoint.hastelephone",
  --CPOV deprecated
  [ "/m8g/dayOfWeek" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification%3Aday%20of%20week",
  [ "/m8g/OpeningHoursSpecification" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification",
  [ "/m8g/validFrom" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification%3Avalid%20from",
  [ "/m8g/validThrough" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification%3Avalid%20through",

  --Core Location
  [ "/m8g/address" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Resource.address",
  [ "/m8g/adminUnit" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Address.administrativeunit",
  [ "/m8g/AdminUnit" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#AdministrativeUnit",
  [ "/m8g/code" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#AdministrativeUnit.code",
  [ "/m8g/coordinates" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Geometry.coordinates",
  [ "/m8g/crs" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Geometry.crs",
  [ "/m8g/geometryType" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Geometry.geometrytype",
  [ "/m8g/hasLocatorDesignator" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Address.haslocatordesignator",
  [ "/m8g/latitude" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Geometry.latitude",
  [ "/m8g/level" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#AdministrativeUnit.level",
  [ "/m8g/location" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Resource.location",
  [ "/m8g/longitude" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Geometry.longitude",
  [ "/m8g/registeredAddress" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.1.0/#Resource.registeredaddress",
  [ "/w3c/ns/locn" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/w3c/",
  --Core Location deprecated
  [ "/m8g/core-location-ap" ] = "",

  --Core Person
  [ "/m8g/birthDate" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.dateofbirth",
  [ "/m8g/Date" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Date",
  [ "/m8g/deathDate" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.dateofdeath",
  [ "/m8g/domicile" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.domicile",
  [ "/m8g/gender" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.gender",
  [ "/m8g/GenericDate" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Genericdate",
  [ "/m8g/matronymicName" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.matronymicname",
  [ "/m8g/sex" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.sex",
  [ "/w3c/ns/person" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/w3c/",
  [ "/p4s/xml/PERSON" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person",  
  --Core Person deprecated
  [ "/m8g/baptismalName" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.0/#Person%3Abaptismal%20name",

  --Core Business
  [ "/m8g/AccountingDocument" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.2.0/#AccountingDocument",
  [ "/m8g/hasAccountingDocument" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.2.0/#LegalEntity.hasaccountingdocument",
  [ "/m8g/identifies" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.2.0/#Identifier.identifies",
  [ "/m8g/registrationDate" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.2.0/#LegalEntity.registrationdate",
  [ "/w3c/ns/legal" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.2.0",

  --r5r DCAT-AP
  [ "/r5r/applicableLegislation" ] = "https://semiceu.github.io/DCAT-AP/r5r/releases/3.0.0/#applicableLegislation",
  [ "/r5r/hvdCategory" ] = "https://semiceu.github.io/DCAT-AP/r5r/releases/3.0.0/#hvdCategory",
  [ "/r5r/availability" ] = "https://semiceu.github.io/DCAT-AP/r5r/releases/3.0.0/#availability",
  [ "/r5r/availability/temporary" ] = "http://publications.europa.eu/resource/authority/planned-availability/TEMPORARY",
  [ "/r5r/availability/experimental" ] = "http://publications.europa.eu/resource/authority/planned-availability/EXPERIMENTAL",
  [ "/r5r/availability/available" ] = "http://publications.europa.eu/resource/authority/planned-availability/AVAILABLE",
  [ "/r5r/availability/stable" ] = "http://publications.europa.eu/resource/authority/planned-availability/STABLE",

  --930 GeoDCAT-AP
  ["/930/custodian"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#custodian",
  ["/930/distributor"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#distributor",
  ["/930/originator"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#originator",
  ["/930/principalInvestigator"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#principalInvestigator",
  ["/930/processor"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#processor",
  ["/930/referenceSystem"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#referenceSystem",
  ["/930/resourceProvider"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#resourceProvider",
  ["/930/resourceType"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#resourceType",
  ["/930/serviceCategory"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#serviceCategory",
  ["/930/serviceProtocol"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#serviceProtocol",
  ["/930/serviceType"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#serviceType",
  ["/930/spatialResolutionAsText"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#spatialResolutionAsText",
  ["/930/topicCategory"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#topicCategory",
  ["/930/user"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#user",
  ["/930/spatialResolutionAsAngularDistance"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#instances-of-metric",
  ["/930/spatialResolutionAsDistance"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#instances-of-metric",
  ["/930/spatialResolutionAsScale"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#instances-of-metric",
  ["/930/spatialResolutionAsVerticalDistance"] = "https://semiceu.github.io/GeoDCAT-AP/930/releases/3.0.0/#instances-of-metric",
  
  --it6 MLDCAT-AP
  ["/it6/MachineLearningModel"] = "https://semiceu.github.io/MLDCAT-AP/releases/2.0.0/#MachineLearningModel",
  --REST
  [ "/m8g/hasAddress" ] = " ",
  [ "/m8g/PublicServiceDataset" ] = " ",
  [ "/w3c/ns/adms" ] = "https://semiceu.github.io/ADMS/releases/2.00"

  
  }

return _M

