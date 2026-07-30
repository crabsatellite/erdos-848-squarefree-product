import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0034 : List Nat :=
  [353, 359]

def block3TwistBatchNormalWords0034 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0034 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP353Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 353
      (block3TwistBatchNormalWords0034 353)
      (block3TwistBatchWords0034 353) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP353 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 353
      (block3TwistBatchNormalWords0034 353)
      (block3TwistBatchWords0034 353) :=
  block3TwistMaskCertificateP353Kernel.toSemanticCertificate

def block3TwistMaskCertificateP359Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 359
      (block3TwistBatchNormalWords0034 359)
      (block3TwistBatchWords0034 359) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP359 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 359
      (block3TwistBatchNormalWords0034 359)
      (block3TwistBatchWords0034 359) :=
  block3TwistMaskCertificateP359Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0034
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0034) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0034 p)
      (block3TwistBatchWords0034 p) := by
  by_cases hp353 : p = 353
  · subst p; exact block3TwistMaskCertificateP353
  by_cases hp359 : p = 359
  · subst p; exact block3TwistMaskCertificateP359
  · simp [block3TwistSemanticBatchPrimes0034, hp353, hp359] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
