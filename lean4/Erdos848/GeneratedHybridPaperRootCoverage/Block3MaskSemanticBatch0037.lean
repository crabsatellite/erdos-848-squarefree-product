import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0037 : List Nat :=
    semanticMaskPrimeGroupB3G0074 ++
    semanticMaskPrimeGroupB3G0075

def block3SemanticBatchWords0037 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0004 then
    block3QrMaskWordsGroup0004 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0037 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0037 block3SemanticBatchWords0037 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0037
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0037) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0037 p) :=
  block3MaskTableBatchCertificate0037.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
