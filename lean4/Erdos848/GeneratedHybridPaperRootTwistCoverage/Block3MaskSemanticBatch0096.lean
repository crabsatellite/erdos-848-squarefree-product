import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0096 : List Nat :=
  [829]

def block3TwistBatchNormalWords0096 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0096 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP829Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 829
      (block3TwistBatchNormalWords0096 829)
      (block3TwistBatchWords0096 829) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP829 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 829
      (block3TwistBatchNormalWords0096 829)
      (block3TwistBatchWords0096 829) :=
  block3TwistMaskCertificateP829Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0096
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0096) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0096 p)
      (block3TwistBatchWords0096 p) := by
  by_cases hp829 : p = 829
  · subst p; exact block3TwistMaskCertificateP829
  · simp [block3TwistSemanticBatchPrimes0096, hp829] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
