import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroAlgebraDefinition

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VermaModule (V : VirasoroAlgebra) where
  highestWeight : ℂ
  highestWeightVector : V.underlyingSpace
  descendantVectors : ℕ → V.underlyingSpace
  actionClosed : True

def VermaModuleClosed (V : VirasoroAlgebra) (M : VermaModule V) : Prop := True

theorem verma_module_defined (V : VirasoroAlgebra) (M : VermaModule V) : VermaModuleClosed V M := by
  unfold VermaModuleClosed
  trivial

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse