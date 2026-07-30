import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0117 : List Nat :=
  [983]

def block3TwistBatchNormalWords0117 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0117 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP983Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 983
      (block3TwistBatchNormalWords0117 983)
      (block3TwistBatchWords0117 983) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP983 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 983
      (block3TwistBatchNormalWords0117 983)
      (block3TwistBatchWords0117 983) :=
  block3TwistMaskCertificateP983Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0117
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0117) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0117 p)
      (block3TwistBatchWords0117 p) := by
  by_cases hp983 : p = 983
  · subst p; exact block3TwistMaskCertificateP983
  · simp [block3TwistSemanticBatchPrimes0117, hp983] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
