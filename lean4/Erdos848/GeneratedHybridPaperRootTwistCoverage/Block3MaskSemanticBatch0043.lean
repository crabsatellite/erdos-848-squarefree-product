import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0043 : List Nat :=
  [461, 463]

def block3TwistBatchNormalWords0043 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0043 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP461Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 461
      (block3TwistBatchNormalWords0043 461)
      (block3TwistBatchWords0043 461) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP461 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 461
      (block3TwistBatchNormalWords0043 461)
      (block3TwistBatchWords0043 461) :=
  block3TwistMaskCertificateP461Kernel.toSemanticCertificate

def block3TwistMaskCertificateP463Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 463
      (block3TwistBatchNormalWords0043 463)
      (block3TwistBatchWords0043 463) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP463 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 463
      (block3TwistBatchNormalWords0043 463)
      (block3TwistBatchWords0043 463) :=
  block3TwistMaskCertificateP463Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0043
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0043) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0043 p)
      (block3TwistBatchWords0043 p) := by
  by_cases hp461 : p = 461
  · subst p; exact block3TwistMaskCertificateP461
  by_cases hp463 : p = 463
  · subst p; exact block3TwistMaskCertificateP463
  · simp [block3TwistSemanticBatchPrimes0043, hp461, hp463] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
