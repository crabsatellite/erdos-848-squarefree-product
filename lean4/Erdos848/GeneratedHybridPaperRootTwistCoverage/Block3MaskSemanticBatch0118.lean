import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0118 : List Nat :=
  [991]

def block3TwistBatchNormalWords0118 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0118 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP991Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 991
      (block3TwistBatchNormalWords0118 991)
      (block3TwistBatchWords0118 991) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP991 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 991
      (block3TwistBatchNormalWords0118 991)
      (block3TwistBatchWords0118 991) :=
  block3TwistMaskCertificateP991Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0118
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0118) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0118 p)
      (block3TwistBatchWords0118 p) := by
  by_cases hp991 : p = 991
  · subst p; exact block3TwistMaskCertificateP991
  · simp [block3TwistSemanticBatchPrimes0118, hp991] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
