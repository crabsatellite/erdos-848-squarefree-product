import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0106 : List Nat :=
  [907]

def block3TwistBatchNormalWords0106 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0106 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP907Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 907
      (block3TwistBatchNormalWords0106 907)
      (block3TwistBatchWords0106 907) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP907 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 907
      (block3TwistBatchNormalWords0106 907)
      (block3TwistBatchWords0106 907) :=
  block3TwistMaskCertificateP907Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0106
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0106) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0106 p)
      (block3TwistBatchWords0106 p) := by
  by_cases hp907 : p = 907
  · subst p; exact block3TwistMaskCertificateP907
  · simp [block3TwistSemanticBatchPrimes0106, hp907] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
