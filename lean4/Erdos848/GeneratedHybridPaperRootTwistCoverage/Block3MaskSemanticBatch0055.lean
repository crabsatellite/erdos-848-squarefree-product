import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0055 : List Nat :=
  [569]

def block3TwistBatchNormalWords0055 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0055 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP569Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 569
      (block3TwistBatchNormalWords0055 569)
      (block3TwistBatchWords0055 569) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP569 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 569
      (block3TwistBatchNormalWords0055 569)
      (block3TwistBatchWords0055 569) :=
  block3TwistMaskCertificateP569Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0055
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0055) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0055 p)
      (block3TwistBatchWords0055 p) := by
  by_cases hp569 : p = 569
  · subst p; exact block3TwistMaskCertificateP569
  · simp [block3TwistSemanticBatchPrimes0055, hp569] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
