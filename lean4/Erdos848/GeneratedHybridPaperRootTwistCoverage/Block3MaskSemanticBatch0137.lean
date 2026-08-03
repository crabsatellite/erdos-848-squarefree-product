import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0137 : List Nat :=
  [1109]

def block3TwistBatchNormalWords0137 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0137 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1109Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1109
      (block3TwistBatchNormalWords0137 1109)
      (block3TwistBatchWords0137 1109) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1109 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1109
      (block3TwistBatchNormalWords0137 1109)
      (block3TwistBatchWords0137 1109) :=
  block3TwistMaskCertificateP1109Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0137
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0137) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0137 p)
      (block3TwistBatchWords0137 p) := by
  by_cases hp1109 : p = 1109
  · subst p; exact block3TwistMaskCertificateP1109
  · simp [block3TwistSemanticBatchPrimes0137, hp1109] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
