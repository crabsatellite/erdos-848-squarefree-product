import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0000 : List Nat :=
  [3, 7]

def block3TwistBatchNormalWords0000 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0000 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP3Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 3
      (block3TwistBatchNormalWords0000 3)
      (block3TwistBatchWords0000 3) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP3 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 3
      (block3TwistBatchNormalWords0000 3)
      (block3TwistBatchWords0000 3) :=
  block3TwistMaskCertificateP3Kernel.toSemanticCertificate

def block3TwistMaskCertificateP7Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 7
      (block3TwistBatchNormalWords0000 7)
      (block3TwistBatchWords0000 7) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP7 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 7
      (block3TwistBatchNormalWords0000 7)
      (block3TwistBatchWords0000 7) :=
  block3TwistMaskCertificateP7Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0000
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0000) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0000 p)
      (block3TwistBatchWords0000 p) := by
  by_cases hp3 : p = 3
  · subst p; exact block3TwistMaskCertificateP3
  by_cases hp7 : p = 7
  · subst p; exact block3TwistMaskCertificateP7
  · simp [block3TwistSemanticBatchPrimes0000, hp3, hp7] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
