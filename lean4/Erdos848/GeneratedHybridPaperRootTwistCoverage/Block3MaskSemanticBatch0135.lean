import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0135 : List Nat :=
  [1097]

def block3TwistBatchNormalWords0135 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0135 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1097Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1097
      (block3TwistBatchNormalWords0135 1097)
      (block3TwistBatchWords0135 1097) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1097 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1097
      (block3TwistBatchNormalWords0135 1097)
      (block3TwistBatchWords0135 1097) :=
  block3TwistMaskCertificateP1097Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0135
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0135) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0135 p)
      (block3TwistBatchWords0135 p) := by
  by_cases hp1097 : p = 1097
  · subst p; exact block3TwistMaskCertificateP1097
  · simp [block3TwistSemanticBatchPrimes0135, hp1097] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
