import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0084 : List Nat :=
    semanticMaskPrimeGroupB3G0168 ++
    semanticMaskPrimeGroupB3G0169

def block3SemanticBatchWords0084 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0010 then
    block3QrMaskWordsGroup0010 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0084 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0084 block3SemanticBatchWords0084 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0084
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0084) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0084 p) :=
  block3MaskTableBatchCertificate0084.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
