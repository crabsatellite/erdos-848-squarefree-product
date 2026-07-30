import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0016 : List Nat :=
  [149, 151]

def block3TwistBatchNormalWords0016 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0016 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP149Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 149
      (block3TwistBatchNormalWords0016 149)
      (block3TwistBatchWords0016 149) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP149 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 149
      (block3TwistBatchNormalWords0016 149)
      (block3TwistBatchWords0016 149) :=
  block3TwistMaskCertificateP149Kernel.toSemanticCertificate

def block3TwistMaskCertificateP151Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 151
      (block3TwistBatchNormalWords0016 151)
      (block3TwistBatchWords0016 151) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP151 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 151
      (block3TwistBatchNormalWords0016 151)
      (block3TwistBatchWords0016 151) :=
  block3TwistMaskCertificateP151Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0016
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0016) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0016 p)
      (block3TwistBatchWords0016 p) := by
  by_cases hp149 : p = 149
  · subst p; exact block3TwistMaskCertificateP149
  by_cases hp151 : p = 151
  · subst p; exact block3TwistMaskCertificateP151
  · simp [block3TwistSemanticBatchPrimes0016, hp149, hp151] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
