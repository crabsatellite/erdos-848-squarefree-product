import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0139 : List Nat :=
  [1123]

def block3TwistBatchNormalWords0139 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0139 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1123Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1123
      (block3TwistBatchNormalWords0139 1123)
      (block3TwistBatchWords0139 1123) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1123 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1123
      (block3TwistBatchNormalWords0139 1123)
      (block3TwistBatchWords0139 1123) :=
  block3TwistMaskCertificateP1123Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0139
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0139) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0139 p)
      (block3TwistBatchWords0139 p) := by
  by_cases hp1123 : p = 1123
  · subst p; exact block3TwistMaskCertificateP1123
  · simp [block3TwistSemanticBatchPrimes0139, hp1123] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
