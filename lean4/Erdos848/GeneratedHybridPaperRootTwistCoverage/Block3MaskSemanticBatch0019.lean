import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0019 : List Nat :=
  [179, 181]

def block3TwistBatchNormalWords0019 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0019 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0002 then
    block3TwistQrMaskWordsGroup0002 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP179Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 179
      (block3TwistBatchNormalWords0019 179)
      (block3TwistBatchWords0019 179) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP179 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 179
      (block3TwistBatchNormalWords0019 179)
      (block3TwistBatchWords0019 179) :=
  block3TwistMaskCertificateP179Kernel.toSemanticCertificate

def block3TwistMaskCertificateP181Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 181
      (block3TwistBatchNormalWords0019 181)
      (block3TwistBatchWords0019 181) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP181 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 181
      (block3TwistBatchNormalWords0019 181)
      (block3TwistBatchWords0019 181) :=
  block3TwistMaskCertificateP181Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0019
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0019) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0019 p)
      (block3TwistBatchWords0019 p) := by
  by_cases hp179 : p = 179
  · subst p; exact block3TwistMaskCertificateP179
  by_cases hp181 : p = 181
  · subst p; exact block3TwistMaskCertificateP181
  · simp [block3TwistSemanticBatchPrimes0019, hp179, hp181] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
