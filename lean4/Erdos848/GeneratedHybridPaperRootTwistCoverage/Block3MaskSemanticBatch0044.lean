import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0044 : List Nat :=
  [467, 479]

def block3TwistBatchNormalWords0044 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0044 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP467Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 467
      (block3TwistBatchNormalWords0044 467)
      (block3TwistBatchWords0044 467) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP467 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 467
      (block3TwistBatchNormalWords0044 467)
      (block3TwistBatchWords0044 467) :=
  block3TwistMaskCertificateP467Kernel.toSemanticCertificate

def block3TwistMaskCertificateP479Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 479
      (block3TwistBatchNormalWords0044 479)
      (block3TwistBatchWords0044 479) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP479 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 479
      (block3TwistBatchNormalWords0044 479)
      (block3TwistBatchWords0044 479) :=
  block3TwistMaskCertificateP479Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0044
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0044) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0044 p)
      (block3TwistBatchWords0044 p) := by
  by_cases hp467 : p = 467
  · subst p; exact block3TwistMaskCertificateP467
  by_cases hp479 : p = 479
  · subst p; exact block3TwistMaskCertificateP479
  · simp [block3TwistSemanticBatchPrimes0044, hp467, hp479] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
