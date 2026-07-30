import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0031 : List Nat :=
  [313, 317]

def block3TwistBatchNormalWords0031 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0031 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP313Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 313
      (block3TwistBatchNormalWords0031 313)
      (block3TwistBatchWords0031 313) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP313 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 313
      (block3TwistBatchNormalWords0031 313)
      (block3TwistBatchWords0031 313) :=
  block3TwistMaskCertificateP313Kernel.toSemanticCertificate

def block3TwistMaskCertificateP317Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 317
      (block3TwistBatchNormalWords0031 317)
      (block3TwistBatchWords0031 317) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP317 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 317
      (block3TwistBatchNormalWords0031 317)
      (block3TwistBatchWords0031 317) :=
  block3TwistMaskCertificateP317Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0031
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0031) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0031 p)
      (block3TwistBatchWords0031 p) := by
  by_cases hp313 : p = 313
  · subst p; exact block3TwistMaskCertificateP313
  by_cases hp317 : p = 317
  · subst p; exact block3TwistMaskCertificateP317
  · simp [block3TwistSemanticBatchPrimes0031, hp313, hp317] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
