import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0005 : List Nat :=
  [41, 43]

def block3TwistBatchNormalWords0005 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0005 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP41Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 41
      (block3TwistBatchNormalWords0005 41)
      (block3TwistBatchWords0005 41) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP41 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 41
      (block3TwistBatchNormalWords0005 41)
      (block3TwistBatchWords0005 41) :=
  block3TwistMaskCertificateP41Kernel.toSemanticCertificate

def block3TwistMaskCertificateP43Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 43
      (block3TwistBatchNormalWords0005 43)
      (block3TwistBatchWords0005 43) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP43 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 43
      (block3TwistBatchNormalWords0005 43)
      (block3TwistBatchWords0005 43) :=
  block3TwistMaskCertificateP43Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0005
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0005) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0005 p)
      (block3TwistBatchWords0005 p) := by
  by_cases hp41 : p = 41
  · subst p; exact block3TwistMaskCertificateP41
  by_cases hp43 : p = 43
  · subst p; exact block3TwistMaskCertificateP43
  · simp [block3TwistSemanticBatchPrimes0005, hp41, hp43] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
