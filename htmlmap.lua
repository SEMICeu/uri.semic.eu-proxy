local _M = {}

_M.htmlmap = {

  [ "/m8g/bias" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Abias",
  [ "/m8g/BusinessEvent" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Business%20Event",
  [ "/m8g/Channel" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Channel",
  [ "/m8g/confidentialityLevelType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Aconfidentiality%20level%20type",
  [ "/m8g/constrains" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Constraint%3Aconstrains",
  [ "/m8g/Constraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Constraint",
  [ "/m8g/Cost" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Cost",
  [ "/m8g/cpsvap" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Criterion" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion ",
  [ "/m8g/CriterionRequirement" ] = " ",
  [ "/m8g/currency" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Cost%3Acurrency",
  [ "/m8g/Event" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Event",
  [ "/m8g/Evidence" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type",
  [ "/m8g/evidenceTypeClassification" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Aevidence%20type%20classification",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type",
  [ "/m8g/EvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%20List",
  [ "/m8g/expressionOfExpectedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept%3Aexpression%20of%20expected%20value",
  [ "/m8g/hasAddress" ] = " ",
  [ "/m8g/hasChannel" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20channel",
  [ "/m8g/hasCompetentAuthority" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20competent%20authority",
  [ "/m8g/hasConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20concept",
  [ "/m8g/hasContactPoint" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20contact%20point",
  [ "/m8g/hasCost" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20cost",
  [ "/m8g/hasCriterion" ] = " ",
  [ "/m8g/hasEvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20evidence%20type%20list",
  [ "/m8g/hasLegalResource" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20legal%20resource",
  [ "/m8g/hasParticipation" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ahas%20participation",
  [ "/m8g/hasQualifiedRelation" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20qualified%20relation",
  [ "/m8g/hasRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20requirement",
  [ "/m8g/hasSupportingEvidence" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20supporting%20evidence",
  [ "/m8g/ifAccessedThrough" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Cost%3Aif%20accessed%20through",
  [ "/m8g/InformationConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept",
  [ "/m8g/InformationRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Requirement",
  [ "/m8g/isClassifiedBy" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20classified%20by",
  [ "/m8g/isDefinedBy" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Cost%3Ais%20defined%20by",
  [ "/m8g/isDerivedFrom" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ais%20derived%20from",
  [ "/m8g/isDescribedAt" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20described%20at",
  [ "/m8g/isGroupedBy" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Ais%20grouped%20by",
  [ "/m8g/isProvidedBy" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Ais%20provided%20by",
  [ "/m8g/isRequirementOf" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ais%20requirement%20of",
  [ "/m8g/isSpecifiedIn" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Ais%20specified%20in",
  [ "/m8g/issuingPlace" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Aissuing%20place",
  [ "/m8g/LifeEvent" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Life%20Event",
  [ "/m8g/Output" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Output",
  [ "/m8g/ownedBy" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Channel%3Aowned%20by",
  [ "/m8g/Participation" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Participation",
  [ "/m8g/playsRole" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Agent%3Aplays%20role",
  [ "/m8g/processingTime" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Channel%3Aprocessing%20time",
  [ "/m8g/providesValueFor" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aprovides%20value%20for",
  [ "/m8g/PublicOrganisation" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Public%20Organisation",
  [ "/m8g/PublicServiceDataset" ] = " ",
  [ "/m8g/query" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aquery",
  [ "/m8g/ReferenceFramework" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Reference%20Framework",
  [ "/m8g/Requirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement",
  [ "/m8g/role" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Participation%3Arole",
  [ "/m8g/sector" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Asector",
  [ "/m8g/specifiesEvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#specifiesEvidenceType",
  [ "/m8g/SupportedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value",
  [ "/m8g/supportsConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20concept",
  [ "/m8g/supportsRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20requirement",
  [ "/m8g/supportsValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20value",
  [ "/m8g/thematicArea" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Athematic%20area",
  [ "/m8g/validityPeriod" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Avalidity%20period",
  [ "/m8g/validityPeriodConstraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Avalidity%20period%20constraint",
  [ "/m8g/validityPeriod" ] = "https://semiceu.github.io/CCCEV/releases/2.00-draft/#Evidence%3Avalidity%20period",
  [ "/m8g/value" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Avalue",
  [ "/m8g/weight" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweight",
  [ "/m8g/weightingConsiderationDescription" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20consideration%20description",
  [ "/m8g/weightingType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20type",
  [ "/r5r/availability" ] = "https://github.com/SEMICeu/DCAT-AP/raw/2.1.0-draft/releases/2.1.0/dcat-ap_2.1.0.rdf",
  [ "/r5r/availability/temporary" ] = "http://publications.europa.eu/resource/authority/planned-availability/TEMPORARY",
  [ "/r5r/availability/experimental" ] = "http://publications.europa.eu/resource/authority/planned-availability/EXPERIMENTAL",
  [ "/r5r/availability/available" ] = "http://publications.europa.eu/resource/authority/planned-availability/AVAILABLE",
  [ "/r5r/availability/stable" ] = "http://publications.europa.eu/resource/authority/planned-availability/STABLE",
  [ "/p4s/xml/PERSON" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person",
  [ "/m8g/adminUnit" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Address%3Aadministrative%20unit",
  [ "/m8g/AdminUnit" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Administrative%20Unit",
  [ "/m8g/code" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Administrative%20Unit%3Acode",
  [ "/m8g/level" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Administrative%20Unit%3Alevel",
  [ "/m8g/coordinates" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Geometry%3Acoordinates",
  [ "/m8g/address" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Resource%3Aaddress",
  [ "/m8g/location" ] = "https://semiceu.github.io/Core-Location-Vocabulary/releases/2.00/#Resource%3Alocation",
  [ "/m8g/birthDate" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person%3Adate%20of%20birth",
  [ "/m8g/deathDate" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person%3Adate%20of%20death",
  [ "/m8g/domicile" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person%3Adomicile",
  [ "/m8g/gender" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person%3Agender",
  [ "/m8g/Date" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/context/core-person.jsonld",
  [ "/m8g/matronymicName" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person%3Amatronymic%20name",
  [ "/m8g/hasFormalFramework" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Change%20Event%3Ahas%20formal%20framework",
  [ "/m8g/ContactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Contact%20Point",
  [ "/m8g/hoursAvailable" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Contact%20Point%3Aavailability%20restriction",
  [ "/m8g/email" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Contact%20Point%3Ahas%20email",
  [ "/m8g/telephone" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Contact%20Point%3Ahas%20telephone",
  [ "/m8g/openingHours" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Contact%20Point%3Aopening%20hours",
  [ "/m8g/ImageObject" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Image%20Object",
  [ "/m8g/OpeningHoursSpecification" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Opening%20Hours%20Specification",
  [ "/m8g/dayOfWeek" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Opening%20Hours%20Specification%3Aday%20of%20week",
  [ "/m8g/validFrom" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Opening%20Hours%20Specification%3Avalid%20from",
  [ "/m8g/validThrough" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Opening%20Hours%20Specification%3Avalid%20through",
  [ "/m8g/contactPoint" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Public%20Organisation%3Acontact%20point",
  [ "/m8g/logo" ] = "https://semiceu.github.io/CPOV/releases/2.00/#Public%20Organisation%3Alogo",
  [ "/m8g/identifies" ] = "https://semiceu.github.io/Core-Business-Vocabulary/releases/2.00/#Identifier%3Aidentifies",
  [ "/m8g/hasValue" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Cost%3Avalue",
  [ "/m8g/contactPage" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Contact%20Point%3Acontact%20page",
  [ "/m8g/PeriodOfTime" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Period%20of%20Time",
  [ "/m8g/specialOpeningHoursSpecification" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Channel%3Aavailability%20restriction",
  [ "/m8g/ConcessionContract" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract",
  [ "/m8g/establishedUnder" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Aestablished%20under",
  [ "/m8g/hasContractingAuthority" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Ahas%20contracting%20authority",
  [ "/m8g/hasEconomicOperator" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Concession%20Contract%3Ahas%20economic%20operator",
  [ "/m8g/holdsRequirement" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Public%20Service%3Aholds%20requirement",
  [ "/m8g/fulfils" ] = "https://catalogue-of-services-isa.github.io/CPSV-AP/releases/3.0.0/#Requirement%3Afulfils"
  }

return _M

