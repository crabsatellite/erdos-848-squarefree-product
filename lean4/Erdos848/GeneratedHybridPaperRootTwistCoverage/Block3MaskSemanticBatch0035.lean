import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0035 : List Nat :=
  [367, 373]

def block3TwistBatchNormalWords0035 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0035 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP367Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 367
      (block3TwistBatchNormalWords0035 367)
      (block3TwistBatchWords0035 367) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP367 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 367
      (block3TwistBatchNormalWords0035 367)
      (block3TwistBatchWords0035 367) :=
  block3TwistMaskCertificateP367Kernel.toSemanticCertificate

def block3TwistMaskCertificateP373Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 373
      (block3TwistBatchNormalWords0035 373)
      (block3TwistBatchWords0035 373) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP373 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 373
      (block3TwistBatchNormalWords0035 373)
      (block3TwistBatchWords0035 373) :=
  block3TwistMaskCertificateP373Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0035
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0035) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0035 p)
      (block3TwistBatchWords0035 p) := by
  by_cases hp367 : p = 367
  · subst p; exact block3TwistMaskCertificateP367
  by_cases hp373 : p = 373
  · subst p; exact block3TwistMaskCertificateP373
  · simp [block3TwistSemanticBatchPrimes0035, hp367, hp373] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
