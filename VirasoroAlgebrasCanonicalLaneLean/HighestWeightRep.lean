import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure HighestWeightRepresentation {V : VirasoroAlgebra} where
  highestWeight : ℂ
  representationSpace : Type u
  weightVectors : Type v
  loweringOperators : Prop
  singularVectorCondition : Prop

structure HighestWeightRepresentationEvidence {V : VirasoroAlgebra}
    (R : HighestWeightRepresentation V) where
  loweringOperatorsClosed : R.loweringOperators
  singularVectorConditionClosed : R.singularVectorCondition

def HighestWeightRepresentationClosed {V : VirasoroAlgebra}
    (R : HighestWeightRepresentation V) : Prop :=
  R.loweringOperators ∧ R.singularVectorCondition

theorem highest_weight_representation_closed_from_evidence {V : VirasoroAlgebra}
    (R : HighestWeightRepresentation V) (E : HighestWeightRepresentationEvidence R) :
    HighestWeightRepresentationClosed R :=
  And.intro E.loweringOperatorsClosed E.singularVectorConditionClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse