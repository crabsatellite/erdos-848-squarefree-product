import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0006

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0051 : List Nat :=
    semanticMaskPrimeGroupB3G0102 ++
    semanticMaskPrimeGroupB3G0103

def block3SemanticBatchWords0051 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0006 then
    block3QrMaskWordsGroup0006 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0051 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0051 block3SemanticBatchWords0051 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0051
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0051) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0051 p) :=
  block3MaskTableBatchCertificate0051.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
