import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0045 : List Nat :=
  [487, 491]

def block3TwistBatchNormalWords0045 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0045 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP487Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 487
      (block3TwistBatchNormalWords0045 487)
      (block3TwistBatchWords0045 487) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP487 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 487
      (block3TwistBatchNormalWords0045 487)
      (block3TwistBatchWords0045 487) :=
  block3TwistMaskCertificateP487Kernel.toSemanticCertificate

def block3TwistMaskCertificateP491Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 491
      (block3TwistBatchNormalWords0045 491)
      (block3TwistBatchWords0045 491) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP491 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 491
      (block3TwistBatchNormalWords0045 491)
      (block3TwistBatchWords0045 491) :=
  block3TwistMaskCertificateP491Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0045
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0045) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0045 p)
      (block3TwistBatchWords0045 p) := by
  by_cases hp487 : p = 487
  · subst p; exact block3TwistMaskCertificateP487
  by_cases hp491 : p = 491
  · subst p; exact block3TwistMaskCertificateP491
  · simp [block3TwistSemanticBatchPrimes0045, hp487, hp491] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
