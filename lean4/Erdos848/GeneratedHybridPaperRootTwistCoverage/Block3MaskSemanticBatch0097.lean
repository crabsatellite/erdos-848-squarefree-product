import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0097 : List Nat :=
  [839]

def block3TwistBatchNormalWords0097 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0097 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP839Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 839
      (block3TwistBatchNormalWords0097 839)
      (block3TwistBatchWords0097 839) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP839 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 839
      (block3TwistBatchNormalWords0097 839)
      (block3TwistBatchWords0097 839) :=
  block3TwistMaskCertificateP839Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0097
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0097) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0097 p)
      (block3TwistBatchWords0097 p) := by
  by_cases hp839 : p = 839
  · subst p; exact block3TwistMaskCertificateP839
  · simp [block3TwistSemanticBatchPrimes0097, hp839] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
