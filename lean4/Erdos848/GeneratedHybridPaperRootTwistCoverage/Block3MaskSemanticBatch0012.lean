import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0012 : List Nat :=
  [103, 107]

def block3TwistBatchNormalWords0012 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0012 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP103Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 103
      (block3TwistBatchNormalWords0012 103)
      (block3TwistBatchWords0012 103) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP103 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 103
      (block3TwistBatchNormalWords0012 103)
      (block3TwistBatchWords0012 103) :=
  block3TwistMaskCertificateP103Kernel.toSemanticCertificate

def block3TwistMaskCertificateP107Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 107
      (block3TwistBatchNormalWords0012 107)
      (block3TwistBatchWords0012 107) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP107 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 107
      (block3TwistBatchNormalWords0012 107)
      (block3TwistBatchWords0012 107) :=
  block3TwistMaskCertificateP107Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0012
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0012) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0012 p)
      (block3TwistBatchWords0012 p) := by
  by_cases hp103 : p = 103
  · subst p; exact block3TwistMaskCertificateP103
  by_cases hp107 : p = 107
  · subst p; exact block3TwistMaskCertificateP107
  · simp [block3TwistSemanticBatchPrimes0012, hp103, hp107] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
