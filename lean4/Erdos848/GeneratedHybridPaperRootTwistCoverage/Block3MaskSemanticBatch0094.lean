import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0094 : List Nat :=
  [823]

def block3TwistBatchNormalWords0094 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0094 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP823Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 823
      (block3TwistBatchNormalWords0094 823)
      (block3TwistBatchWords0094 823) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP823 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 823
      (block3TwistBatchNormalWords0094 823)
      (block3TwistBatchWords0094 823) :=
  block3TwistMaskCertificateP823Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0094
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0094) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0094 p)
      (block3TwistBatchWords0094 p) := by
  by_cases hp823 : p = 823
  · subst p; exact block3TwistMaskCertificateP823
  · simp [block3TwistSemanticBatchPrimes0094, hp823] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
