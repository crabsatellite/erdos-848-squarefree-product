import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0010 : List Nat :=
  [83, 89]

def block3TwistBatchNormalWords0010 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0010 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP83Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 83
      (block3TwistBatchNormalWords0010 83)
      (block3TwistBatchWords0010 83) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP83 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 83
      (block3TwistBatchNormalWords0010 83)
      (block3TwistBatchWords0010 83) :=
  block3TwistMaskCertificateP83Kernel.toSemanticCertificate

def block3TwistMaskCertificateP89Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 89
      (block3TwistBatchNormalWords0010 89)
      (block3TwistBatchWords0010 89) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP89 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 89
      (block3TwistBatchNormalWords0010 89)
      (block3TwistBatchWords0010 89) :=
  block3TwistMaskCertificateP89Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0010
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0010) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0010 p)
      (block3TwistBatchWords0010 p) := by
  by_cases hp83 : p = 83
  · subst p; exact block3TwistMaskCertificateP83
  by_cases hp89 : p = 89
  · subst p; exact block3TwistMaskCertificateP89
  · simp [block3TwistSemanticBatchPrimes0010, hp83, hp89] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
