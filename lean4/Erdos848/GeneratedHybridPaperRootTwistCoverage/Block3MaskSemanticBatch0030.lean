import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0030 : List Nat :=
  [307, 311]

def block3TwistBatchNormalWords0030 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0030 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP307Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 307
      (block3TwistBatchNormalWords0030 307)
      (block3TwistBatchWords0030 307) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP307 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 307
      (block3TwistBatchNormalWords0030 307)
      (block3TwistBatchWords0030 307) :=
  block3TwistMaskCertificateP307Kernel.toSemanticCertificate

def block3TwistMaskCertificateP311Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 311
      (block3TwistBatchNormalWords0030 311)
      (block3TwistBatchWords0030 311) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP311 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 311
      (block3TwistBatchNormalWords0030 311)
      (block3TwistBatchWords0030 311) :=
  block3TwistMaskCertificateP311Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0030
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0030) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0030 p)
      (block3TwistBatchWords0030 p) := by
  by_cases hp307 : p = 307
  · subst p; exact block3TwistMaskCertificateP307
  by_cases hp311 : p = 311
  · subst p; exact block3TwistMaskCertificateP311
  · simp [block3TwistSemanticBatchPrimes0030, hp307, hp311] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
