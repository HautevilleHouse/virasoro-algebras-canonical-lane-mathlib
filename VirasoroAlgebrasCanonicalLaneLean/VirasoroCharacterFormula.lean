import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroCharacterFormula where
  algebra : VirasoroAlgebra
  highestWeight : ℚ
  centralCharge : ℕ
  partitionFunction : ℚ → ℚ
  modularInvariance : Prop
  characterExpressed : Prop

structure CharacterEvidence (C : VirasoroCharacterFormula) where
  modularInvarianceClosed : C.modularInvariance
  characterExpressedClosed : C.characterExpressed

def CharacterClosed (C : VirasoroCharacterFormula) : Prop :=
  C.modularInvariance ∧ C.characterExpressed

theorem character_closed_from_evidence (C : VirasoroCharacterFormula)
    (E : CharacterEvidence C) : CharacterClosed C := by
  exact And.intro E.modularInvarianceClosed E.characterExpressedClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse