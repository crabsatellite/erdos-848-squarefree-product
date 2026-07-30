import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0123 : List Nat :=
  [1021]

def block3TwistBatchNormalWords0123 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0123 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0010 then
    block3TwistQrMaskWordsGroup0010 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1021Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1021
      (block3TwistBatchNormalWords0123 1021)
      (block3TwistBatchWords0123 1021) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1021 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1021
      (block3TwistBatchNormalWords0123 1021)
      (block3TwistBatchWords0123 1021) :=
  block3TwistMaskCertificateP1021Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0123
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0123) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0123 p)
      (block3TwistBatchWords0123 p) := by
  by_cases hp1021 : p = 1021
  · subst p; exact block3TwistMaskCertificateP1021
  · simp [block3TwistSemanticBatchPrimes0123, hp1021] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
