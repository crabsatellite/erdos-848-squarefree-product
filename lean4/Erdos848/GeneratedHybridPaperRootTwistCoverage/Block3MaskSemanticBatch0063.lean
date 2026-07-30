import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0063 : List Nat :=
  [613]

def block3TwistBatchNormalWords0063 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0063 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP613Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 613
      (block3TwistBatchNormalWords0063 613)
      (block3TwistBatchWords0063 613) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP613 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 613
      (block3TwistBatchNormalWords0063 613)
      (block3TwistBatchWords0063 613) :=
  block3TwistMaskCertificateP613Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0063
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0063) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0063 p)
      (block3TwistBatchWords0063 p) := by
  by_cases hp613 : p = 613
  · subst p; exact block3TwistMaskCertificateP613
  · simp [block3TwistSemanticBatchPrimes0063, hp613] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
