import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0085 : List Nat :=
  [757]

def block3TwistBatchNormalWords0085 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0085 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP757Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 757
      (block3TwistBatchNormalWords0085 757)
      (block3TwistBatchWords0085 757) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP757 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 757
      (block3TwistBatchNormalWords0085 757)
      (block3TwistBatchWords0085 757) :=
  block3TwistMaskCertificateP757Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0085
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0085) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0085 p)
      (block3TwistBatchWords0085 p) := by
  by_cases hp757 : p = 757
  · subst p; exact block3TwistMaskCertificateP757
  · simp [block3TwistSemanticBatchPrimes0085, hp757] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
