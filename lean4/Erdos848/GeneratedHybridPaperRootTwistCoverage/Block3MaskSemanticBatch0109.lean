import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0109 : List Nat :=
  [929]

def block3TwistBatchNormalWords0109 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0109 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP929Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 929
      (block3TwistBatchNormalWords0109 929)
      (block3TwistBatchWords0109 929) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP929 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 929
      (block3TwistBatchNormalWords0109 929)
      (block3TwistBatchWords0109 929) :=
  block3TwistMaskCertificateP929Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0109
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0109) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0109 p)
      (block3TwistBatchWords0109 p) := by
  by_cases hp929 : p = 929
  · subst p; exact block3TwistMaskCertificateP929
  · simp [block3TwistSemanticBatchPrimes0109, hp929] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
