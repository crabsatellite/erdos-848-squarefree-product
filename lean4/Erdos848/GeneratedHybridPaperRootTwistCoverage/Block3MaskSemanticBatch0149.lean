import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0149 : List Nat :=
  [1213]

def block3TwistBatchNormalWords0149 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0149 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    block3TwistQrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1213Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1213
      (block3TwistBatchNormalWords0149 1213)
      (block3TwistBatchWords0149 1213) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1213 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1213
      (block3TwistBatchNormalWords0149 1213)
      (block3TwistBatchWords0149 1213) :=
  block3TwistMaskCertificateP1213Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0149
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0149) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0149 p)
      (block3TwistBatchWords0149 p) := by
  by_cases hp1213 : p = 1213
  · subst p; exact block3TwistMaskCertificateP1213
  · simp [block3TwistSemanticBatchPrimes0149, hp1213] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
