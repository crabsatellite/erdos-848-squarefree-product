import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0098 : List Nat :=
  [853]

def block3TwistBatchNormalWords0098 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0098 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP853Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 853
      (block3TwistBatchNormalWords0098 853)
      (block3TwistBatchWords0098 853) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP853 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 853
      (block3TwistBatchNormalWords0098 853)
      (block3TwistBatchWords0098 853) :=
  block3TwistMaskCertificateP853Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0098
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0098) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0098 p)
      (block3TwistBatchWords0098 p) := by
  by_cases hp853 : p = 853
  · subst p; exact block3TwistMaskCertificateP853
  · simp [block3TwistSemanticBatchPrimes0098, hp853] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
