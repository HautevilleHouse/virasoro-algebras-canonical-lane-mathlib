import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure CentralExtension where
  lieAlgebra : Type u
  twoCocycle : Type v
  coboundaryCondition : Prop
  cohomologyClass : Prop

structure CentralExtensionEvidence (C : CentralExtension) where
  coboundaryConditionClosed : C.coboundaryCondition
  cohomologyClassClosed : C.cohomologyClass

def CentralExtensionClosed (C : CentralExtension) : Prop :=
  C.coboundaryCondition ∧ C.cohomologyClass

theorem central_extension_closed_from_evidence (C : CentralExtension)
    (E : CentralExtensionEvidence C) : CentralExtensionClosed C :=
  And.intro E.coboundaryConditionClosed E.cohomologyClassClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse