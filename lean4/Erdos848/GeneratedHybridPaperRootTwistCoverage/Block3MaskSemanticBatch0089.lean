import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0089 : List Nat :=
  [787]

def block3TwistBatchNormalWords0089 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0089 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP787Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 787
      (block3TwistBatchNormalWords0089 787)
      (block3TwistBatchWords0089 787) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP787 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 787
      (block3TwistBatchNormalWords0089 787)
      (block3TwistBatchWords0089 787) :=
  block3TwistMaskCertificateP787Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0089
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0089) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0089 p)
      (block3TwistBatchWords0089 p) := by
  by_cases hp787 : p = 787
  · subst p; exact block3TwistMaskCertificateP787
  · simp [block3TwistSemanticBatchPrimes0089, hp787] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
