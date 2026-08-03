import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0042 : List Nat :=
  [449, 457]

def block3TwistBatchNormalWords0042 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0042 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP449Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 449
      (block3TwistBatchNormalWords0042 449)
      (block3TwistBatchWords0042 449) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP449 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 449
      (block3TwistBatchNormalWords0042 449)
      (block3TwistBatchWords0042 449) :=
  block3TwistMaskCertificateP449Kernel.toSemanticCertificate

def block3TwistMaskCertificateP457Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 457
      (block3TwistBatchNormalWords0042 457)
      (block3TwistBatchWords0042 457) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP457 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 457
      (block3TwistBatchNormalWords0042 457)
      (block3TwistBatchWords0042 457) :=
  block3TwistMaskCertificateP457Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0042
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0042) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0042 p)
      (block3TwistBatchWords0042 p) := by
  by_cases hp449 : p = 449
  · subst p; exact block3TwistMaskCertificateP449
  by_cases hp457 : p = 457
  · subst p; exact block3TwistMaskCertificateP457
  · simp [block3TwistSemanticBatchPrimes0042, hp449, hp457] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
