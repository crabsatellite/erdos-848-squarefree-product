import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0051 : List Nat :=
  [541]

def block3TwistBatchNormalWords0051 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0051 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP541Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 541
      (block3TwistBatchNormalWords0051 541)
      (block3TwistBatchWords0051 541) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP541 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 541
      (block3TwistBatchNormalWords0051 541)
      (block3TwistBatchWords0051 541) :=
  block3TwistMaskCertificateP541Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0051
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0051) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0051 p)
      (block3TwistBatchWords0051 p) := by
  by_cases hp541 : p = 541
  · subst p; exact block3TwistMaskCertificateP541
  · simp [block3TwistSemanticBatchPrimes0051, hp541] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
