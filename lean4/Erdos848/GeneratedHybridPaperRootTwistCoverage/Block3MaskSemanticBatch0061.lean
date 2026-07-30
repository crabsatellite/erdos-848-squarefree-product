import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0061 : List Nat :=
  [601]

def block3TwistBatchNormalWords0061 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0061 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP601Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 601
      (block3TwistBatchNormalWords0061 601)
      (block3TwistBatchWords0061 601) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP601 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 601
      (block3TwistBatchNormalWords0061 601)
      (block3TwistBatchWords0061 601) :=
  block3TwistMaskCertificateP601Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0061
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0061) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0061 p)
      (block3TwistBatchWords0061 p) := by
  by_cases hp601 : p = 601
  · subst p; exact block3TwistMaskCertificateP601
  · simp [block3TwistSemanticBatchPrimes0061, hp601] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
