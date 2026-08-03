import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0022 : List Nat :=
  [211, 223]

def block3TwistBatchNormalWords0022 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0022 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP211Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 211
      (block3TwistBatchNormalWords0022 211)
      (block3TwistBatchWords0022 211) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP211 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 211
      (block3TwistBatchNormalWords0022 211)
      (block3TwistBatchWords0022 211) :=
  block3TwistMaskCertificateP211Kernel.toSemanticCertificate

def block3TwistMaskCertificateP223Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 223
      (block3TwistBatchNormalWords0022 223)
      (block3TwistBatchWords0022 223) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP223 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 223
      (block3TwistBatchNormalWords0022 223)
      (block3TwistBatchWords0022 223) :=
  block3TwistMaskCertificateP223Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0022
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0022) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0022 p)
      (block3TwistBatchWords0022 p) := by
  by_cases hp211 : p = 211
  · subst p; exact block3TwistMaskCertificateP211
  by_cases hp223 : p = 223
  · subst p; exact block3TwistMaskCertificateP223
  · simp [block3TwistSemanticBatchPrimes0022, hp211, hp223] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
