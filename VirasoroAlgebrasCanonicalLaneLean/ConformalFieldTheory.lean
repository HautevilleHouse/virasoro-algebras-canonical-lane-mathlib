import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure ConformalFieldTheory {V : VirasoroAlgebra} where
  primaryFields : Type u
  stressTensor : Type v
  centralCharge : ℂ
  operatorProductExpansion : Prop
  conformalSymmetry : Prop

structure ConformalFieldTheoryEvidence {V : VirasoroAlgebra}
    (Cft : ConformalFieldTheory V) where
  operatorProductExpansionClosed : Cft.operatorProductExpansion
  conformalSymmetryClosed : Cft.conformalSymmetry

def ConformalFieldTheoryClosed {V : VirasoroAlgebra}
    (Cft : ConformalFieldTheory V) : Prop :=
  Cft.operatorProductExpansion ∧ Cft.conformalSymmetry

theorem conformal_field_theory_closed_from_evidence {V : VirasoroAlgebra}
    (Cft : ConformalFieldTheory V) (E : ConformalFieldTheoryEvidence Cft) :
    ConformalFieldTheoryClosed Cft :=
  And.intro E.operatorProductExpansionClosed E.conformalSymmetryClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse