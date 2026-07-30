import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0064 : List Nat :=
  [617]

def block3TwistBatchNormalWords0064 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0064 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP617Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 617
      (block3TwistBatchNormalWords0064 617)
      (block3TwistBatchWords0064 617) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP617 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 617
      (block3TwistBatchNormalWords0064 617)
      (block3TwistBatchWords0064 617) :=
  block3TwistMaskCertificateP617Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0064
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0064) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0064 p)
      (block3TwistBatchWords0064 p) := by
  by_cases hp617 : p = 617
  · subst p; exact block3TwistMaskCertificateP617
  · simp [block3TwistSemanticBatchPrimes0064, hp617] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
