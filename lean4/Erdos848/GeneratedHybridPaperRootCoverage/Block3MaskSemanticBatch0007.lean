import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0007 : List Nat :=
    semanticMaskPrimeGroupB3G0014 ++
    semanticMaskPrimeGroupB3G0015

def block3SemanticBatchWords0007 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0000 then
    block3QrMaskWordsGroup0000 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0007 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0007 block3SemanticBatchWords0007 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0007
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0007) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0007 p) :=
  block3MaskTableBatchCertificate0007.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
