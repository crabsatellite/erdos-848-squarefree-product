import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0104 : List Nat :=
  [883]

def block3TwistBatchNormalWords0104 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0104 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP883Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 883
      (block3TwistBatchNormalWords0104 883)
      (block3TwistBatchWords0104 883) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP883 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 883
      (block3TwistBatchNormalWords0104 883)
      (block3TwistBatchWords0104 883) :=
  block3TwistMaskCertificateP883Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0104
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0104) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0104 p)
      (block3TwistBatchWords0104 p) := by
  by_cases hp883 : p = 883
  · subst p; exact block3TwistMaskCertificateP883
  · simp [block3TwistSemanticBatchPrimes0104, hp883] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
