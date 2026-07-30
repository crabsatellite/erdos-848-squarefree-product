import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0016 : List Nat :=
    semanticMaskPrimeGroupB3G0032 ++
    semanticMaskPrimeGroupB3G0033

def block3SemanticBatchWords0016 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0002 then
    block3QrMaskWordsGroup0002 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0016 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0016 block3SemanticBatchWords0016 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0016
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0016) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0016 p) :=
  block3MaskTableBatchCertificate0016.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
