import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0025 : List Nat :=
  [241, 251]

def block3TwistBatchNormalWords0025 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0025 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP241Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 241
      (block3TwistBatchNormalWords0025 241)
      (block3TwistBatchWords0025 241) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP241 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 241
      (block3TwistBatchNormalWords0025 241)
      (block3TwistBatchWords0025 241) :=
  block3TwistMaskCertificateP241Kernel.toSemanticCertificate

def block3TwistMaskCertificateP251Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 251
      (block3TwistBatchNormalWords0025 251)
      (block3TwistBatchWords0025 251) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP251 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 251
      (block3TwistBatchNormalWords0025 251)
      (block3TwistBatchWords0025 251) :=
  block3TwistMaskCertificateP251Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0025
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0025) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0025 p)
      (block3TwistBatchWords0025 p) := by
  by_cases hp241 : p = 241
  · subst p; exact block3TwistMaskCertificateP241
  by_cases hp251 : p = 251
  · subst p; exact block3TwistMaskCertificateP251
  · simp [block3TwistSemanticBatchPrimes0025, hp241, hp251] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
