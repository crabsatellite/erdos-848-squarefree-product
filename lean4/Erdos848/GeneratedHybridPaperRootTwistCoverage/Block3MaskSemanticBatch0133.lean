import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0133 : List Nat :=
  [1091]

def block3TwistBatchNormalWords0133 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0133 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1091Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1091
      (block3TwistBatchNormalWords0133 1091)
      (block3TwistBatchWords0133 1091) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1091 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1091
      (block3TwistBatchNormalWords0133 1091)
      (block3TwistBatchWords0133 1091) :=
  block3TwistMaskCertificateP1091Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0133
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0133) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0133 p)
      (block3TwistBatchWords0133 p) := by
  by_cases hp1091 : p = 1091
  · subst p; exact block3TwistMaskCertificateP1091
  · simp [block3TwistSemanticBatchPrimes0133, hp1091] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
