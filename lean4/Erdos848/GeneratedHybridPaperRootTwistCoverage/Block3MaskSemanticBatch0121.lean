import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0121 : List Nat :=
  [1013]

def block3TwistBatchNormalWords0121 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0121 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1013Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1013
      (block3TwistBatchNormalWords0121 1013)
      (block3TwistBatchWords0121 1013) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1013 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1013
      (block3TwistBatchNormalWords0121 1013)
      (block3TwistBatchWords0121 1013) :=
  block3TwistMaskCertificateP1013Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0121
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0121) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0121 p)
      (block3TwistBatchWords0121 p) := by
  by_cases hp1013 : p = 1013
  · subst p; exact block3TwistMaskCertificateP1013
  · simp [block3TwistSemanticBatchPrimes0121, hp1013] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
