import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0092 : List Nat :=
  [811]

def block3TwistBatchNormalWords0092 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0092 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP811Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 811
      (block3TwistBatchNormalWords0092 811)
      (block3TwistBatchWords0092 811) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP811 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 811
      (block3TwistBatchNormalWords0092 811)
      (block3TwistBatchWords0092 811) :=
  block3TwistMaskCertificateP811Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0092
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0092) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0092 p)
      (block3TwistBatchWords0092 p) := by
  by_cases hp811 : p = 811
  · subst p; exact block3TwistMaskCertificateP811
  · simp [block3TwistSemanticBatchPrimes0092, hp811] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
