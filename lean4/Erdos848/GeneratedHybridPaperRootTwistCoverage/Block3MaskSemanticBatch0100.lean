import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0100 : List Nat :=
  [859]

def block3TwistBatchNormalWords0100 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0100 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0009 then
    block3TwistQrMaskWordsGroup0009 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP859Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 859
      (block3TwistBatchNormalWords0100 859)
      (block3TwistBatchWords0100 859) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP859 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 859
      (block3TwistBatchNormalWords0100 859)
      (block3TwistBatchWords0100 859) :=
  block3TwistMaskCertificateP859Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0100
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0100) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0100 p)
      (block3TwistBatchWords0100 p) := by
  by_cases hp859 : p = 859
  · subst p; exact block3TwistMaskCertificateP859
  · simp [block3TwistSemanticBatchPrimes0100, hp859] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
