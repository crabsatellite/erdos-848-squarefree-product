import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0002 : List Nat :=
  [17, 19]

def block3TwistBatchNormalWords0002 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0002 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP17Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 17
      (block3TwistBatchNormalWords0002 17)
      (block3TwistBatchWords0002 17) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP17 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 17
      (block3TwistBatchNormalWords0002 17)
      (block3TwistBatchWords0002 17) :=
  block3TwistMaskCertificateP17Kernel.toSemanticCertificate

def block3TwistMaskCertificateP19Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 19
      (block3TwistBatchNormalWords0002 19)
      (block3TwistBatchWords0002 19) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP19 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 19
      (block3TwistBatchNormalWords0002 19)
      (block3TwistBatchWords0002 19) :=
  block3TwistMaskCertificateP19Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0002
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0002) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0002 p)
      (block3TwistBatchWords0002 p) := by
  by_cases hp17 : p = 17
  · subst p; exact block3TwistMaskCertificateP17
  by_cases hp19 : p = 19
  · subst p; exact block3TwistMaskCertificateP19
  · simp [block3TwistSemanticBatchPrimes0002, hp17, hp19] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
