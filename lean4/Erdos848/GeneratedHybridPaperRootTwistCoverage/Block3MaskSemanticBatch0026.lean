import Erdos848.TailHybridPaperTwistMaskChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3TwistMaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3TwistSemanticBatchPrimes0026 : List Nat :=
  [257, 263]

def block3TwistBatchNormalWords0026 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistBatchWords0026 (p : Nat) : List Nat :=
  if p ∈ Erdos848.GeneratedHybridPaperRootCoverage.maskPrimeGroup0003 then
    block3TwistQrMaskWordsGroup0003 p
  else
    Erdos848.GeneratedHybridPaperRootCoverage.block3BaseWords

def block3TwistMaskCertificateP257Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 257
      (block3TwistBatchNormalWords0026 257)
      (block3TwistBatchWords0026 257) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP257 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 257
      (block3TwistBatchNormalWords0026 257)
      (block3TwistBatchWords0026 257) :=
  block3TwistMaskCertificateP257Kernel.toSemanticCertificate

def block3TwistMaskCertificateP263Kernel :
    Erdos848.HybridPaperTwistWordMaskKernelCertificate
      15625 263
      (block3TwistBatchNormalWords0026 263)
      (block3TwistBatchWords0026 263) :=
  ⟨by decide, by decide⟩

def block3TwistMaskCertificateP263 :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 263
      (block3TwistBatchNormalWords0026 263)
      (block3TwistBatchWords0026 263) :=
  block3TwistMaskCertificateP263Kernel.toSemanticCertificate

theorem block3TwistMaskBatchLocalCertificate0026
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0026) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (block3TwistBatchNormalWords0026 p)
      (block3TwistBatchWords0026 p) := by
  by_cases hp257 : p = 257
  · subst p; exact block3TwistMaskCertificateP257
  by_cases hp263 : p = 263
  · subst p; exact block3TwistMaskCertificateP263
  · simp [block3TwistSemanticBatchPrimes0026, hp257, hp263] at hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
