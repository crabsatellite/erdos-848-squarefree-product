import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0110 : List Nat :=
  [937]

def block3TwistBatchNormalWords0110 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0110 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP937Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 937
      (block3TwistBatchNormalWords0110 937)
      (block3TwistBatchWords0110 937) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP937 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 937
      (block3TwistBatchNormalWords0110 937)
      (block3TwistBatchWords0110 937) :=
  block3TwistMaskCertificateP937Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0110
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0110) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0110 p)
      (block3TwistBatchWords0110 p) := by
  by_cases hp937 : p = 937
  · subst p; exact block3TwistMaskCertificateP937
  · simp [block3TwistSemanticBatchPrimes0110, hp937] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
