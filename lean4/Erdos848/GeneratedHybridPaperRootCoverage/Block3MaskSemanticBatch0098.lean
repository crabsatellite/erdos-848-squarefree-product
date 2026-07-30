import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0098 : List Nat :=
    semanticMaskPrimeGroupB3G0196 ++
    semanticMaskPrimeGroupB3G0197

def block3SemanticBatchWords0098 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0012 then
    block3QrMaskWordsGroup0012 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0098 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0098 block3SemanticBatchWords0098 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0098
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0098) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0098 p) :=
  block3MaskTableBatchCertificate0098.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
