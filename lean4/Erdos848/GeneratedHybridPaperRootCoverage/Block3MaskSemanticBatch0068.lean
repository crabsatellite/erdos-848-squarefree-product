import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0068 : List Nat :=
    semanticMaskPrimeGroupB3G0136 ++
    semanticMaskPrimeGroupB3G0137

def block3SemanticBatchWords0068 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0008 then
    block3QrMaskWordsGroup0008 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0068 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0068 block3SemanticBatchWords0068 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0068
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0068) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0068 p) :=
  block3MaskTableBatchCertificate0068.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
