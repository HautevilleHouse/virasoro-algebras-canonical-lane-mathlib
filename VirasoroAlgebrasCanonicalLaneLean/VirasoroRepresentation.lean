import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroBasis
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroCentralCharge

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure VirasoroModule (V : VirasoroAlgebra) where
  representationSpace : Type u
  action : V.underlyingSpace → (representationSpace → representationSpace)
  highestWeightState : representationSpace
  highestWeight : ℤ
  highestWeightCondition : Prop
  descendantStates : Prop
  moduleClosed : highestWeightCondition ∧ descendantStates

def VirasoroModuleClosed {V : VirasoroAlgebra} (M : VirasoroModule V) : Prop :=
  M.highestWeightCondition ∧ M.descendantStates

theorem virasoro_module_closed_from_module {V : VirasoroAlgebra}
  (M : VirasoroModule V) : VirasoroModuleClosed M := by
  exact M.moduleClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse