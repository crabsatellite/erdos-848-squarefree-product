import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0007

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0062 : List Nat :=
    semanticMaskPrimeGroupB3G0124 ++
    semanticMaskPrimeGroupB3G0125

def block3SemanticBatchWords0062 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0007 then
    block3QrMaskWordsGroup0007 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0062 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0062 block3SemanticBatchWords0062 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0062
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0062) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0062 p) :=
  block3MaskTableBatchCertificate0062.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
