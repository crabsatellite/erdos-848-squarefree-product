import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0076 : List Nat :=
  [691]

def block3TwistBatchNormalWords0076 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0076 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP691Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 691
      (block3TwistBatchNormalWords0076 691)
      (block3TwistBatchWords0076 691) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP691 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 691
      (block3TwistBatchNormalWords0076 691)
      (block3TwistBatchWords0076 691) :=
  block3TwistMaskCertificateP691Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0076
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0076) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0076 p)
      (block3TwistBatchWords0076 p) := by
  by_cases hp691 : p = 691
  · subst p; exact block3TwistMaskCertificateP691
  · simp [block3TwistSemanticBatchPrimes0076, hp691] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
