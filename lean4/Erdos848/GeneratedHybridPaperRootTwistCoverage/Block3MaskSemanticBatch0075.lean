import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0075 : List Nat :=
  [683]

def block3TwistBatchNormalWords0075 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0075 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP683Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 683
      (block3TwistBatchNormalWords0075 683)
      (block3TwistBatchWords0075 683) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP683 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 683
      (block3TwistBatchNormalWords0075 683)
      (block3TwistBatchWords0075 683) :=
  block3TwistMaskCertificateP683Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0075
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0075) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0075 p)
      (block3TwistBatchWords0075 p) := by
  by_cases hp683 : p = 683
  · subst p; exact block3TwistMaskCertificateP683
  · simp [block3TwistSemanticBatchPrimes0075, hp683] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
