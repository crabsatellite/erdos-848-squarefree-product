import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0108 : List Nat :=
  [919]

def block3TwistBatchNormalWords0108 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0108 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP919Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 919
      (block3TwistBatchNormalWords0108 919)
      (block3TwistBatchWords0108 919) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP919 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 919
      (block3TwistBatchNormalWords0108 919)
      (block3TwistBatchWords0108 919) :=
  block3TwistMaskCertificateP919Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0108
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0108) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0108 p)
      (block3TwistBatchWords0108 p) := by
  by_cases hp919 : p = 919
  · subst p; exact block3TwistMaskCertificateP919
  · simp [block3TwistSemanticBatchPrimes0108, hp919] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
