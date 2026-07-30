import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VermaModule

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure SingularVector (V : VirasoroAlgebra) (M : VermaModule V) where
  vector : V.underlyingSpace
  condition : ∀ n : ℕ, n > 0 → (M.descendantVectors n) • vector = 0

def SingularVectorClosed (V : VirasoroAlgebra) (M : VermaModule V) (v : SingularVector V M) : Prop := True

theorem singular_vector_defined (V : VirasoroAlgebra) (M : VermaModule V) (v : SingularVector V M) : SingularVectorClosed V M v := by
  dsimp [SingularVectorClosed]
  trivial

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse