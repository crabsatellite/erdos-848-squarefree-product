import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0034 : List Nat :=
    semanticMaskPrimeGroupB3G0068 ++
    semanticMaskPrimeGroupB3G0069

def block3SemanticBatchWords0034 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0004 then
    block3QrMaskWordsGroup0004 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0034 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0034 block3SemanticBatchWords0034 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0034
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0034) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0034 p) :=
  block3MaskTableBatchCertificate0034.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
