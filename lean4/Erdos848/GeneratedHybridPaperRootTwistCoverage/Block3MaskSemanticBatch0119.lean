import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0119 : List Nat :=
  [997]

def block3TwistBatchNormalWords0119 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0119 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP997Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 997
      (block3TwistBatchNormalWords0119 997)
      (block3TwistBatchWords0119 997) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP997 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 997
      (block3TwistBatchNormalWords0119 997)
      (block3TwistBatchWords0119 997) :=
  block3TwistMaskCertificateP997Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0119
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0119) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0119 p)
      (block3TwistBatchWords0119 p) := by
  by_cases hp997 : p = 997
  · subst p; exact block3TwistMaskCertificateP997
  · simp [block3TwistSemanticBatchPrimes0119, hp997] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
