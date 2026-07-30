import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0032 : List Nat :=
  [331, 337]

def block3TwistBatchNormalWords0032 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0032 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP331Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 331
      (block3TwistBatchNormalWords0032 331)
      (block3TwistBatchWords0032 331) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP331 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 331
      (block3TwistBatchNormalWords0032 331)
      (block3TwistBatchWords0032 331) :=
  block3TwistMaskCertificateP331Kernel.toSemanticCertificate

def block3TwistMaskCertificateP337Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 337
      (block3TwistBatchNormalWords0032 337)
      (block3TwistBatchWords0032 337) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP337 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 337
      (block3TwistBatchNormalWords0032 337)
      (block3TwistBatchWords0032 337) :=
  block3TwistMaskCertificateP337Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0032
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0032) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0032 p)
      (block3TwistBatchWords0032 p) := by
  by_cases hp331 : p = 331
  · subst p; exact block3TwistMaskCertificateP331
  by_cases hp337 : p = 337
  · subst p; exact block3TwistMaskCertificateP337
  · simp [block3TwistSemanticBatchPrimes0032, hp331, hp337] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
