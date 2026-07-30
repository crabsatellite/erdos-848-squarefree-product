import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0062 : List Nat :=
  [607]

def block3TwistBatchNormalWords0062 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0062 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0006 then
    block3TwistQrMaskWordsGroup0006 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP607Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 607
      (block3TwistBatchNormalWords0062 607)
      (block3TwistBatchWords0062 607) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP607 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 607
      (block3TwistBatchNormalWords0062 607)
      (block3TwistBatchWords0062 607) :=
  block3TwistMaskCertificateP607Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0062
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0062) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0062 p)
      (block3TwistBatchWords0062 p) := by
  by_cases hp607 : p = 607
  · subst p; exact block3TwistMaskCertificateP607
  · simp [block3TwistSemanticBatchPrimes0062, hp607] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
