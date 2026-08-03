import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0143 : List Nat :=
  [1163]

def block3TwistBatchNormalWords0143 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0143 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1163Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1163
      (block3TwistBatchNormalWords0143 1163)
      (block3TwistBatchWords0143 1163) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1163 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1163
      (block3TwistBatchNormalWords0143 1163)
      (block3TwistBatchWords0143 1163) :=
  block3TwistMaskCertificateP1163Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0143
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0143) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0143 p)
      (block3TwistBatchWords0143 p) := by
  by_cases hp1163 : p = 1163
  · subst p; exact block3TwistMaskCertificateP1163
  · simp [block3TwistSemanticBatchPrimes0143, hp1163] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
