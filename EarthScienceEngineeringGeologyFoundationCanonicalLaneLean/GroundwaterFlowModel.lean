import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GroundwaterFlowModelPackage where
  aquiferType : String
  hydraulicConductivity : Float
  storativity : Float
  flowEquation : Prop
  boundaryCondition : Prop

structure GroundwaterFlowModelEvidence (G : GroundwaterFlowModelPackage) where
  hydraulicConductivityClosed : G.hydraulicConductivity > 0
  storativityClosed : G.storativity > 0
  flowEquationClosed : G.flowEquation
  boundaryConditionClosed : G.boundaryCondition

def GroundwaterFlowModelClosed (G : GroundwaterFlowModelPackage) : Prop :=
  G.hydraulicConductivity > 0 ∧ G.storativity > 0 ∧ G.flowEquation ∧ G.boundaryCondition

theorem groundwater_flow_model_closed_from_evidence
    (G : GroundwaterFlowModelPackage) (E : GroundwaterFlowModelEvidence G) :
    GroundwaterFlowModelClosed G := by
  exact And.intro E.hydraulicConductivityClosed (And.intro E.storativityClosed (And.intro E.flowEquationClosed E.boundaryConditionClosed))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse