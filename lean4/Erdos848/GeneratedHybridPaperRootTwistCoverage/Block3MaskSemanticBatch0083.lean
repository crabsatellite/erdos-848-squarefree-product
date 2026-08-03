import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0083 : List Nat :=
  [743]

def block3TwistBatchNormalWords0083 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0083 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP743Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 743
      (block3TwistBatchNormalWords0083 743)
      (block3TwistBatchWords0083 743) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP743 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 743
      (block3TwistBatchNormalWords0083 743)
      (block3TwistBatchWords0083 743) :=
  block3TwistMaskCertificateP743Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0083
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0083) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0083 p)
      (block3TwistBatchWords0083 p) := by
  by_cases hp743 : p = 743
  · subst p; exact block3TwistMaskCertificateP743
  · simp [block3TwistSemanticBatchPrimes0083, hp743] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
