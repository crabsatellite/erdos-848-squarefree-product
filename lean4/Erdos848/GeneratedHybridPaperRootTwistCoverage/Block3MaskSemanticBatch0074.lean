import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0074 : List Nat :=
  [677]

def block3TwistBatchNormalWords0074 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0074 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP677Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 677
      (block3TwistBatchNormalWords0074 677)
      (block3TwistBatchWords0074 677) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP677 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 677
      (block3TwistBatchNormalWords0074 677)
      (block3TwistBatchWords0074 677) :=
  block3TwistMaskCertificateP677Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0074
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0074) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0074 p)
      (block3TwistBatchWords0074 p) := by
  by_cases hp677 : p = 677
  · subst p; exact block3TwistMaskCertificateP677
  · simp [block3TwistSemanticBatchPrimes0074, hp677] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
