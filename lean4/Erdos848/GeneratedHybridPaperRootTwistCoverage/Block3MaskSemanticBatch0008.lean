import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0008 : List Nat :=
  [67, 71]

def block3TwistBatchNormalWords0008 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0008 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP67Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 67
      (block3TwistBatchNormalWords0008 67)
      (block3TwistBatchWords0008 67) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP67 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 67
      (block3TwistBatchNormalWords0008 67)
      (block3TwistBatchWords0008 67) :=
  block3TwistMaskCertificateP67Kernel.toSemanticCertificate

def block3TwistMaskCertificateP71Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 71
      (block3TwistBatchNormalWords0008 71)
      (block3TwistBatchWords0008 71) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP71 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 71
      (block3TwistBatchNormalWords0008 71)
      (block3TwistBatchWords0008 71) :=
  block3TwistMaskCertificateP71Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0008
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0008) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0008 p)
      (block3TwistBatchWords0008 p) := by
  by_cases hp67 : p = 67
  · subst p; exact block3TwistMaskCertificateP67
  by_cases hp71 : p = 71
  · subst p; exact block3TwistMaskCertificateP71
  · simp [block3TwistSemanticBatchPrimes0008, hp67, hp71] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
