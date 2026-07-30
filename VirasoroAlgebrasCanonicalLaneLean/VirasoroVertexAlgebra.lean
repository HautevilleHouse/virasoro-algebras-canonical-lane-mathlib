import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroVertexAlgebra where
  space : Type u
  vacuum : space
  translationOperator : space → space
  stateFieldMap : space → ℤ → (space → space)  -- informal: Y(v,z)
  virasoroActions : List (ℤ → (space → space))
  localityCondition : Prop
  associativityCondition : Prop
  conformalWardIdentities : Prop

structure VertexAlgebraEvidence (V : VirasoroVertexAlgebra) where
  localityClosed : V.localityCondition
  associativityClosed : V.associativityCondition
  wardClosed : V.conformalWardIdentities

def VertexAlgebraClosed (V : VirasoroVertexAlgebra) : Prop :=
  V.localityCondition ∧ V.associativityCondition ∧ V.conformalWardIdentities

theorem vertex_algebra_closed_from_evidence (V : VirasoroVertexAlgebra)
    (E : VertexAlgebraEvidence V) : VertexAlgebraClosed V := by
  exact And.intro E.localityClosed (And.intro E.associativityClosed E.wardClosed)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse