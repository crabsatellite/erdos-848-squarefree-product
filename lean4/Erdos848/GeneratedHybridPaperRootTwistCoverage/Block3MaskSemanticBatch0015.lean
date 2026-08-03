import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0015 : List Nat :=
  [137, 139]

def block3TwistBatchNormalWords0015 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0015 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP137Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 137
      (block3TwistBatchNormalWords0015 137)
      (block3TwistBatchWords0015 137) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP137 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 137
      (block3TwistBatchNormalWords0015 137)
      (block3TwistBatchWords0015 137) :=
  block3TwistMaskCertificateP137Kernel.toSemanticCertificate

def block3TwistMaskCertificateP139Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 139
      (block3TwistBatchNormalWords0015 139)
      (block3TwistBatchWords0015 139) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP139 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 139
      (block3TwistBatchNormalWords0015 139)
      (block3TwistBatchWords0015 139) :=
  block3TwistMaskCertificateP139Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0015
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0015) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0015 p)
      (block3TwistBatchWords0015 p) := by
  by_cases hp137 : p = 137
  · subst p; exact block3TwistMaskCertificateP137
  by_cases hp139 : p = 139
  · subst p; exact block3TwistMaskCertificateP139
  · simp [block3TwistSemanticBatchPrimes0015, hp137, hp139] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
