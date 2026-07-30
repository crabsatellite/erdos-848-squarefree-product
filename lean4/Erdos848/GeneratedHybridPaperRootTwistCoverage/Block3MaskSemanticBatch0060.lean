import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0060 : List Nat :=
  [599]

def block3TwistBatchNormalWords0060 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0060 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP599Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 599
      (block3TwistBatchNormalWords0060 599)
      (block3TwistBatchWords0060 599) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP599 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 599
      (block3TwistBatchNormalWords0060 599)
      (block3TwistBatchWords0060 599) :=
  block3TwistMaskCertificateP599Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0060
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0060) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0060 p)
      (block3TwistBatchWords0060 p) := by
  by_cases hp599 : p = 599
  · subst p; exact block3TwistMaskCertificateP599
  · simp [block3TwistSemanticBatchPrimes0060, hp599] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
