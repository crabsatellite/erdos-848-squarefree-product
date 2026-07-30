import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0072 : List Nat :=
  [661]

def block3TwistBatchNormalWords0072 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0072 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP661Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 661
      (block3TwistBatchNormalWords0072 661)
      (block3TwistBatchWords0072 661) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP661 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 661
      (block3TwistBatchNormalWords0072 661)
      (block3TwistBatchWords0072 661) :=
  block3TwistMaskCertificateP661Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0072
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0072) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0072 p)
      (block3TwistBatchWords0072 p) := by
  by_cases hp661 : p = 661
  · subst p; exact block3TwistMaskCertificateP661
  · simp [block3TwistSemanticBatchPrimes0072, hp661] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
