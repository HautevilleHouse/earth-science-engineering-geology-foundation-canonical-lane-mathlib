import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure StratigraphyPackage where
  targetRegion : String
  stratigraphicColumns : Prop
  layerThickness : Prop
  continuityAcrossFaults : Prop
  correlationScore : Float

structure StratigraphyEvidence (S : StratigraphyPackage) where
  stratigraphicColumnsClosed : S.stratigraphicColumns
  layerThicknessClosed : S.layerThickness
  continuityAcrossFaultsClosed : S.continuityAcrossFaults

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.stratigraphicColumns ∧ S.layerThickness ∧ S.continuityAcrossFaults

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage) (E : StratigraphyEvidence S) :
    StratigraphyClosed S := by
  exact And.intro E.stratigraphicColumnsClosed (And.intro E.layerThicknessClosed E.continuityAcrossFaultsClosed)

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse