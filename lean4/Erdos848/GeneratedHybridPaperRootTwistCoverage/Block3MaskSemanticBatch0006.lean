import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0006 : List Nat :=
  [47, 53]

def block3TwistBatchNormalWords0006 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0006 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP47Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 47
      (block3TwistBatchNormalWords0006 47)
      (block3TwistBatchWords0006 47) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP47 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 47
      (block3TwistBatchNormalWords0006 47)
      (block3TwistBatchWords0006 47) :=
  block3TwistMaskCertificateP47Kernel.toSemanticCertificate

def block3TwistMaskCertificateP53Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 53
      (block3TwistBatchNormalWords0006 53)
      (block3TwistBatchWords0006 53) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP53 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 53
      (block3TwistBatchNormalWords0006 53)
      (block3TwistBatchWords0006 53) :=
  block3TwistMaskCertificateP53Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0006
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0006) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0006 p)
      (block3TwistBatchWords0006 p) := by
  by_cases hp47 : p = 47
  · subst p; exact block3TwistMaskCertificateP47
  by_cases hp53 : p = 53
  · subst p; exact block3TwistMaskCertificateP53
  · simp [block3TwistSemanticBatchPrimes0006, hp47, hp53] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
