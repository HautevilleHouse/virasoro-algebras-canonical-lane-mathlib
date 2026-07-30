import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroAlgebra where
  underlyingSpace : Type u
  bracket : underlyingSpace → underlyingSpace → underlyingSpace
  centralCharge : ℕ
  jacobiIdentity : Prop
  centralElement : underlyingSpace
  centralElementIsCentral : ∀ x : underlyingSpace, bracket centralElement x = 0
  jacobiIdentityTerm : jacobiIdentity

def VirasoroAlgebraClosed (V : VirasoroAlgebra) : Prop :=
  V.jacobiIdentity

structure VirasoroAdmittedObject where
  algebra : VirasoroAlgebra
  representation : Type v
  representationAction : representation → representation → representation
  highestWeightVectors : Prop
  conclusion : VirasoroAlgebraClosed algebra

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse