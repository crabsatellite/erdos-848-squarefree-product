import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0082 : List Nat :=
  [739]

def block3TwistBatchNormalWords0082 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0082 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP739Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 739
      (block3TwistBatchNormalWords0082 739)
      (block3TwistBatchWords0082 739) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP739 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 739
      (block3TwistBatchNormalWords0082 739)
      (block3TwistBatchWords0082 739) :=
  block3TwistMaskCertificateP739Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0082
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0082) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0082 p)
      (block3TwistBatchWords0082 p) := by
  by_cases hp739 : p = 739
  · subst p; exact block3TwistMaskCertificateP739
  · simp [block3TwistSemanticBatchPrimes0082, hp739] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
