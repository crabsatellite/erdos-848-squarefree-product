import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0040 : List Nat :=
  [431, 433]

def block3TwistBatchNormalWords0040 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0040 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP431Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 431
      (block3TwistBatchNormalWords0040 431)
      (block3TwistBatchWords0040 431) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP431 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 431
      (block3TwistBatchNormalWords0040 431)
      (block3TwistBatchWords0040 431) :=
  block3TwistMaskCertificateP431Kernel.toSemanticCertificate

def block3TwistMaskCertificateP433Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 433
      (block3TwistBatchNormalWords0040 433)
      (block3TwistBatchWords0040 433) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP433 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 433
      (block3TwistBatchNormalWords0040 433)
      (block3TwistBatchWords0040 433) :=
  block3TwistMaskCertificateP433Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0040
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0040) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0040 p)
      (block3TwistBatchWords0040 p) := by
  by_cases hp431 : p = 431
  · subst p; exact block3TwistMaskCertificateP431
  by_cases hp433 : p = 433
  · subst p; exact block3TwistMaskCertificateP433
  · simp [block3TwistSemanticBatchPrimes0040, hp431, hp433] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
