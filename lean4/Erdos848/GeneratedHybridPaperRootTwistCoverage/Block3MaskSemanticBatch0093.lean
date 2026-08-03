import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0093 : List Nat :=
  [821]

def block3TwistBatchNormalWords0093 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0093 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP821Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 821
      (block3TwistBatchNormalWords0093 821)
      (block3TwistBatchWords0093 821) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP821 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 821
      (block3TwistBatchNormalWords0093 821)
      (block3TwistBatchWords0093 821) :=
  block3TwistMaskCertificateP821Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0093
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0093) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0093 p)
      (block3TwistBatchWords0093 p) := by
  by_cases hp821 : p = 821
  · subst p; exact block3TwistMaskCertificateP821
  · simp [block3TwistSemanticBatchPrimes0093, hp821] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
