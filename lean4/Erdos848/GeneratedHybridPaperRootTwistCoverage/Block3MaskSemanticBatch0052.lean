import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0052 : List Nat :=
  [547]

def block3TwistBatchNormalWords0052 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0052 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP547Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 547
      (block3TwistBatchNormalWords0052 547)
      (block3TwistBatchWords0052 547) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP547 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 547
      (block3TwistBatchNormalWords0052 547)
      (block3TwistBatchWords0052 547) :=
  block3TwistMaskCertificateP547Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0052
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0052) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0052 p)
      (block3TwistBatchWords0052 p) := by
  by_cases hp547 : p = 547
  · subst p; exact block3TwistMaskCertificateP547
  · simp [block3TwistSemanticBatchPrimes0052, hp547] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
