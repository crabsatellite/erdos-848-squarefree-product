import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0105 : List Nat :=
  [887]

def block3TwistBatchNormalWords0105 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0105 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP887Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 887
      (block3TwistBatchNormalWords0105 887)
      (block3TwistBatchWords0105 887) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP887 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 887
      (block3TwistBatchNormalWords0105 887)
      (block3TwistBatchWords0105 887) :=
  block3TwistMaskCertificateP887Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0105
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0105) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0105 p)
      (block3TwistBatchWords0105 p) := by
  by_cases hp887 : p = 887
  · subst p; exact block3TwistMaskCertificateP887
  · simp [block3TwistSemanticBatchPrimes0105, hp887] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
