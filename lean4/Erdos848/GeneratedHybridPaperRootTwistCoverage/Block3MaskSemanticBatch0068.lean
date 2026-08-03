import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0068 : List Nat :=
  [643]

def block3TwistBatchNormalWords0068 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0068 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP643Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 643
      (block3TwistBatchNormalWords0068 643)
      (block3TwistBatchWords0068 643) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP643 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 643
      (block3TwistBatchNormalWords0068 643)
      (block3TwistBatchWords0068 643) :=
  block3TwistMaskCertificateP643Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0068
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0068) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0068 p)
      (block3TwistBatchWords0068 p) := by
  by_cases hp643 : p = 643
  · subst p; exact block3TwistMaskCertificateP643
  · simp [block3TwistSemanticBatchPrimes0068, hp643] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
