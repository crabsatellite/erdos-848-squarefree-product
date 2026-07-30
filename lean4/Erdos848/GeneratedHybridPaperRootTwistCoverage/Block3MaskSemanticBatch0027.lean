import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0027 : List Nat :=
  [269, 271]

def block3TwistBatchNormalWords0027 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0027 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP269Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 269
      (block3TwistBatchNormalWords0027 269)
      (block3TwistBatchWords0027 269) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP269 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 269
      (block3TwistBatchNormalWords0027 269)
      (block3TwistBatchWords0027 269) :=
  block3TwistMaskCertificateP269Kernel.toSemanticCertificate

def block3TwistMaskCertificateP271Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 271
      (block3TwistBatchNormalWords0027 271)
      (block3TwistBatchWords0027 271) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP271 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 271
      (block3TwistBatchNormalWords0027 271)
      (block3TwistBatchWords0027 271) :=
  block3TwistMaskCertificateP271Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0027
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0027) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0027 p)
      (block3TwistBatchWords0027 p) := by
  by_cases hp269 : p = 269
  · subst p; exact block3TwistMaskCertificateP269
  by_cases hp271 : p = 271
  · subst p; exact block3TwistMaskCertificateP271
  · simp [block3TwistSemanticBatchPrimes0027, hp269, hp271] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
