import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VermaModule {V : VirasoroAlgebra} where
  highestWeight : ℂ
  vacuumVector : ℂ
  moduleStructure : Prop
  irreducibilityCondition : Prop

structure VermaModuleEvidence {V : VirasoroAlgebra} (M : VermaModule V) where
  moduleStructureClosed : M.moduleStructure
  irreducibilityConditionClosed : M.irreducibilityCondition

def VermaModuleClosed {V : VirasoroAlgebra} (M : VermaModule V) : Prop :=
  M.moduleStructure ∧ M.irreducibilityCondition

theorem verma_module_closed_from_evidence {V : VirasoroAlgebra}
    (M : VermaModule V) (E : VermaModuleEvidence M) : VermaModuleClosed M :=
  And.intro E.moduleStructureClosed E.irreducibilityConditionClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse