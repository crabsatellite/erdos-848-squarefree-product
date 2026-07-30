import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0136 : List Nat :=
  [1103]

def block3TwistBatchNormalWords0136 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0136 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1103Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1103
      (block3TwistBatchNormalWords0136 1103)
      (block3TwistBatchWords0136 1103) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1103 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1103
      (block3TwistBatchNormalWords0136 1103)
      (block3TwistBatchWords0136 1103) :=
  block3TwistMaskCertificateP1103Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0136
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0136) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0136 p)
      (block3TwistBatchWords0136 p) := by
  by_cases hp1103 : p = 1103
  · subst p; exact block3TwistMaskCertificateP1103
  · simp [block3TwistSemanticBatchPrimes0136, hp1103] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
