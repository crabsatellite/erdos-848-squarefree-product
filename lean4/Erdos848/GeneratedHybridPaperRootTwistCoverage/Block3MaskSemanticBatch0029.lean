import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0029 : List Nat :=
  [283, 293]

def block3TwistBatchNormalWords0029 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0029 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP283Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 283
      (block3TwistBatchNormalWords0029 283)
      (block3TwistBatchWords0029 283) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP283 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 283
      (block3TwistBatchNormalWords0029 283)
      (block3TwistBatchWords0029 283) :=
  block3TwistMaskCertificateP283Kernel.toSemanticCertificate

def block3TwistMaskCertificateP293Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 293
      (block3TwistBatchNormalWords0029 293)
      (block3TwistBatchWords0029 293) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP293 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 293
      (block3TwistBatchNormalWords0029 293)
      (block3TwistBatchWords0029 293) :=
  block3TwistMaskCertificateP293Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0029
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0029) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0029 p)
      (block3TwistBatchWords0029 p) := by
  by_cases hp283 : p = 283
  · subst p; exact block3TwistMaskCertificateP283
  by_cases hp293 : p = 293
  · subst p; exact block3TwistMaskCertificateP293
  · simp [block3TwistSemanticBatchPrimes0029, hp283, hp293] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
