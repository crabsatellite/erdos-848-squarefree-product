import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0017 : List Nat :=
    semanticMaskPrimeGroupB3G0034 ++
    semanticMaskPrimeGroupB3G0035

def block3SemanticBatchWords0017 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0002 then
    block3QrMaskWordsGroup0002 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0017 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0017 block3SemanticBatchWords0017 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0017
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0017) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0017 p) :=
  block3MaskTableBatchCertificate0017.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
