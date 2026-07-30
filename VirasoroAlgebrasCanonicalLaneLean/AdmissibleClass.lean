import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroModule where
  underlying : Type
  bracket : underlying → underlying → underlying
  satisfiesJacobi : Prop
  centerCharge : ℤ

def VirasoroAdmittedObject where
  carrier : VirasoroModule
  centralExtensionAdmissible : Prop
  conclusion : centralExtensionAdmissible

structure AdmissibleClass where
  object : VirasoroAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VirasoroWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse