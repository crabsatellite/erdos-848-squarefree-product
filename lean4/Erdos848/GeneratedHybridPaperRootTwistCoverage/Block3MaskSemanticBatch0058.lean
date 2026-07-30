import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0058 : List Nat :=
  [587]

def block3TwistBatchNormalWords0058 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0058 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP587Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 587
      (block3TwistBatchNormalWords0058 587)
      (block3TwistBatchWords0058 587) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP587 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 587
      (block3TwistBatchNormalWords0058 587)
      (block3TwistBatchWords0058 587) :=
  block3TwistMaskCertificateP587Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0058
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0058) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0058 p)
      (block3TwistBatchWords0058 p) := by
  by_cases hp587 : p = 587
  · subst p; exact block3TwistMaskCertificateP587
  · simp [block3TwistSemanticBatchPrimes0058, hp587] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
