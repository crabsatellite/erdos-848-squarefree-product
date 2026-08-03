import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0099 : List Nat :=
  [857]

def block3TwistBatchNormalWords0099 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0099 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP857Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 857
      (block3TwistBatchNormalWords0099 857)
      (block3TwistBatchWords0099 857) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP857 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 857
      (block3TwistBatchNormalWords0099 857)
      (block3TwistBatchWords0099 857) :=
  block3TwistMaskCertificateP857Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0099
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0099) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0099 p)
      (block3TwistBatchWords0099 p) := by
  by_cases hp857 : p = 857
  · subst p; exact block3TwistMaskCertificateP857
  · simp [block3TwistSemanticBatchPrimes0099, hp857] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
