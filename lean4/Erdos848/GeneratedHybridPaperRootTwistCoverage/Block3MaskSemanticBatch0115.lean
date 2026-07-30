import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0115 : List Nat :=
  [971]

def block3TwistBatchNormalWords0115 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0115 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP971Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 971
      (block3TwistBatchNormalWords0115 971)
      (block3TwistBatchWords0115 971) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP971 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 971
      (block3TwistBatchNormalWords0115 971)
      (block3TwistBatchWords0115 971) :=
  block3TwistMaskCertificateP971Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0115
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0115) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0115 p)
      (block3TwistBatchWords0115 p) := by
  by_cases hp971 : p = 971
  · subst p; exact block3TwistMaskCertificateP971
  · simp [block3TwistSemanticBatchPrimes0115, hp971] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
