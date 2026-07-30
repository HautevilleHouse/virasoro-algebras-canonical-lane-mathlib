import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure CenterChargeClassificationPackage where
  centralCharge : ℕ
  minimalModelsClassified : Prop
  discreteSeries : Prop
  continuousSeries : Prop

structure CenterChargeClassificationEvidence (C : CenterChargeClassificationPackage) where
  minimalModelsClassifiedClosed : C.minimalModelsClassified
  discreteSeriesClosed : C.discreteSeries
  continuousSeriesClosed : C.continuousSeries

def CenterChargeClassificationClosed (C : CenterChargeClassificationPackage) : Prop :=
  C.minimalModelsClassified ∧ C.discreteSeries ∧ C.continuousSeries

theorem center_charge_classification_closed_from_evidence
    (C : CenterChargeClassificationPackage)
    (E : CenterChargeClassificationEvidence C) :
    CenterChargeClassificationClosed C := by
  exact And.intro E.minimalModelsClassifiedClosed
    (And.intro E.discreteSeriesClosed E.continuousSeriesClosed)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse