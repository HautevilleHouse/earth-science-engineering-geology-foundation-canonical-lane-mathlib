import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GeotechnicalInvestigationPackage where
  siteCharacterization : Prop
  samplingMethods : Prop
  inSituTesting : Prop
  laboratoryTesting : Prop

structure GeotechnicalInvestigationEvidence (G : GeotechnicalInvestigationPackage) where
  siteCharacterizationClosed : G.siteCharacterization
  samplingMethodsClosed : G.samplingMethods
  inSituTestingClosed : G.inSituTesting
  laboratoryTestingClosed : G.laboratoryTesting

def GeotechnicalInvestigationClosed (G : GeotechnicalInvestigationPackage) : Prop :=
  G.siteCharacterization ∧ G.samplingMethods ∧ G.inSituTesting ∧ G.laboratoryTesting

theorem geotechnical_investigation_closed_from_evidence
    (G : GeotechnicalInvestigationPackage) (E : GeotechnicalInvestigationEvidence G) :
    GeotechnicalInvestigationClosed G := by
  exact And.intro E.siteCharacterizationClosed
    (And.intro E.samplingMethodsClosed
      (And.intro E.inSituTestingClosed E.laboratoryTestingClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse