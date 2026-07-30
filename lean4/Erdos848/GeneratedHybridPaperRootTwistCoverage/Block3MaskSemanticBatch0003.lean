import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0003 : List Nat :=
  [23, 29]

def block3TwistBatchNormalWords0003 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0003 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP23Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 23
      (block3TwistBatchNormalWords0003 23)
      (block3TwistBatchWords0003 23) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP23 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 23
      (block3TwistBatchNormalWords0003 23)
      (block3TwistBatchWords0003 23) :=
  block3TwistMaskCertificateP23Kernel.toSemanticCertificate

def block3TwistMaskCertificateP29Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 29
      (block3TwistBatchNormalWords0003 29)
      (block3TwistBatchWords0003 29) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP29 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 29
      (block3TwistBatchNormalWords0003 29)
      (block3TwistBatchWords0003 29) :=
  block3TwistMaskCertificateP29Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0003
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0003) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0003 p)
      (block3TwistBatchWords0003 p) := by
  by_cases hp23 : p = 23
  · subst p; exact block3TwistMaskCertificateP23
  by_cases hp29 : p = 29
  · subst p; exact block3TwistMaskCertificateP29
  · simp [block3TwistSemanticBatchPrimes0003, hp23, hp29] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
