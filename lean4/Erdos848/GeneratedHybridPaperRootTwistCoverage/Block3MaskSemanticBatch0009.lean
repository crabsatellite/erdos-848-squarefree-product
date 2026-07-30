import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0009 : List Nat :=
  [73, 79]

def block3TwistBatchNormalWords0009 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0009 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP73Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 73
      (block3TwistBatchNormalWords0009 73)
      (block3TwistBatchWords0009 73) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP73 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 73
      (block3TwistBatchNormalWords0009 73)
      (block3TwistBatchWords0009 73) :=
  block3TwistMaskCertificateP73Kernel.toSemanticCertificate

def block3TwistMaskCertificateP79Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 79
      (block3TwistBatchNormalWords0009 79)
      (block3TwistBatchWords0009 79) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP79 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 79
      (block3TwistBatchNormalWords0009 79)
      (block3TwistBatchWords0009 79) :=
  block3TwistMaskCertificateP79Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0009
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0009) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0009 p)
      (block3TwistBatchWords0009 p) := by
  by_cases hp73 : p = 73
  · subst p; exact block3TwistMaskCertificateP73
  by_cases hp79 : p = 79
  · subst p; exact block3TwistMaskCertificateP79
  · simp [block3TwistSemanticBatchPrimes0009, hp73, hp79] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
