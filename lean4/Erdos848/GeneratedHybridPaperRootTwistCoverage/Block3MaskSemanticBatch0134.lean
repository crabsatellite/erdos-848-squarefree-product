import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0134 : List Nat :=
  [1093]

def block3TwistBatchNormalWords0134 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0134 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1093Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1093
      (block3TwistBatchNormalWords0134 1093)
      (block3TwistBatchWords0134 1093) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1093 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1093
      (block3TwistBatchNormalWords0134 1093)
      (block3TwistBatchWords0134 1093) :=
  block3TwistMaskCertificateP1093Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0134
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0134) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0134 p)
      (block3TwistBatchWords0134 p) := by
  by_cases hp1093 : p = 1093
  · subst p; exact block3TwistMaskCertificateP1093
  · simp [block3TwistSemanticBatchPrimes0134, hp1093] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
