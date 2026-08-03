import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0148 : List Nat :=
  [1201]

def block3TwistBatchNormalWords0148 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0148 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0012 then
    block3TwistQrMaskWordsGroup0012 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1201Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1201
      (block3TwistBatchNormalWords0148 1201)
      (block3TwistBatchWords0148 1201) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1201 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1201
      (block3TwistBatchNormalWords0148 1201)
      (block3TwistBatchWords0148 1201) :=
  block3TwistMaskCertificateP1201Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0148
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0148) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0148 p)
      (block3TwistBatchWords0148 p) := by
  by_cases hp1201 : p = 1201
  · subst p; exact block3TwistMaskCertificateP1201
  · simp [block3TwistSemanticBatchPrimes0148, hp1201] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
