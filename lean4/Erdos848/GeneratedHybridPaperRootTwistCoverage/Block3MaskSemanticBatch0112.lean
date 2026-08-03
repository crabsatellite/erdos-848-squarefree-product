import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0112 : List Nat :=
  [947]

def block3TwistBatchNormalWords0112 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0112 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP947Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 947
      (block3TwistBatchNormalWords0112 947)
      (block3TwistBatchWords0112 947) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP947 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 947
      (block3TwistBatchNormalWords0112 947)
      (block3TwistBatchWords0112 947) :=
  block3TwistMaskCertificateP947Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0112
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0112) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0112 p)
      (block3TwistBatchWords0112 p) := by
  by_cases hp947 : p = 947
  · subst p; exact block3TwistMaskCertificateP947
  · simp [block3TwistSemanticBatchPrimes0112, hp947] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
