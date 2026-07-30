import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0033 : List Nat :=
  [347, 349]

def block3TwistBatchNormalWords0033 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0033 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP347Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 347
      (block3TwistBatchNormalWords0033 347)
      (block3TwistBatchWords0033 347) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP347 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 347
      (block3TwistBatchNormalWords0033 347)
      (block3TwistBatchWords0033 347) :=
  block3TwistMaskCertificateP347Kernel.toSemanticCertificate

def block3TwistMaskCertificateP349Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 349
      (block3TwistBatchNormalWords0033 349)
      (block3TwistBatchWords0033 349) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP349 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 349
      (block3TwistBatchNormalWords0033 349)
      (block3TwistBatchWords0033 349) :=
  block3TwistMaskCertificateP349Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0033
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0033) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0033 p)
      (block3TwistBatchWords0033 p) := by
  by_cases hp347 : p = 347
  · subst p; exact block3TwistMaskCertificateP347
  by_cases hp349 : p = 349
  · subst p; exact block3TwistMaskCertificateP349
  · simp [block3TwistSemanticBatchPrimes0033, hp347, hp349] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
