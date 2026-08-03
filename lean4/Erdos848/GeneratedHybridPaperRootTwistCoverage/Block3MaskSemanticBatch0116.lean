import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0116 : List Nat :=
  [977]

def block3TwistBatchNormalWords0116 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0116 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP977Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 977
      (block3TwistBatchNormalWords0116 977)
      (block3TwistBatchWords0116 977) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP977 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 977
      (block3TwistBatchNormalWords0116 977)
      (block3TwistBatchWords0116 977) :=
  block3TwistMaskCertificateP977Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0116
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0116) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0116 p)
      (block3TwistBatchWords0116 p) := by
  by_cases hp977 : p = 977
  · subst p; exact block3TwistMaskCertificateP977
  · simp [block3TwistSemanticBatchPrimes0116, hp977] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
