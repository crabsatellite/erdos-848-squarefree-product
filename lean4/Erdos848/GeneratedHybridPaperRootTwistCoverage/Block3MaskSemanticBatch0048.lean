import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0048 : List Nat :=
  [509]

def block3TwistBatchNormalWords0048 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0048 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP509Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 509
      (block3TwistBatchNormalWords0048 509)
      (block3TwistBatchWords0048 509) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP509 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 509
      (block3TwistBatchNormalWords0048 509)
      (block3TwistBatchWords0048 509) :=
  block3TwistMaskCertificateP509Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0048
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0048) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0048 p)
      (block3TwistBatchWords0048 p) := by
  by_cases hp509 : p = 509
  · subst p; exact block3TwistMaskCertificateP509
  · simp [block3TwistSemanticBatchPrimes0048, hp509] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
