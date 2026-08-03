import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0011 : List Nat :=
  [97, 101]

def block3TwistBatchNormalWords0011 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0011 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP97Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 97
      (block3TwistBatchNormalWords0011 97)
      (block3TwistBatchWords0011 97) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP97 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 97
      (block3TwistBatchNormalWords0011 97)
      (block3TwistBatchWords0011 97) :=
  block3TwistMaskCertificateP97Kernel.toSemanticCertificate

def block3TwistMaskCertificateP101Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 101
      (block3TwistBatchNormalWords0011 101)
      (block3TwistBatchWords0011 101) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP101 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 101
      (block3TwistBatchNormalWords0011 101)
      (block3TwistBatchWords0011 101) :=
  block3TwistMaskCertificateP101Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0011
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0011) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0011 p)
      (block3TwistBatchWords0011 p) := by
  by_cases hp97 : p = 97
  · subst p; exact block3TwistMaskCertificateP97
  by_cases hp101 : p = 101
  · subst p; exact block3TwistMaskCertificateP101
  · simp [block3TwistSemanticBatchPrimes0011, hp97, hp101] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
