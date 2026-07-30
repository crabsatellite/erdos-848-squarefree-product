import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0079 : List Nat :=
  [719]

def block3TwistBatchNormalWords0079 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0079 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP719Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 719
      (block3TwistBatchNormalWords0079 719)
      (block3TwistBatchWords0079 719) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP719 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 719
      (block3TwistBatchNormalWords0079 719)
      (block3TwistBatchWords0079 719) :=
  block3TwistMaskCertificateP719Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0079
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0079) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0079 p)
      (block3TwistBatchWords0079 p) := by
  by_cases hp719 : p = 719
  · subst p; exact block3TwistMaskCertificateP719
  · simp [block3TwistSemanticBatchPrimes0079, hp719] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
