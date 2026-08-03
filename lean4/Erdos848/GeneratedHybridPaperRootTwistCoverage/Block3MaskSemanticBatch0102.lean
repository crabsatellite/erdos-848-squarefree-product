import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0102 : List Nat :=
  [877]

def block3TwistBatchNormalWords0102 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0102 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP877Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 877
      (block3TwistBatchNormalWords0102 877)
      (block3TwistBatchWords0102 877) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP877 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 877
      (block3TwistBatchNormalWords0102 877)
      (block3TwistBatchWords0102 877) :=
  block3TwistMaskCertificateP877Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0102
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0102) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0102 p)
      (block3TwistBatchWords0102 p) := by
  by_cases hp877 : p = 877
  · subst p; exact block3TwistMaskCertificateP877
  · simp [block3TwistSemanticBatchPrimes0102, hp877] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
