import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0052 : List Nat :=
    semanticMaskPrimeGroupB3G0104 ++
    semanticMaskPrimeGroupB3G0105

def block3SemanticBatchWords0052 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0006 then
    block3QrMaskWordsGroup0006 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0052 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0052 block3SemanticBatchWords0052 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0052
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0052) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0052 p) :=
  block3MaskTableBatchCertificate0052.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
