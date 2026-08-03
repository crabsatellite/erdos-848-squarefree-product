import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatchedCertificate

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

theorem block3TwistQrMaskWords_certificate
    {p : Nat} (hp : p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimes) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) :=
  block3TwistQrMaskWords_batched_certificate hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
