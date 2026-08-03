import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0070 : List Nat :=
  [653]

def block3TwistBatchNormalWords0070 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0070 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP653Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 653
      (block3TwistBatchNormalWords0070 653)
      (block3TwistBatchWords0070 653) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP653 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 653
      (block3TwistBatchNormalWords0070 653)
      (block3TwistBatchWords0070 653) :=
  block3TwistMaskCertificateP653Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0070
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0070) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0070 p)
      (block3TwistBatchWords0070 p) := by
  by_cases hp653 : p = 653
  · subst p; exact block3TwistMaskCertificateP653
  · simp [block3TwistSemanticBatchPrimes0070, hp653] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
