import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroAlgebra where
  underlyingSpace : Type u
  bracket : underlyingSpace → underlyingSpace → underlyingSpace
  centralCharge : ℕ
  jacobiIdentity : ∀ x y z : underlyingSpace, bracket x (bracket y z) + bracket y (bracket z x) + bracket z (bracket x y) = 0
  skewSymmetry : ∀ x y : underlyingSpace, bracket x y = - bracket y x
  centralElement : underlyingSpace
  centralBehavior : ∀ x : underlyingSpace, bracket x centralElement = 0

structure VirasoroAlgebraAdmissibleObject where
  algebra : VirasoroAlgebra
  representationSpace : Type v
  action : VirasoroAlgebra → representationSpace → representationSpace
  highestWeight : ℚ
  admissibleCondition : Prop
  conclusion : admissibleCondition

def VirasoroAlgebraWitnessClosed (O : VirasoroAlgebraAdmissibleObject) : Prop := O.admissibleCondition

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse