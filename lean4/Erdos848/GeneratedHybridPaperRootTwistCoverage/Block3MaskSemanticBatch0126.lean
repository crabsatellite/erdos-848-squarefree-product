import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0126 : List Nat :=
  [1039]

def block3TwistBatchNormalWords0126 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0126 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1039Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1039
      (block3TwistBatchNormalWords0126 1039)
      (block3TwistBatchWords0126 1039) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1039 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1039
      (block3TwistBatchNormalWords0126 1039)
      (block3TwistBatchWords0126 1039) :=
  block3TwistMaskCertificateP1039Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0126
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0126) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0126 p)
      (block3TwistBatchWords0126 p) := by
  by_cases hp1039 : p = 1039
  · subst p; exact block3TwistMaskCertificateP1039
  · simp [block3TwistSemanticBatchPrimes0126, hp1039] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
