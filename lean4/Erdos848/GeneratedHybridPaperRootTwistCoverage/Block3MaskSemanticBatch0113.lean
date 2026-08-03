import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0113 : List Nat :=
  [953]

def block3TwistBatchNormalWords0113 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0113 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP953Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 953
      (block3TwistBatchNormalWords0113 953)
      (block3TwistBatchWords0113 953) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP953 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 953
      (block3TwistBatchNormalWords0113 953)
      (block3TwistBatchWords0113 953) :=
  block3TwistMaskCertificateP953Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0113
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0113) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0113 p)
      (block3TwistBatchWords0113 p) := by
  by_cases hp953 : p = 953
  · subst p; exact block3TwistMaskCertificateP953
  · simp [block3TwistSemanticBatchPrimes0113, hp953] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
