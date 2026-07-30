import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0066 : List Nat :=
  [631]

def block3TwistBatchNormalWords0066 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0066 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP631Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 631
      (block3TwistBatchNormalWords0066 631)
      (block3TwistBatchWords0066 631) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP631 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 631
      (block3TwistBatchNormalWords0066 631)
      (block3TwistBatchWords0066 631) :=
  block3TwistMaskCertificateP631Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0066
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0066) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0066 p)
      (block3TwistBatchWords0066 p) := by
  by_cases hp631 : p = 631
  · subst p; exact block3TwistMaskCertificateP631
  · simp [block3TwistSemanticBatchPrimes0066, hp631] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
