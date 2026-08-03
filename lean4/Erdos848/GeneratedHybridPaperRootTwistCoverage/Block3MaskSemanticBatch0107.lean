import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0107 : List Nat :=
  [911]

def block3TwistBatchNormalWords0107 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0107 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP911Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 911
      (block3TwistBatchNormalWords0107 911)
      (block3TwistBatchWords0107 911) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP911 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 911
      (block3TwistBatchNormalWords0107 911)
      (block3TwistBatchWords0107 911) :=
  block3TwistMaskCertificateP911Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0107
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0107) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0107 p)
      (block3TwistBatchWords0107 p) := by
  by_cases hp911 : p = 911
  · subst p; exact block3TwistMaskCertificateP911
  · simp [block3TwistSemanticBatchPrimes0107, hp911] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
