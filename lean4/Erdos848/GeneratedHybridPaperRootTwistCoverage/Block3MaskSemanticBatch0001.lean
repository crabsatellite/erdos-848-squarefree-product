import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0001 : List Nat :=
  [11, 13]

def block3TwistBatchNormalWords0001 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0001 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP11Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 11
      (block3TwistBatchNormalWords0001 11)
      (block3TwistBatchWords0001 11) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP11 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 11
      (block3TwistBatchNormalWords0001 11)
      (block3TwistBatchWords0001 11) :=
  block3TwistMaskCertificateP11Kernel.toSemanticCertificate

def block3TwistMaskCertificateP13Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 13
      (block3TwistBatchNormalWords0001 13)
      (block3TwistBatchWords0001 13) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP13 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 13
      (block3TwistBatchNormalWords0001 13)
      (block3TwistBatchWords0001 13) :=
  block3TwistMaskCertificateP13Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0001
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0001) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0001 p)
      (block3TwistBatchWords0001 p) := by
  by_cases hp11 : p = 11
  · subst p; exact block3TwistMaskCertificateP11
  by_cases hp13 : p = 13
  · subst p; exact block3TwistMaskCertificateP13
  · simp [block3TwistSemanticBatchPrimes0001, hp11, hp13] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
