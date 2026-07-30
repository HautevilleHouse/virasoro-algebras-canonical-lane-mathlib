import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VirasoroAlgebrasCanonicalLaneLean.VirasoroAlgebraDef

namespace HautevilleHouse
namespace VirasoroAlgebrasCanonicalLaneLean

structure CentralChargeExtension (V : VirasoroAlgebra) where
  centralChargeValue : ℕ
  compatibility : centralChargeValue = V.centralCharge
  extensionCondition : Prop
  extensionConditionTerm : extensionCondition

theorem central_charge_extension_closed (V : VirasoroAlgebra) (E : CentralChargeExtension V) :
  E.compatibility := by
  exact E.compatibility

end VirasoroAlgebrasCanonicalLaneLean
end HautevilleHouse