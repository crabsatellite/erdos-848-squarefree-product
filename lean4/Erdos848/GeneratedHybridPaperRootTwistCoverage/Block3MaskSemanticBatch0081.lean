import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0081 : List Nat :=
  [733]

def block3TwistBatchNormalWords0081 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0081 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP733Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 733
      (block3TwistBatchNormalWords0081 733)
      (block3TwistBatchWords0081 733) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP733 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 733
      (block3TwistBatchNormalWords0081 733)
      (block3TwistBatchWords0081 733) :=
  block3TwistMaskCertificateP733Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0081
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0081) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0081 p)
      (block3TwistBatchWords0081 p) := by
  by_cases hp733 : p = 733
  · subst p; exact block3TwistMaskCertificateP733
  · simp [block3TwistSemanticBatchPrimes0081, hp733] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
