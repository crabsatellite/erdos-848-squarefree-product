import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0013 : List Nat :=
  [109, 113]

def block3TwistBatchNormalWords0013 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0013 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP109Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 109
      (block3TwistBatchNormalWords0013 109)
      (block3TwistBatchWords0013 109) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP109 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 109
      (block3TwistBatchNormalWords0013 109)
      (block3TwistBatchWords0013 109) :=
  block3TwistMaskCertificateP109Kernel.toSemanticCertificate

def block3TwistMaskCertificateP113Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 113
      (block3TwistBatchNormalWords0013 113)
      (block3TwistBatchWords0013 113) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP113 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 113
      (block3TwistBatchNormalWords0013 113)
      (block3TwistBatchWords0013 113) :=
  block3TwistMaskCertificateP113Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0013
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0013) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0013 p)
      (block3TwistBatchWords0013 p) := by
  by_cases hp109 : p = 109
  · subst p; exact block3TwistMaskCertificateP109
  by_cases hp113 : p = 113
  · subst p; exact block3TwistMaskCertificateP113
  · simp [block3TwistSemanticBatchPrimes0013, hp109, hp113] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
