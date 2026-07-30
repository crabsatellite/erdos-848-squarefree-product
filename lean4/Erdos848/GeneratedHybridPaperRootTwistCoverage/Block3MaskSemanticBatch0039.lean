import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0039 : List Nat :=
  [419, 421]

def block3TwistBatchNormalWords0039 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0039 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP419Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 419
      (block3TwistBatchNormalWords0039 419)
      (block3TwistBatchWords0039 419) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP419 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 419
      (block3TwistBatchNormalWords0039 419)
      (block3TwistBatchWords0039 419) :=
  block3TwistMaskCertificateP419Kernel.toSemanticCertificate

def block3TwistMaskCertificateP421Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 421
      (block3TwistBatchNormalWords0039 421)
      (block3TwistBatchWords0039 421) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP421 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 421
      (block3TwistBatchNormalWords0039 421)
      (block3TwistBatchWords0039 421) :=
  block3TwistMaskCertificateP421Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0039
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0039) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0039 p)
      (block3TwistBatchWords0039 p) := by
  by_cases hp419 : p = 419
  · subst p; exact block3TwistMaskCertificateP419
  by_cases hp421 : p = 421
  · subst p; exact block3TwistMaskCertificateP421
  · simp [block3TwistSemanticBatchPrimes0039, hp419, hp421] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
