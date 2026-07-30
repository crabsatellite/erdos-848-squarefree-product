import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0125 : List Nat :=
  [1033]

def block3TwistBatchNormalWords0125 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0125 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1033Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1033
      (block3TwistBatchNormalWords0125 1033)
      (block3TwistBatchWords0125 1033) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1033 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1033
      (block3TwistBatchNormalWords0125 1033)
      (block3TwistBatchWords0125 1033) :=
  block3TwistMaskCertificateP1033Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0125
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0125) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0125 p)
      (block3TwistBatchWords0125 p) := by
  by_cases hp1033 : p = 1033
  · subst p; exact block3TwistMaskCertificateP1033
  · simp [block3TwistSemanticBatchPrimes0125, hp1033] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
