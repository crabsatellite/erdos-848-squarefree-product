import Erdos848.TailHighQrFiniteClose
import Erdos848.TailHighUnboundedClose

namespace Erdos848

/-!
# Complete high-tail splice

The public high tail has exactly two components:

* six QR-screened rows covering `2B ≤ N < 500B`;
* one analytic theorem covering every `N ≥ 500B`.

The earlier exact-marker and variable-row bridges are not part of this route.
-/

structure HighTailCloseCertificate where
  qr : HighQrFiniteCloseCertificate
  qrStopAligned :
    qr.stop = highUnboundedBudget.lower

theorem HighTailCloseCertificate.close
    (certificate : HighTailCloseCertificate)
    {N : Nat}
    (hLower : 2_000_000_000 ≤ N) :
    OriginalProblem848Statement N := by
  by_cases hQr : N < certificate.qr.stop
  · exact certificate.qr.close hLower hQr
  have hUnbounded : highUnboundedBudget.lower ≤ N := by
    rw [← certificate.qrStopAligned]
    omega
  exact erdos848HighUnboundedClose hUnbounded

#print axioms HighTailCloseCertificate.close

end Erdos848
