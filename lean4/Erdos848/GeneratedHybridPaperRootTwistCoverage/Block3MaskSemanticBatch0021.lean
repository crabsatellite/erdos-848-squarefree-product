import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0021 : List Nat :=
  [197, 199]

def block3TwistBatchNormalWords0021 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0021 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP197Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 197
      (block3TwistBatchNormalWords0021 197)
      (block3TwistBatchWords0021 197) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP197 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 197
      (block3TwistBatchNormalWords0021 197)
      (block3TwistBatchWords0021 197) :=
  block3TwistMaskCertificateP197Kernel.toSemanticCertificate

def block3TwistMaskCertificateP199Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 199
      (block3TwistBatchNormalWords0021 199)
      (block3TwistBatchWords0021 199) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP199 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 199
      (block3TwistBatchNormalWords0021 199)
      (block3TwistBatchWords0021 199) :=
  block3TwistMaskCertificateP199Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0021
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0021) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0021 p)
      (block3TwistBatchWords0021 p) := by
  by_cases hp197 : p = 197
  · subst p; exact block3TwistMaskCertificateP197
  by_cases hp199 : p = 199
  · subst p; exact block3TwistMaskCertificateP199
  · simp [block3TwistSemanticBatchPrimes0021, hp197, hp199] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
