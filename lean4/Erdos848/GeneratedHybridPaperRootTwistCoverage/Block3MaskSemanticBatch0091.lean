import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0091 : List Nat :=
  [809]

def block3TwistBatchNormalWords0091 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0091 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP809Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 809
      (block3TwistBatchNormalWords0091 809)
      (block3TwistBatchWords0091 809) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP809 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 809
      (block3TwistBatchNormalWords0091 809)
      (block3TwistBatchWords0091 809) :=
  block3TwistMaskCertificateP809Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0091
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0091) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0091 p)
      (block3TwistBatchWords0091 p) := by
  by_cases hp809 : p = 809
  · subst p; exact block3TwistMaskCertificateP809
  · simp [block3TwistSemanticBatchPrimes0091, hp809] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
