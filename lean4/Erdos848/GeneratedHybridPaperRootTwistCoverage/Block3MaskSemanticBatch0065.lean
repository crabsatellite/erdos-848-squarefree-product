import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0065 : List Nat :=
  [619]

def block3TwistBatchNormalWords0065 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0065 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP619Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 619
      (block3TwistBatchNormalWords0065 619)
      (block3TwistBatchWords0065 619) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP619 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 619
      (block3TwistBatchNormalWords0065 619)
      (block3TwistBatchWords0065 619) :=
  block3TwistMaskCertificateP619Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0065
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0065) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0065 p)
      (block3TwistBatchWords0065 p) := by
  by_cases hp619 : p = 619
  · subst p; exact block3TwistMaskCertificateP619
  · simp [block3TwistSemanticBatchPrimes0065, hp619] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
