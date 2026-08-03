import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0120 : List Nat :=
  [1009]

def block3TwistBatchNormalWords0120 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0120 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1009Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1009
      (block3TwistBatchNormalWords0120 1009)
      (block3TwistBatchWords0120 1009) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1009 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1009
      (block3TwistBatchNormalWords0120 1009)
      (block3TwistBatchWords0120 1009) :=
  block3TwistMaskCertificateP1009Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0120
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0120) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0120 p)
      (block3TwistBatchWords0120 p) := by
  by_cases hp1009 : p = 1009
  · subst p; exact block3TwistMaskCertificateP1009
  · simp [block3TwistSemanticBatchPrimes0120, hp1009] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
