import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0056 : List Nat :=
  [571]

def block3TwistBatchNormalWords0056 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0056 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP571Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 571
      (block3TwistBatchNormalWords0056 571)
      (block3TwistBatchWords0056 571) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP571 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 571
      (block3TwistBatchNormalWords0056 571)
      (block3TwistBatchWords0056 571) :=
  block3TwistMaskCertificateP571Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0056
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0056) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0056 p)
      (block3TwistBatchWords0056 p) := by
  by_cases hp571 : p = 571
  · subst p; exact block3TwistMaskCertificateP571
  · simp [block3TwistSemanticBatchPrimes0056, hp571] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
