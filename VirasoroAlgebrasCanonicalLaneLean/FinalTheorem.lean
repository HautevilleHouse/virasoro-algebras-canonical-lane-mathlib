import canonicalLaneMathlib.AdmissibleClass
import VirasoroAlgebrasCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

def ConstrainedVirasoroClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_virasoro_endgame (A : AdmissibleClass) :
    ConstrainedVirasoroClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse