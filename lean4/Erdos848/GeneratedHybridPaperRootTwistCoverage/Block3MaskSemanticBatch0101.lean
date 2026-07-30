import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0101 : List Nat :=
  [863]

def block3TwistBatchNormalWords0101 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0101 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP863Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 863
      (block3TwistBatchNormalWords0101 863)
      (block3TwistBatchWords0101 863) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP863 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 863
      (block3TwistBatchNormalWords0101 863)
      (block3TwistBatchWords0101 863) :=
  block3TwistMaskCertificateP863Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0101
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0101) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0101 p)
      (block3TwistBatchWords0101 p) := by
  by_cases hp863 : p = 863
  · subst p; exact block3TwistMaskCertificateP863
  · simp [block3TwistSemanticBatchPrimes0101, hp863] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
