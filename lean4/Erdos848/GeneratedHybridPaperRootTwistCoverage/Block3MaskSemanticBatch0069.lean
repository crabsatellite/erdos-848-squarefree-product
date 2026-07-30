import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0069 : List Nat :=
  [647]

def block3TwistBatchNormalWords0069 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0069 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP647Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 647
      (block3TwistBatchNormalWords0069 647)
      (block3TwistBatchWords0069 647) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP647 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 647
      (block3TwistBatchNormalWords0069 647)
      (block3TwistBatchWords0069 647) :=
  block3TwistMaskCertificateP647Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0069
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0069) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0069 p)
      (block3TwistBatchWords0069 p) := by
  by_cases hp647 : p = 647
  · subst p; exact block3TwistMaskCertificateP647
  · simp [block3TwistSemanticBatchPrimes0069, hp647] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
