import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0084 : List Nat :=
  [751]

def block3TwistBatchNormalWords0084 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0084 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP751Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 751
      (block3TwistBatchNormalWords0084 751)
      (block3TwistBatchWords0084 751) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP751 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 751
      (block3TwistBatchNormalWords0084 751)
      (block3TwistBatchWords0084 751) :=
  block3TwistMaskCertificateP751Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0084
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0084) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0084 p)
      (block3TwistBatchWords0084 p) := by
  by_cases hp751 : p = 751
  · subst p; exact block3TwistMaskCertificateP751
  · simp [block3TwistSemanticBatchPrimes0084, hp751] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
