import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0077 : List Nat :=
  [701]

def block3TwistBatchNormalWords0077 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0077 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP701Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 701
      (block3TwistBatchNormalWords0077 701)
      (block3TwistBatchWords0077 701) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP701 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 701
      (block3TwistBatchNormalWords0077 701)
      (block3TwistBatchWords0077 701) :=
  block3TwistMaskCertificateP701Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0077
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0077) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0077 p)
      (block3TwistBatchWords0077 p) := by
  by_cases hp701 : p = 701
  · subst p; exact block3TwistMaskCertificateP701
  · simp [block3TwistSemanticBatchPrimes0077, hp701] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
