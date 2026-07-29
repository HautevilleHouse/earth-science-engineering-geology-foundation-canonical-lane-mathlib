import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GroundwaterFlowPermeabilityPackage where
  hydraulicConductivity : Prop
  darcyVelocity : Prop
  seepageVelocity : Prop
  permeabilityTensor : Prop
  anisotropyRatio : Prop
  transmissivity : Prop

structure GroundwaterFlowPermeabilityEvidence (P : GroundwaterFlowPermeabilityPackage) where
  hydraulicConductivityClosed : P.hydraulicConductivity
  darcyVelocityClosed : P.darcyVelocity
  seepageVelocityClosed : P.seepageVelocity
  permeabilityTensorClosed : P.permeabilityTensor
  anisotropyRatioClosed : P.anisotropyRatio
  transmissivityClosed : P.transmissivity

def GroundwaterFlowPermeabilityClosed (P : GroundwaterFlowPermeabilityPackage) : Prop :=
  P.hydraulicConductivity ∧ P.darcyVelocity ∧ P.seepageVelocity ∧ P.permeabilityTensor ∧ P.anisotropyRatio ∧ P.transmissivity

theorem groundwater_flow_permeability_closed_from_evidence (P : GroundwaterFlowPermeabilityPackage) (E : GroundwaterFlowPermeabilityEvidence P) : GroundwaterFlowPermeabilityClosed P := by
  exact And.intro E.hydraulicConductivityClosed
    (And.intro E.darcyVelocityClosed
      (And.intro E.seepageVelocityClosed
        (And.intro E.permeabilityTensorClosed
          (And.intro E.anisotropyRatioClosed E.transmissivityClosed))))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse
