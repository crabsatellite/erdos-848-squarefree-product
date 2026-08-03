import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0024 : List Nat :=
  [233, 239]

def block3TwistBatchNormalWords0024 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0024 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP233Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 233
      (block3TwistBatchNormalWords0024 233)
      (block3TwistBatchWords0024 233) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP233 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 233
      (block3TwistBatchNormalWords0024 233)
      (block3TwistBatchWords0024 233) :=
  block3TwistMaskCertificateP233Kernel.toSemanticCertificate

def block3TwistMaskCertificateP239Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 239
      (block3TwistBatchNormalWords0024 239)
      (block3TwistBatchWords0024 239) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP239 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 239
      (block3TwistBatchNormalWords0024 239)
      (block3TwistBatchWords0024 239) :=
  block3TwistMaskCertificateP239Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0024
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0024) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0024 p)
      (block3TwistBatchWords0024 p) := by
  by_cases hp233 : p = 233
  · subst p; exact block3TwistMaskCertificateP233
  by_cases hp239 : p = 239
  · subst p; exact block3TwistMaskCertificateP239
  · simp [block3TwistSemanticBatchPrimes0024, hp233, hp239] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
