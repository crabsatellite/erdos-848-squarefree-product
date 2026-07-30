import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0054 : List Nat :=
  [563]

def block3TwistBatchNormalWords0054 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0054 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP563Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 563
      (block3TwistBatchNormalWords0054 563)
      (block3TwistBatchWords0054 563) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP563 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 563
      (block3TwistBatchNormalWords0054 563)
      (block3TwistBatchWords0054 563) :=
  block3TwistMaskCertificateP563Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0054
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0054) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0054 p)
      (block3TwistBatchWords0054 p) := by
  by_cases hp563 : p = 563
  · subst p; exact block3TwistMaskCertificateP563
  · simp [block3TwistSemanticBatchPrimes0054, hp563] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
