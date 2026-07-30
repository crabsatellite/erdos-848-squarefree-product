import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0037 : List Nat :=
  [389, 397]

def block3TwistBatchNormalWords0037 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0037 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP389Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 389
      (block3TwistBatchNormalWords0037 389)
      (block3TwistBatchWords0037 389) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP389 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 389
      (block3TwistBatchNormalWords0037 389)
      (block3TwistBatchWords0037 389) :=
  block3TwistMaskCertificateP389Kernel.toSemanticCertificate

def block3TwistMaskCertificateP397Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 397
      (block3TwistBatchNormalWords0037 397)
      (block3TwistBatchWords0037 397) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP397 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 397
      (block3TwistBatchNormalWords0037 397)
      (block3TwistBatchWords0037 397) :=
  block3TwistMaskCertificateP397Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0037
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0037) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0037 p)
      (block3TwistBatchWords0037 p) := by
  by_cases hp389 : p = 389
  · subst p; exact block3TwistMaskCertificateP389
  by_cases hp397 : p = 397
  · subst p; exact block3TwistMaskCertificateP397
  · simp [block3TwistSemanticBatchPrimes0037, hp389, hp397] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
