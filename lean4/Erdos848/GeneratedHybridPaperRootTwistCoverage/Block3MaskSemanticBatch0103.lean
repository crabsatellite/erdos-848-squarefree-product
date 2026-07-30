import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0103 : List Nat :=
  [881]

def block3TwistBatchNormalWords0103 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0103 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP881Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 881
      (block3TwistBatchNormalWords0103 881)
      (block3TwistBatchWords0103 881) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP881 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 881
      (block3TwistBatchNormalWords0103 881)
      (block3TwistBatchWords0103 881) :=
  block3TwistMaskCertificateP881Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0103
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0103) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0103 p)
      (block3TwistBatchWords0103 p) := by
  by_cases hp881 : p = 881
  · subst p; exact block3TwistMaskCertificateP881
  · simp [block3TwistSemanticBatchPrimes0103, hp881] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
