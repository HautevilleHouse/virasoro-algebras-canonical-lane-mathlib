import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroAlgebra where
  generators : Type u
  centralCharge : ℂ
  commutationRelations : Prop
  jacobiIdentity : Prop
  cocycleCondition : Prop

structure VirasoroAlgebraEvidence (V : VirasoroAlgebra) where
  commutationRelationsClosed : V.commutationRelations
  jacobiIdentityClosed : V.jacobiIdentity
  cocycleConditionClosed : V.cocycleCondition

def VirasoroAlgebraClosed (V : VirasoroAlgebra) : Prop :=
  V.commutationRelations ∧ V.jacobiIdentity ∧ V.cocycleCondition

theorem virasoro_algebra_closed_from_evidence (V : VirasoroAlgebra)
    (E : VirasoroAlgebraEvidence V) : VirasoroAlgebraClosed V :=
  And.intro E.commutationRelationsClosed
    (And.intro E.jacobiIdentityClosed E.cocycleConditionClosed)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse