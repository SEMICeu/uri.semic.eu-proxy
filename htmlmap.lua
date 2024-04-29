local _M = {}

_M.htmlmap = {
  --CCCEV
  [ "/m8g/bias" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Abias",
  [ "/m8g/confidentialityLevelType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Aconfidentiality%20level%20type",
  [ "/m8g/constrains" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Constraint%3Aconstrains",
  [ "/m8g/Constraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Constraint",
  [ "/m8g/Criterion" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion ",
  [ "/m8g/CriterionRequirement" ] = "https://semiceu.github.io/CCCEV/releases/1.00/core_evidence_and_core_criterion_vocabulary_version_1.0.0.pdf",
  [ "/m8g/Evidence" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type",
  [ "/m8g/evidenceTypeClassification" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Aevidence%20type%20classification",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type",
  [ "/m8g/EvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%20List",
  [ "/m8g/expressionOfExpectedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept%3Aexpression%20of%20expected%20value",
  [ "/m8g/hasConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20concept",
  [ "/m8g/hasCriterion" ] = "https://semiceu.github.io/CCCEV/releases/1.00/core_evidence_and_core_criterion_vocabulary_version_1.0.0.pdf",
  [ "/m8g/hasEvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20evidence%20type%20list",
  [ "/m8g/hasQualifiedRelation" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20qualified%20relation",
  [ "/m8g/hasRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20requirement",
  [ "/m8g/hasSupportingEvidence" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20supporting%20evidence",
  [ "/m8g/InformationConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept",
  [ "/m8g/InformationRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Requirement",
  [ "/m8g/isDerivedFrom" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ais%20derived%20from",
  [ "/m8g/isProvidedBy" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Ais%20provided%20by",
  [ "/m8g/isRequirementOf" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ais%20requirement%20of",
  [ "/m8g/isSpecifiedIn" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Ais%20specified%20in",
  [ "/m8g/issuingPlace" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Aissuing%20place",
  [ "/m8g/providesValueFor" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aprovides%20value%20for",
  [ "/m8g/query" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aquery",
  [ "/m8g/ReferenceFramework" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Reference%20Framework",
  [ "/m8g/Requirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement",  
  [ "/m8g/specifiesEvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#specifiesEvidenceType",
  [ "/m8g/SupportedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value",
  [ "/m8g/supportsConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20concept",
  [ "/m8g/supportsRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20requirement",
  [ "/m8g/supportsValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20value",
  [ "/m8g/validityPeriod" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Avalidity%20period",
  [ "/m8g/validityPeriodConstraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Avalidity%20period%20constraint",
  [ "/m8g/value" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Avalue",
  [ "/m8g/weight" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweight",
  [ "/m8g/weightingConsiderationDescription" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20consideration%20description",
  [ "/m8g/weightingType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20type",
  [ "/m8g/PeriodOfTime" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Period%20of%20Time",

  --CPSV-AP
  [ "/m8g/BusinessEvent" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Business%20Event",
  [ "/m8g/Channel" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Channel",  
  [ "/m8g/ConcessionContract" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract",
  [ "/m8g/Cost" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Cost",
  [ "/m8g/cpsvap" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/currency" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Cost%3Acurrency",
  [ "/m8g/Event" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Event",
  [ "/m8g/establishedUnder" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Aestablished%20under",
  [ "/m8g/fulfils" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Requirement%3Afulfils",
  [ "/m8g/hasChannel" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20channel",
  [ "/m8g/hasCompetentAuthority" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20competent%20authority",
  [ "/m8g/hasContactPoint" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20contact%20point",
  [ "/m8g/hasContractingAuthority" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Ahas%20contracting%20authority",
  [ "/m8g/hasCost" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20cost",
  [ "/m8g/hasEconomicOperator" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Ahas%20economic%20operator",
  [ "/m8g/hasInputType" ] = "https://semiceu.github.io/CPSV-AP/releases/3.1.0/#Public%20Service%3Ahas%20input%20type",
  [ "/m8g/hasLegalResource" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20legal%20resource",
  [ "/m8g/hasRelatedService" ] = "https://semiceu.github.io/CPSV-AP/releases/3.1.0/#Event%3Ahas%20related%20service",
  [ "/m8g/hasValue" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Cost%3Avalue",
  [ "/m8g/holdsRequirement" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Aholds%20requirement",
  [ "/m8g/ifAccessedThrough" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Cost%3Aif%20accessed%20through",
  [ "/m8g/isClassifiedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20classified%20by",
  [ "/m8g/isDefinedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Cost%3Ais%20defined%20by",
  [ "/m8g/isDescribedAt" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20described%20at",
  [ "/m8g/isGroupedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20grouped%20by",
  [ "/m8g/LifeEvent" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Life%20Event",
  [ "/m8g/Output" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Output",
  [ "/m8g/ownedBy" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Channel%3Aowned%20by",
  [ "/m8g/Participation" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Participation",
  [ "/m8g/playsRole" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Agent%3Aplays%20role",
  [ "/m8g/processingTime" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Channel%3Aprocessing%20time",
  [ "/m8g/relatedService" ] = "https://semiceu.github.io/CPSV-AP/releases/3.1.0/#Public%20Service%3Arelated%20service",
  [ "/m8g/sector" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Asector",
  [ "/m8g/ServiceConcessionContract" ] = "https://semiceu.github.io/CPSV-AP/releases/3.1.0/#Service%20Concession%20Contract",
  [ "/m8g/thematicArea" ] = "https://semiceu.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Athematic%20area",
  
  --CPEV
  [ "/m8g/accessibility" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Aaccessibility",
  [ "/m8g/audience" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Aaudience",
  [ "/m8g/eventNumber" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3AeventNumber",
  [ "/m8g/eventStatus" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.eventstatus",
  [ "/m8g/expectedNumberOfParticipants" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.1.0/#PublicEvent.expectednumberofparticipants",
  [ "/m8g/hasNextEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Ahas%20next%20event",
  [ "/m8g/hasParticipant" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Participation%3AhasParticipant",
  [ "/m8g/hasParticipation" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Ahas%20participation",
  [ "/m8g/hasPreviousEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Ahas%20previous%20event",
  [ "/m8g/format" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Aformat",
  [ "/m8g/parentEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Aparent%20event",
  [ "/m8g/participates" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Agent%3Aparticipates",
  [ "/m8g/PublicEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event",
  [ "/m8g/registrationPage" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Aregistration%20page",
  [ "/m8g/subEvent" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Public%20Event%3Asub%20event",
  [ "/m8g/role" ] = "https://semiceu.github.io/Core-Public-Event-Vocabulary/releases/1.0.0/#Participation%3Arole",

  --CPOV
  [ "/m8g/contactPage" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AcontactPage",
  [ "/m8g/ContactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint",
  [ "/m8g/contactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Public%20Organisation%3Acontact%20point",
  [ "/m8g/dayOfWeek" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification%3Aday%20of%20week",
  [ "/m8g/email" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AhasEmail",
  [ "/m8g/frequency" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Temporal%20Entity%3Afrequency",
  [ "/m8g/hasFormalFramework" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Change%20Event%3Ahas%20formal%20framework",
  [ "/m8g/hoursAvailable" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AavailabilityRestriction",
  [ "/m8g/ImageObject" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Image%20Object",
  [ "/m8g/logo" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Public%20Organisation%3Alogo",
  [ "/m8g/openingHours" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AopeningHours",
  [ "/m8g/OpeningHoursSpecification" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Opening%20Hours%20Specification",
  [ "/m8g/PublicOrganisation" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#Public%20Organisation",
  [ "/m8g/specialOpeningHoursSpecification" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AavailabilityRestriction",
  [ "/m8g/telephone" ] = "https://semiceu.github.io/CPOV/releases/2.1.0/#ContactPoint%3AhasTelephone",
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
  [ "/m8g/deathDate" ] = "hhttps://semiceu.github.io/Core-Person-Vocabulary/releases/2.1.1/#Person.dateofdeath",
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
  [ "/r5r/applicableLegislation" ] = "https://semiceu.github.io/uri.semic.eu-generated/r5r/release/3.0.0/#applicableLegislation",
  [ "/r5r/availability" ] = "https://semiceu.github.io/uri.semic.eu-generated/r5r/release/3.0.0/#availability",
  [ "/r5r/availability/available" ] = "http://publications.europa.eu/resource/authority/planned-availability/AVAILABLE",
  [ "/r5r/availability/experimental" ] = "http://publications.europa.eu/resource/authority/planned-availability/EXPERIMENTAL",
  [ "/r5r/availability/stable" ] = "http://publications.europa.eu/resource/authority/planned-availability/STABLE",
  [ "/r5r/availability/temporary" ] = "http://publications.europa.eu/resource/authority/planned-availability/TEMPORARY",
  [ "/r5r/hvdCategory" ] = "https://semiceu.github.io/uri.semic.eu-generated/r5r/release/3.0.0/#hvdCategory",

  --REST
  [ "/m8g/hasAddress" ] = " ",
  [ "/m8g/PublicServiceDataset" ] = " ",
  [ "/w3c/ns/adms" ] = "https://semiceu.github.io/ADMS/releases/2.00"

  
  }

return _M

