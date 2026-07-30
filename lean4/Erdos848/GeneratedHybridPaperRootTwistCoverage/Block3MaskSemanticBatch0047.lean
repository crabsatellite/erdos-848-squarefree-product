import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0047 : List Nat :=
  [503]

def block3TwistBatchNormalWords0047 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0047 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0005 then
    block3TwistQrMaskWordsGroup0005 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP503Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 503
      (block3TwistBatchNormalWords0047 503)
      (block3TwistBatchWords0047 503) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP503 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 503
      (block3TwistBatchNormalWords0047 503)
      (block3TwistBatchWords0047 503) :=
  block3TwistMaskCertificateP503Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0047
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0047) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0047 p)
      (block3TwistBatchWords0047 p) := by
  by_cases hp503 : p = 503
  · subst p; exact block3TwistMaskCertificateP503
  · simp [block3TwistSemanticBatchPrimes0047, hp503] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
