import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure FoundationEngineeringPackage where
  shallowFoundation : Prop
  deepFoundation : Prop
  settlementAnalysis : Prop
  loadTest : Prop

structure FoundationEngineeringEvidence (F : FoundationEngineeringPackage) where
  shallowFoundationClosed : F.shallowFoundation
  deepFoundationClosed : F.deepFoundation
  settlementAnalysisClosed : F.settlementAnalysis
  loadTestClosed : F.loadTest

def FoundationEngineeringClosed (F : FoundationEngineeringPackage) : Prop :=
  F.shallowFoundation ∧ F.deepFoundation ∧ F.settlementAnalysis ∧ F.loadTest

theorem foundation_engineering_closed_from_evidence
    (F : FoundationEngineeringPackage) (E : FoundationEngineeringEvidence F) :
    FoundationEngineeringClosed F := by
  exact And.intro E.shallowFoundationClosed
    (And.intro E.deepFoundationClosed
      (And.intro E.settlementAnalysisClosed E.loadTestClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse