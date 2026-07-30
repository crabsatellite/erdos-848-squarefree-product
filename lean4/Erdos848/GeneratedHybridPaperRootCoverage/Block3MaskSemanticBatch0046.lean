import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0046 : List Nat :=
    semanticMaskPrimeGroupB3G0092 ++
    semanticMaskPrimeGroupB3G0093

def block3SemanticBatchWords0046 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0005 then
    block3QrMaskWordsGroup0005 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0046 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0046 block3SemanticBatchWords0046 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0046
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0046) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0046 p) :=
  block3MaskTableBatchCertificate0046.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
