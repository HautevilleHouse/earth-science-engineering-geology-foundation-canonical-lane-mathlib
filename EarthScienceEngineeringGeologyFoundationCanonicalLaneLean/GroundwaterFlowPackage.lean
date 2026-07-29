import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GroundwaterFlowPackage where
  darcyLaw : Prop
  hydraulicConductivity : Prop
  storageCoefficient : Prop
  flowEquation : Prop

structure GroundwaterFlowEvidence (G : GroundwaterFlowPackage) where
  darcyLawClosed : G.darcyLaw
  hydraulicConductivityClosed : G.hydraulicConductivity
  storageCoefficientClosed : G.storageCoefficient
  flowEquationClosed : G.flowEquation

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.darcyLaw ∧ G.hydraulicConductivity ∧ G.storageCoefficient ∧ G.flowEquation

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage)
    (E : GroundwaterFlowEvidence G) : GroundwaterFlowClosed G := by
  exact And.intro E.darcyLawClosed
    (And.intro E.hydraulicConductivityClosed
      (And.intro E.storageCoefficientClosed E.flowEquationClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse