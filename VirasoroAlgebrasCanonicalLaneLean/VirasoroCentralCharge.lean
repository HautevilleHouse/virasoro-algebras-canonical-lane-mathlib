import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroBasis

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure CentralChargePackage (V : VirasoroAlgebra) where
  chargeValue : ℤ
  chargeCentral : Prop
  cocycleCondition : Prop
  chargeClosed : chargeCentral ∧ cocycleCondition

def CentralChargeClosed {V : VirasoroAlgebra} (C : CentralChargePackage V) : Prop :=
  C.chargeCentral ∧ C.cocycleCondition

theorem central_charge_closed_from_package {V : VirasoroAlgebra}
  (C : CentralChargePackage V) : CentralChargeClosed C := by
  exact C.chargeClosed

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse