import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure PermeabilityTensorPackage where
  hydraulicConductivity : Prop
  porosity : Prop
  fluidViscosity : Prop
  darcyFlow : Prop
  anisotropicFabric : Prop

structure PermeabilityTensorEvidence (P : PermeabilityTensorPackage) where
  hydraulicConductivityClosed : P.hydraulicConductivity
  porosityClosed : P.porosity
  fluidViscosityClosed : P.fluidViscosity
  darcyFlowClosed : P.darcyFlow
  anisotropicFabricClosed : P.anisotropicFabric

def PermeabilityTensorClosed (P : PermeabilityTensorPackage) : Prop :=
  P.hydraulicConductivity ∧ P.porosity ∧ P.fluidViscosity ∧ P.darcyFlow ∧ P.anisotropicFabric

theorem permeability_tensor_closed_from_evidence (P : PermeabilityTensorPackage)
    (E : PermeabilityTensorEvidence P) : PermeabilityTensorClosed P := by
  exact And.intro E.hydraulicConductivityClosed
    (And.intro E.porosityClosed
      (And.intro E.fluidViscosityClosed
        (And.intro E.darcyFlowClosed E.anisotropicFabricClosed)))

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse