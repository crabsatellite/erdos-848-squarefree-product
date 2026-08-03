import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0007 : List Nat :=
  [59, 61]

def block3TwistBatchNormalWords0007 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0007 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP59Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 59
      (block3TwistBatchNormalWords0007 59)
      (block3TwistBatchWords0007 59) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP59 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 59
      (block3TwistBatchNormalWords0007 59)
      (block3TwistBatchWords0007 59) :=
  block3TwistMaskCertificateP59Kernel.toSemanticCertificate

def block3TwistMaskCertificateP61Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 61
      (block3TwistBatchNormalWords0007 61)
      (block3TwistBatchWords0007 61) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP61 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 61
      (block3TwistBatchNormalWords0007 61)
      (block3TwistBatchWords0007 61) :=
  block3TwistMaskCertificateP61Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0007
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0007) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0007 p)
      (block3TwistBatchWords0007 p) := by
  by_cases hp59 : p = 59
  · subst p; exact block3TwistMaskCertificateP59
  by_cases hp61 : p = 61
  · subst p; exact block3TwistMaskCertificateP61
  · simp [block3TwistSemanticBatchPrimes0007, hp59, hp61] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
