local _M = {}

_M.htmlmap = {
  [ "/m8g/bias" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Abias",
  [ "/m8g/BusinessEvent" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Channel" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/confidentialityLevelType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Aconfidentiality%20level%20type",
  [ "/m8g/Constraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Constraint",
  [ "/m8g/Cost" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/cpsvap" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Criterion" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion ",
  [ "/m8g/CriterionRequirement" ] = " ",
  [ "/m8g/currency" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Event" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Evidence" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence",
  [ "/m8g/EvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type",
  [ "/m8g/evidenceTypeClassification" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#evidenceTypeClassification",
  [ "/m8g/EvidenceTypeList" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%20List",
  [ "/m8g/expressionOfExpectedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept%3Aexpression%20of%20expected%20value",
  [ "/m8g/hasAddress" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasChannel" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasCompetentAuthority" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasContactPoint" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasCost" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasCriterion" ] = " ",
  [ "/m8g/hasLegalResource" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasParticipation" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/hasQualifiedRelation" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20qualified%20relation",
  [ "/m8g/hasRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ahas%20requirement",
  [ "/m8g/ifAccessedThrough" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/InformationConcept" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Concept",
  [ "/m8g/InformationRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Information%20Requirement",
  [ "/m8g/isClassifiedBy" ] = " ",
  [ "/m8g/isDefinedBy" ] = " ",
  [ "/m8g/isDescribedAt" ] = " ",
  [ "/m8g/isGroupedBy" ] = " ",
  [ "/m8g/isRequirementOf" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement%3Ais%20requirement%20of",
  [ "/m8g/isSpecifiedIn" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#isSpecifiedIn",
  [ "/m8g/LifeEvent" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Output" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/ownedBy" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/Participation" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/playsRole" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/processingTime" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/providesValueFor" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aprovides%20value%20for",
  [ "/m8g/PublicOrganisation" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/PublicServiceDataset" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/query" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Aquery",
  [ "/m8g/ReferenceFramework" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Reference%20Framework",
  [ "/m8g/Requirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Requirement",
  [ "/m8g/role" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/sector" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/specifiesEvidenceType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#specifiesEvidenceType",
  [ "/m8g/SupportedValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value",
  [ "/m8g/supportsRequirement" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20requirement",
  [ "/m8g/supportsValue" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%3Asupports%20value",
  [ "/m8g/thematicArea" ] = "https://github.com/catalogue-of-services-isa/CPSV-AP/tree/master/releases/2.2.1",
  [ "/m8g/validityPeriod" ] = "https://semiceu.github.io/CCCEV/releases/2.00-draft/#Evidence%3Avalidity%20period",
  [ "/m8g/validityPeriodConstraint" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Evidence%20Type%3Avalidity%20period%20constraint",
  [ "/m8g/value" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Supported%20Value%3Avalue",
  [ "/m8g/weight" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweight",
  [ "/m8g/weightingConsiderationDescription" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20consideration%20description",
  [ "/m8g/weightingType" ] = "https://semiceu.github.io/CCCEV/releases/2.00/#Criterion%3Aweighting%20type",
  [ "/r5r/availability" ] = "https://github.com/SEMICeu/DCAT-AP/raw/2.1.0-draft/releases/2.1.0/dcat-ap_2.1.0.rdf",
  [ "/r5r/availability/temporary" ] = "http://publications.europa.eu/resource/authority/planned-availability/TEMPORARY",
  [ "/r5r/availability/experimental" ] = "http://publications.europa.eu/resource/authority/planned-availability/EXPERIMENTAL",
  [ "/r5r/availability/available" ] = "http://publications.europa.eu/resource/authority/planned-availability/AVAILABLE",
  [ "/r5r/availability/stable" ] = "http://publications.europa.eu/resource/authority/planned-availability/STABLE",
  [ "/p4s/xml/PERSON" ] = "https://semiceu.github.io/Core-Person-Vocabulary/releases/2.00/#Person"

  }

return _M

