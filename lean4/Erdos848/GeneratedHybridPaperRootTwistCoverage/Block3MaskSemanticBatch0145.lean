import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0145 : List Nat :=
  [1181]

def block3TwistBatchNormalWords0145 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0145 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0011 then
    block3TwistQrMaskWordsGroup0011 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP1181Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 1181
      (block3TwistBatchNormalWords0145 1181)
      (block3TwistBatchWords0145 1181) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP1181 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 1181
      (block3TwistBatchNormalWords0145 1181)
      (block3TwistBatchWords0145 1181) :=
  block3TwistMaskCertificateP1181Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0145
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0145) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0145 p)
      (block3TwistBatchWords0145 p) := by
  by_cases hp1181 : p = 1181
  · subst p; exact block3TwistMaskCertificateP1181
  · simp [block3TwistSemanticBatchPrimes0145, hp1181] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
