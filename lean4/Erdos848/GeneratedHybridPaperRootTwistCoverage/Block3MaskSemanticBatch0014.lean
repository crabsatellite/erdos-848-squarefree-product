import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0014 : List Nat :=
  [127, 131]

def block3TwistBatchNormalWords0014 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0014 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0001 then
    block3TwistQrMaskWordsGroup0001 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP127Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 127
      (block3TwistBatchNormalWords0014 127)
      (block3TwistBatchWords0014 127) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP127 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 127
      (block3TwistBatchNormalWords0014 127)
      (block3TwistBatchWords0014 127) :=
  block3TwistMaskCertificateP127Kernel.toSemanticCertificate

def block3TwistMaskCertificateP131Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 131
      (block3TwistBatchNormalWords0014 131)
      (block3TwistBatchWords0014 131) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP131 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 131
      (block3TwistBatchNormalWords0014 131)
      (block3TwistBatchWords0014 131) :=
  block3TwistMaskCertificateP131Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0014
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0014) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0014 p)
      (block3TwistBatchWords0014 p) := by
  by_cases hp127 : p = 127
  · subst p; exact block3TwistMaskCertificateP127
  by_cases hp131 : p = 131
  · subst p; exact block3TwistMaskCertificateP131
  · simp [block3TwistSemanticBatchPrimes0014, hp127, hp131] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
