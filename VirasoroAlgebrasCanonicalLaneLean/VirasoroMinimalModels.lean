import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroMinimalModel where
  centralCharge : ℚ
  centralChargeInUnitInterval : centralCharge ≥ 0 ∧ centralCharge ≤ 1
  finitelyManyPrimaries : ℕ
  correlationFunctionsDefined : Prop
  fusionRulesClosed : Prop
  unitarityCondition : Prop

structure MinimalModelEvidence (M : VirasoroMinimalModel) where
  correlationClosed : M.correlationFunctionsDefined
  fusionClosed : M.fusionRulesClosed
  unitarityClosed : M.unitarityCondition

def MinimalModelClosed (M : VirasoroMinimalModel) : Prop :=
  M.correlationFunctionsDefined ∧ M.fusionRulesClosed ∧ M.unitarityCondition

theorem minimal_model_closed_from_evidence (M : VirasoroMinimalModel)
    (E : MinimalModelEvidence M) : MinimalModelClosed M := by
  exact And.intro E.correlationClosed (And.intro E.fusionClosed E.unitarityClosed)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse