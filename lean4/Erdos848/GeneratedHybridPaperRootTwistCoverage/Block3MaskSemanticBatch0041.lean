import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0041 : List Nat :=
  [439, 443]

def block3TwistBatchNormalWords0041 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0041 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP439Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 439
      (block3TwistBatchNormalWords0041 439)
      (block3TwistBatchWords0041 439) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP439 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 439
      (block3TwistBatchNormalWords0041 439)
      (block3TwistBatchWords0041 439) :=
  block3TwistMaskCertificateP439Kernel.toSemanticCertificate

def block3TwistMaskCertificateP443Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 443
      (block3TwistBatchNormalWords0041 443)
      (block3TwistBatchWords0041 443) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP443 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 443
      (block3TwistBatchNormalWords0041 443)
      (block3TwistBatchWords0041 443) :=
  block3TwistMaskCertificateP443Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0041
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0041) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0041 p)
      (block3TwistBatchWords0041 p) := by
  by_cases hp439 : p = 439
  · subst p; exact block3TwistMaskCertificateP439
  by_cases hp443 : p = 443
  · subst p; exact block3TwistMaskCertificateP443
  · simp [block3TwistSemanticBatchPrimes0041, hp439, hp443] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
