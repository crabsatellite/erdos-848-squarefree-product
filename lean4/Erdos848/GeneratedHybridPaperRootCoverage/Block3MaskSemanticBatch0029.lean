import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0029 : List Nat :=
    semanticMaskPrimeGroupB3G0058 ++
    semanticMaskPrimeGroupB3G0059

def block3SemanticBatchWords0029 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0003 then
    block3QrMaskWordsGroup0003 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0029 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0029 block3SemanticBatchWords0029 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0029
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0029) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0029 p) :=
  block3MaskTableBatchCertificate0029.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
