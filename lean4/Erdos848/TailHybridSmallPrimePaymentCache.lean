import Erdos848.TailHybridSmallPrimePaymentCacheData

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem HybridSmallPrimePaymentCache.payment_eq
    {cache : HybridSmallPrimePaymentCache} {upper : Nat}
    (hvalid : cache.Valid upper)
    (selection : PaperDiagonalSelection) :
    cache.payment selection = paperSmallPrimePayment upper selection := by
  have h25 := hvalid.1
  have h100 := hvalid.2.1
  have h200 := hvalid.2.2.1
  have h900 := hvalid.2.2.2.1
  have h1800 := hvalid.2.2.2.2
  unfold paperSmallPrimePayment
  rw [← paperSmallDiagonalPrimesFast_eq]
  cases selection <;>
    simp only [HybridSmallPrimePaymentCache.payment,
      HybridSmallPrimePaymentCache.get,
      PaperDiagonalSelection.smallResidueCount,
      PaperDiagonalSelection.smallPeriod,
      paperSmallPrimeQuotientSumFast] at *
  all_goals omega

#print axioms HybridSmallPrimePaymentCache.payment_eq

end Erdos848
