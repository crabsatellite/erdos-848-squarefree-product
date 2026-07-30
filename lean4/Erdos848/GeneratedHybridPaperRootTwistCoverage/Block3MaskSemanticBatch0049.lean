import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0049 : List Nat :=
  [521]

def block3TwistBatchNormalWords0049 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0049 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP521Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 521
      (block3TwistBatchNormalWords0049 521)
      (block3TwistBatchWords0049 521) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP521 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 521
      (block3TwistBatchNormalWords0049 521)
      (block3TwistBatchWords0049 521) :=
  block3TwistMaskCertificateP521Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0049
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0049) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0049 p)
      (block3TwistBatchWords0049 p) := by
  by_cases hp521 : p = 521
  · subst p; exact block3TwistMaskCertificateP521
  · simp [block3TwistSemanticBatchPrimes0049, hp521] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
