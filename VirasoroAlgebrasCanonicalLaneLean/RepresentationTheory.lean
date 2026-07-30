import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure RepresentationTheoryPackage where
  vermaModules : Prop
  irreducibleHighestWeightModules : Prop
  fusionRules : Prop

structure RepresentationTheoryEvidence (R : RepresentationTheoryPackage) where
  vermaModulesClosed : R.vermaModules
  irreducibleHighestWeightModulesClosed : R.irreducibleHighestWeightModules
  fusionRulesClosed : R.fusionRules

def RepresentationTheoryClosed (R : RepresentationTheoryPackage) : Prop :=
  R.vermaModules ∧ R.irreducibleHighestWeightModules ∧ R.fusionRules

theorem representation_theory_closed_from_evidence
    (R : RepresentationTheoryPackage) (E : RepresentationTheoryEvidence R) :
    RepresentationTheoryClosed R := by
  exact And.intro E.vermaModulesClosed
    (And.intro E.irreducibleHighestWeightModulesClosed E.fusionRulesClosed)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse