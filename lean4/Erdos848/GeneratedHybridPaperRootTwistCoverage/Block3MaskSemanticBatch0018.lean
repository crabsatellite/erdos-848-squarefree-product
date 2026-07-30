import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0018 : List Nat :=
  [167, 173]

def block3TwistBatchNormalWords0018 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0018 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP167Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 167
      (block3TwistBatchNormalWords0018 167)
      (block3TwistBatchWords0018 167) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP167 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 167
      (block3TwistBatchNormalWords0018 167)
      (block3TwistBatchWords0018 167) :=
  block3TwistMaskCertificateP167Kernel.toSemanticCertificate

def block3TwistMaskCertificateP173Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 173
      (block3TwistBatchNormalWords0018 173)
      (block3TwistBatchWords0018 173) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP173 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 173
      (block3TwistBatchNormalWords0018 173)
      (block3TwistBatchWords0018 173) :=
  block3TwistMaskCertificateP173Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0018
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0018) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0018 p)
      (block3TwistBatchWords0018 p) := by
  by_cases hp167 : p = 167
  · subst p; exact block3TwistMaskCertificateP167
  by_cases hp173 : p = 173
  · subst p; exact block3TwistMaskCertificateP173
  · simp [block3TwistSemanticBatchPrimes0018, hp167, hp173] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
