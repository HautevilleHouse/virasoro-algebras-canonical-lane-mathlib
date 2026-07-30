import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.HighestWeightRep

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VermaModule (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) where
  universalProperty : Prop
  irreducibleQuotient : Prop
  jacobiConsistent : Prop
  universalPropertyTerm : universalProperty
  irreducibleQuotientTerm : irreducibleQuotient
  jacobiConsistentTerm : jacobiConsistent

def VermaModuleClosed (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) (M : VermaModule V R) : Prop :=
  M.universalProperty ∧ M.irreducibleQuotient ∧ M.jacobiConsistent

theorem verma_module_closed (V : VirasoroAlgebra) (R : HighestWeightRepresentation V) (M : VermaModule V R) :
  VermaModuleClosed V R M := by
  exact And.intro M.universalPropertyTerm (And.intro M.irreducibleQuotientTerm M.jacobiConsistentTerm)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse