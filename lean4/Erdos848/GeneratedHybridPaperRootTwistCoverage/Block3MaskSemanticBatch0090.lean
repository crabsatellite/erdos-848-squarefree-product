import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0090 : List Nat :=
  [797]

def block3TwistBatchNormalWords0090 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0090 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0008 then
    block3TwistQrMaskWordsGroup0008 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP797Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 797
      (block3TwistBatchNormalWords0090 797)
      (block3TwistBatchWords0090 797) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP797 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 797
      (block3TwistBatchNormalWords0090 797)
      (block3TwistBatchWords0090 797) :=
  block3TwistMaskCertificateP797Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0090
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0090) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0090 p)
      (block3TwistBatchWords0090 p) := by
  by_cases hp797 : p = 797
  · subst p; exact block3TwistMaskCertificateP797
  · simp [block3TwistSemanticBatchPrimes0090, hp797] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
