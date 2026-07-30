import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0073 : List Nat :=
  [673]

def block3TwistBatchNormalWords0073 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0073 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP673Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 673
      (block3TwistBatchNormalWords0073 673)
      (block3TwistBatchWords0073 673) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP673 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 673
      (block3TwistBatchNormalWords0073 673)
      (block3TwistBatchWords0073 673) :=
  block3TwistMaskCertificateP673Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0073
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0073) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0073 p)
      (block3TwistBatchWords0073 p) := by
  by_cases hp673 : p = 673
  · subst p; exact block3TwistMaskCertificateP673
  · simp [block3TwistSemanticBatchPrimes0073, hp673] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
