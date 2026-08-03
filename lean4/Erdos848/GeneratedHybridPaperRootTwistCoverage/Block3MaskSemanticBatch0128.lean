import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0128 : List Nat :=
  [1051]

def block3TwistBatchNormalWords0128 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0128 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1051Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1051
      (block3TwistBatchNormalWords0128 1051)
      (block3TwistBatchWords0128 1051) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1051 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1051
      (block3TwistBatchNormalWords0128 1051)
      (block3TwistBatchWords0128 1051) :=
  block3TwistMaskCertificateP1051Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0128
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0128) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0128 p)
      (block3TwistBatchWords0128 p) := by
  by_cases hp1051 : p = 1051
  · subst p; exact block3TwistMaskCertificateP1051
  · simp [block3TwistSemanticBatchPrimes0128, hp1051] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
