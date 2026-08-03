import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0111 : List Nat :=
  [941]

def block3TwistBatchNormalWords0111 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0111 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP941Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 941
      (block3TwistBatchNormalWords0111 941)
      (block3TwistBatchWords0111 941) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP941 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 941
      (block3TwistBatchNormalWords0111 941)
      (block3TwistBatchWords0111 941) :=
  block3TwistMaskCertificateP941Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0111
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0111) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0111 p)
      (block3TwistBatchWords0111 p) := by
  by_cases hp941 : p = 941
  · subst p; exact block3TwistMaskCertificateP941
  · simp [block3TwistSemanticBatchPrimes0111, hp941] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
