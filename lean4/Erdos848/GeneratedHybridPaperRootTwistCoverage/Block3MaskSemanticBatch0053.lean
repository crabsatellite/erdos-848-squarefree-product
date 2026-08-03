import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0053 : List Nat :=
  [557]

def block3TwistBatchNormalWords0053 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0053 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP557Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 557
      (block3TwistBatchNormalWords0053 557)
      (block3TwistBatchWords0053 557) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP557 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 557
      (block3TwistBatchNormalWords0053 557)
      (block3TwistBatchWords0053 557) :=
  block3TwistMaskCertificateP557Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0053
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0053) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0053 p)
      (block3TwistBatchWords0053 p) := by
  by_cases hp557 : p = 557
  · subst p; exact block3TwistMaskCertificateP557
  · simp [block3TwistSemanticBatchPrimes0053, hp557] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
