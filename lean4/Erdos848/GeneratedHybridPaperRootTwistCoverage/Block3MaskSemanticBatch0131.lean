import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0131 : List Nat :=
  [1069]

def block3TwistBatchNormalWords0131 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0131 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1069Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1069
      (block3TwistBatchNormalWords0131 1069)
      (block3TwistBatchWords0131 1069) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1069 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1069
      (block3TwistBatchNormalWords0131 1069)
      (block3TwistBatchWords0131 1069) :=
  block3TwistMaskCertificateP1069Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0131
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0131) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0131 p)
      (block3TwistBatchWords0131 p) := by
  by_cases hp1069 : p = 1069
  · subst p; exact block3TwistMaskCertificateP1069
  · simp [block3TwistSemanticBatchPrimes0131, hp1069] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
