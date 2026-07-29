import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyFoundationCanonicalLaneLean

structure GeologyAdmittedObject where
  site : Type
  geologyModel : Prop
  engineeringSafety : Prop
  conclusion : geologyModel ∧ engineeringSafety

def GeologyWitnessClosed (O : GeologyAdmittedObject) : Prop :=
  O.geologyModel ∧ O.engineeringSafety

end EarthScienceEngineeringGeologyFoundationCanonicalLaneLean
end HautevilleHouse