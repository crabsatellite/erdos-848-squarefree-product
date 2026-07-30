import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0020 : List Nat :=
  [191, 193]

def block3TwistBatchNormalWords0020 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0020 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP191Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 191
      (block3TwistBatchNormalWords0020 191)
      (block3TwistBatchWords0020 191) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP191 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 191
      (block3TwistBatchNormalWords0020 191)
      (block3TwistBatchWords0020 191) :=
  block3TwistMaskCertificateP191Kernel.toSemanticCertificate

def block3TwistMaskCertificateP193Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 193
      (block3TwistBatchNormalWords0020 193)
      (block3TwistBatchWords0020 193) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP193 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 193
      (block3TwistBatchNormalWords0020 193)
      (block3TwistBatchWords0020 193) :=
  block3TwistMaskCertificateP193Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0020
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0020) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0020 p)
      (block3TwistBatchWords0020 p) := by
  by_cases hp191 : p = 191
  · subst p; exact block3TwistMaskCertificateP191
  by_cases hp193 : p = 193
  · subst p; exact block3TwistMaskCertificateP193
  · simp [block3TwistSemanticBatchPrimes0020, hp191, hp193] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
