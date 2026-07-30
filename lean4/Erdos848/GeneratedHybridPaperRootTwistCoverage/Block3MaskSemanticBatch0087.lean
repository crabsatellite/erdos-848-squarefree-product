import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0087 : List Nat :=
  [769]

def block3TwistBatchNormalWords0087 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0087 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP769Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 769
      (block3TwistBatchNormalWords0087 769)
      (block3TwistBatchWords0087 769) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP769 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 769
      (block3TwistBatchNormalWords0087 769)
      (block3TwistBatchWords0087 769) :=
  block3TwistMaskCertificateP769Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0087
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0087) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0087 p)
      (block3TwistBatchWords0087 p) := by
  by_cases hp769 : p = 769
  · subst p; exact block3TwistMaskCertificateP769
  · simp [block3TwistSemanticBatchPrimes0087, hp769] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
