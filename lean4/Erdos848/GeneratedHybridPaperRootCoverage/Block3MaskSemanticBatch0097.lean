import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0097 : List Nat :=
    semanticMaskPrimeGroupB3G0194 ++
    semanticMaskPrimeGroupB3G0195

def block3SemanticBatchWords0097 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0012 then
    block3QrMaskWordsGroup0012 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0097 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0097 block3SemanticBatchWords0097 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0097
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0097) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0097 p) :=
  block3MaskTableBatchCertificate0097.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
