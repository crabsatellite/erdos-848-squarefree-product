import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0028 : List Nat :=
  [277, 281]

def block3TwistBatchNormalWords0028 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0028 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP277Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 277
      (block3TwistBatchNormalWords0028 277)
      (block3TwistBatchWords0028 277) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP277 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 277
      (block3TwistBatchNormalWords0028 277)
      (block3TwistBatchWords0028 277) :=
  block3TwistMaskCertificateP277Kernel.toSemanticCertificate

def block3TwistMaskCertificateP281Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 281
      (block3TwistBatchNormalWords0028 281)
      (block3TwistBatchWords0028 281) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP281 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 281
      (block3TwistBatchNormalWords0028 281)
      (block3TwistBatchWords0028 281) :=
  block3TwistMaskCertificateP281Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0028
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0028) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0028 p)
      (block3TwistBatchWords0028 p) := by
  by_cases hp277 : p = 277
  · subst p; exact block3TwistMaskCertificateP277
  by_cases hp281 : p = 281
  · subst p; exact block3TwistMaskCertificateP281
  · simp [block3TwistSemanticBatchPrimes0028, hp277, hp281] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
