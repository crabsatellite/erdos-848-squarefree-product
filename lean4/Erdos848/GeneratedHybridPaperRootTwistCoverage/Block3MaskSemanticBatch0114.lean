import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0114 : List Nat :=
  [967]

def block3TwistBatchNormalWords0114 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0114 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP967Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 967
      (block3TwistBatchNormalWords0114 967)
      (block3TwistBatchWords0114 967) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP967 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 967
      (block3TwistBatchNormalWords0114 967)
      (block3TwistBatchWords0114 967) :=
  block3TwistMaskCertificateP967Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0114
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0114) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0114 p)
      (block3TwistBatchWords0114 p) := by
  by_cases hp967 : p = 967
  · subst p; exact block3TwistMaskCertificateP967
  · simp [block3TwistSemanticBatchPrimes0114, hp967] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
