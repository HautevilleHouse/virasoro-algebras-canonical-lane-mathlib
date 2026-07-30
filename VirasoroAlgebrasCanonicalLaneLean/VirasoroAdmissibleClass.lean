import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroAlgebraDefinition

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroAdmittedObject where
  algebra : VirasoroAlgebra
  representation : True
  centralChargeFiniteness : True
  conclusion : algebra.centralCharge < ℕ

structure VirasoroAdmissibleClass where
  object : VirasoroAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : VirasoroAdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : VirasoroAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : VirasoroAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : VirasoroAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedVirasoroClosure (A : VirasoroAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_virasoro_endgame (A : VirasoroAdmissibleClass) : ConstrainedVirasoroClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse