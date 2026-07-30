import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0050 : List Nat :=
  [523]

def block3TwistBatchNormalWords0050 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0050 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP523Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 523
      (block3TwistBatchNormalWords0050 523)
      (block3TwistBatchWords0050 523) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP523 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 523
      (block3TwistBatchNormalWords0050 523)
      (block3TwistBatchWords0050 523) :=
  block3TwistMaskCertificateP523Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0050
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0050) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0050 p)
      (block3TwistBatchWords0050 p) := by
  by_cases hp523 : p = 523
  · subst p; exact block3TwistMaskCertificateP523
  · simp [block3TwistSemanticBatchPrimes0050, hp523] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
