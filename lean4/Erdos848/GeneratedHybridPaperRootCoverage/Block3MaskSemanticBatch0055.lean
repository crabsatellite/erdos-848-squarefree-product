import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0055 : List Nat :=
    semanticMaskPrimeGroupB3G0110 ++
    semanticMaskPrimeGroupB3G0111

def block3SemanticBatchWords0055 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0006 then
    block3QrMaskWordsGroup0006 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0055 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0055 block3SemanticBatchWords0055 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0055
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0055) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0055 p) :=
  block3MaskTableBatchCertificate0055.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
