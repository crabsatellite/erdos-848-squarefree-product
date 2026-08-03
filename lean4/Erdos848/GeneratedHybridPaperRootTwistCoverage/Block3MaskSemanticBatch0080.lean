import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0080 : List Nat :=
  [727]

def block3TwistBatchNormalWords0080 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0080 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP727Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 727
      (block3TwistBatchNormalWords0080 727)
      (block3TwistBatchWords0080 727) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP727 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 727
      (block3TwistBatchNormalWords0080 727)
      (block3TwistBatchWords0080 727) :=
  block3TwistMaskCertificateP727Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0080
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0080) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0080 p)
      (block3TwistBatchWords0080 p) := by
  by_cases hp727 : p = 727
  · subst p; exact block3TwistMaskCertificateP727
  · simp [block3TwistSemanticBatchPrimes0080, hp727] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
