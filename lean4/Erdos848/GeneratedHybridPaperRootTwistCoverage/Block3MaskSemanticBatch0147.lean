import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0147 : List Nat :=
  [1193]

def block3TwistBatchNormalWords0147 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0147 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    block3TwistQrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1193Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1193
      (block3TwistBatchNormalWords0147 1193)
      (block3TwistBatchWords0147 1193) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1193 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1193
      (block3TwistBatchNormalWords0147 1193)
      (block3TwistBatchWords0147 1193) :=
  block3TwistMaskCertificateP1193Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0147
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0147) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0147 p)
      (block3TwistBatchWords0147 p) := by
  by_cases hp1193 : p = 1193
  · subst p; exact block3TwistMaskCertificateP1193
  · simp [block3TwistSemanticBatchPrimes0147, hp1193] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
