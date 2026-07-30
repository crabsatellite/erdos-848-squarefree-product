import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0004 : List Nat :=
  [31, 37]

def block3TwistBatchNormalWords0004 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0004 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0000 then
    block3TwistQrMaskWordsGroup0000 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP31Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 31
      (block3TwistBatchNormalWords0004 31)
      (block3TwistBatchWords0004 31) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP31 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 31
      (block3TwistBatchNormalWords0004 31)
      (block3TwistBatchWords0004 31) :=
  block3TwistMaskCertificateP31Kernel.toSemanticCertificate

def block3TwistMaskCertificateP37Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 37
      (block3TwistBatchNormalWords0004 37)
      (block3TwistBatchWords0004 37) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP37 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 37
      (block3TwistBatchNormalWords0004 37)
      (block3TwistBatchWords0004 37) :=
  block3TwistMaskCertificateP37Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0004
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0004) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0004 p)
      (block3TwistBatchWords0004 p) := by
  by_cases hp31 : p = 31
  · subst p; exact block3TwistMaskCertificateP31
  by_cases hp37 : p = 37
  · subst p; exact block3TwistMaskCertificateP37
  · simp [block3TwistSemanticBatchPrimes0004, hp31, hp37] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
