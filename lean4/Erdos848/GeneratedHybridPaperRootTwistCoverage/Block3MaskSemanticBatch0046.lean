import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0046 : List Nat :=
  [499]

def block3TwistBatchNormalWords0046 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0046 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP499Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 499
      (block3TwistBatchNormalWords0046 499)
      (block3TwistBatchWords0046 499) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP499 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 499
      (block3TwistBatchNormalWords0046 499)
      (block3TwistBatchWords0046 499) :=
  block3TwistMaskCertificateP499Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0046
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0046) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0046 p)
      (block3TwistBatchWords0046 p) := by
  by_cases hp499 : p = 499
  · subst p; exact block3TwistMaskCertificateP499
  · simp [block3TwistSemanticBatchPrimes0046, hp499] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
