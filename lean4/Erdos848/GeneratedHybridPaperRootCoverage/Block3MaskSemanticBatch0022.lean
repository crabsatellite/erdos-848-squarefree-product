import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0022 : List Nat :=
    semanticMaskPrimeGroupB3G0044 ++
    semanticMaskPrimeGroupB3G0045

def block3SemanticBatchWords0022 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0002 then
    block3QrMaskWordsGroup0002 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0022 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0022 block3SemanticBatchWords0022 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0022
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0022) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0022 p) :=
  block3MaskTableBatchCertificate0022.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
