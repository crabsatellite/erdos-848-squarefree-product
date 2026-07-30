import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0036 : List Nat :=
  [379, 383]

def block3TwistBatchNormalWords0036 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0036 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP379Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 379
      (block3TwistBatchNormalWords0036 379)
      (block3TwistBatchWords0036 379) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP379 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 379
      (block3TwistBatchNormalWords0036 379)
      (block3TwistBatchWords0036 379) :=
  block3TwistMaskCertificateP379Kernel.toSemanticCertificate

def block3TwistMaskCertificateP383Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 383
      (block3TwistBatchNormalWords0036 383)
      (block3TwistBatchWords0036 383) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP383 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 383
      (block3TwistBatchNormalWords0036 383)
      (block3TwistBatchWords0036 383) :=
  block3TwistMaskCertificateP383Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0036
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0036) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0036 p)
      (block3TwistBatchWords0036 p) := by
  by_cases hp379 : p = 379
  · subst p; exact block3TwistMaskCertificateP379
  by_cases hp383 : p = 383
  · subst p; exact block3TwistMaskCertificateP383
  · simp [block3TwistSemanticBatchPrimes0036, hp379, hp383] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
