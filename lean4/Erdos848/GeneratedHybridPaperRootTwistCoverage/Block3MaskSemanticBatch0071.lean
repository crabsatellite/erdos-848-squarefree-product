import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0071 : List Nat :=
  [659]

def block3TwistBatchNormalWords0071 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0071 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP659Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 659
      (block3TwistBatchNormalWords0071 659)
      (block3TwistBatchWords0071 659) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP659 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 659
      (block3TwistBatchNormalWords0071 659)
      (block3TwistBatchWords0071 659) :=
  block3TwistMaskCertificateP659Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0071
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0071) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0071 p)
      (block3TwistBatchWords0071 p) := by
  by_cases hp659 : p = 659
  · subst p; exact block3TwistMaskCertificateP659
  · simp [block3TwistSemanticBatchPrimes0071, hp659] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
