import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VertexOperatorAlgebraPackage where
  vacuumOk : Prop
  stateFieldCorrespondence : Prop
  conformalVector : Prop
  moduleStructure : Prop

structure VertexOperatorAlgebraEvidence (V : VertexOperatorAlgebraPackage) where
  vacuumOkClosed : V.vacuumOk
  stateFieldCorrespondenceClosed : V.stateFieldCorrespondence
  conformalVectorClosed : V.conformalVector
  moduleStructureClosed : V.moduleStructure

def VertexOperatorAlgebraClosed (V : VertexOperatorAlgebraPackage) : Prop :=
  V.vacuumOk ∧ V.stateFieldCorrespondence ∧ V.conformalVector ∧ V.moduleStructure

theorem vertex_operator_algebra_closed_from_evidence
    (V : VertexOperatorAlgebraPackage) (E : VertexOperatorAlgebraEvidence V) :
    VertexOperatorAlgebraClosed V := by
  exact And.intro E.vacuumOkClosed
    (And.intro E.stateFieldCorrespondenceClosed
      (And.intro E.conformalVectorClosed E.moduleStructureClosed))

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse