import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0038 : List Nat :=
  [401, 409]

def block3TwistBatchNormalWords0038 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0038 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0004 then
    block3TwistQrMaskWordsGroup0004 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP401Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 401
      (block3TwistBatchNormalWords0038 401)
      (block3TwistBatchWords0038 401) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP401 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 401
      (block3TwistBatchNormalWords0038 401)
      (block3TwistBatchWords0038 401) :=
  block3TwistMaskCertificateP401Kernel.toSemanticCertificate

def block3TwistMaskCertificateP409Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 409
      (block3TwistBatchNormalWords0038 409)
      (block3TwistBatchWords0038 409) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP409 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 409
      (block3TwistBatchNormalWords0038 409)
      (block3TwistBatchWords0038 409) :=
  block3TwistMaskCertificateP409Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0038
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0038) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0038 p)
      (block3TwistBatchWords0038 p) := by
  by_cases hp401 : p = 401
  · subst p; exact block3TwistMaskCertificateP401
  by_cases hp409 : p = 409
  · subst p; exact block3TwistMaskCertificateP409
  · simp [block3TwistSemanticBatchPrimes0038, hp401, hp409] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
