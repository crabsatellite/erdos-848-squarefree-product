import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0023 : List Nat :=
  [227, 229]

def block3TwistBatchNormalWords0023 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0023 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP227Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 227
      (block3TwistBatchNormalWords0023 227)
      (block3TwistBatchWords0023 227) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP227 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 227
      (block3TwistBatchNormalWords0023 227)
      (block3TwistBatchWords0023 227) :=
  block3TwistMaskCertificateP227Kernel.toSemanticCertificate

def block3TwistMaskCertificateP229Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 229
      (block3TwistBatchNormalWords0023 229)
      (block3TwistBatchWords0023 229) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP229 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 229
      (block3TwistBatchNormalWords0023 229)
      (block3TwistBatchWords0023 229) :=
  block3TwistMaskCertificateP229Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0023
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0023) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0023 p)
      (block3TwistBatchWords0023 p) := by
  by_cases hp227 : p = 227
  · subst p; exact block3TwistMaskCertificateP227
  by_cases hp229 : p = 229
  · subst p; exact block3TwistMaskCertificateP229
  · simp [block3TwistSemanticBatchPrimes0023, hp227, hp229] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
