import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0039 : List Nat :=
    semanticMaskPrimeGroupB3G0078 ++
    semanticMaskPrimeGroupB3G0079

def block3SemanticBatchWords0039 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0004 then
    block3QrMaskWordsGroup0004 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0039 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0039 block3SemanticBatchWords0039 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0039
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0039) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0039 p) :=
  block3MaskTableBatchCertificate0039.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
