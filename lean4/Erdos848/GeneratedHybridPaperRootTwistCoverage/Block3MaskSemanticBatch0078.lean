import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0078 : List Nat :=
  [709]

def block3TwistBatchNormalWords0078 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0078 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0007 then
    block3TwistQrMaskWordsGroup0007 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP709Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 709
      (block3TwistBatchNormalWords0078 709)
      (block3TwistBatchWords0078 709) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP709 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 709
      (block3TwistBatchNormalWords0078 709)
      (block3TwistBatchWords0078 709) :=
  block3TwistMaskCertificateP709Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0078
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0078) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0078 p)
      (block3TwistBatchWords0078 p) := by
  by_cases hp709 : p = 709
  · subst p; exact block3TwistMaskCertificateP709
  · simp [block3TwistSemanticBatchPrimes0078, hp709] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
