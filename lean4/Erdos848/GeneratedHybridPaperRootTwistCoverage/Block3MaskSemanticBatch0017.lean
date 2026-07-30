import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0017 : List Nat :=
  [157, 163]

def block3TwistBatchNormalWords0017 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0017 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP157Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 157
      (block3TwistBatchNormalWords0017 157)
      (block3TwistBatchWords0017 157) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP157 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 157
      (block3TwistBatchNormalWords0017 157)
      (block3TwistBatchWords0017 157) :=
  block3TwistMaskCertificateP157Kernel.toSemanticCertificate

def block3TwistMaskCertificateP163Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 163
      (block3TwistBatchNormalWords0017 163)
      (block3TwistBatchWords0017 163) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP163 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 163
      (block3TwistBatchNormalWords0017 163)
      (block3TwistBatchWords0017 163) :=
  block3TwistMaskCertificateP163Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0017
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0017) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0017 p)
      (block3TwistBatchWords0017 p) := by
  by_cases hp157 : p = 157
  · subst p; exact block3TwistMaskCertificateP157
  by_cases hp163 : p = 163
  · subst p; exact block3TwistMaskCertificateP163
  · simp [block3TwistSemanticBatchPrimes0017, hp157, hp163] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
