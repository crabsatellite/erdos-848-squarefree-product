import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatchedCertificate

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3QrMaskWords_certificate
    {p : Nat} (hp : p ∈ maskPrimes) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) :=
  block3QrMaskWords_batched_certificate hp

end Erdos848.GeneratedHybridPaperRootCoverage
