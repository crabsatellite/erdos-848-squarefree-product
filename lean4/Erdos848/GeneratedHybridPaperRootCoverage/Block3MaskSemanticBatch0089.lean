import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0011

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0089 : List Nat :=
    semanticMaskPrimeGroupB3G0178 ++
    semanticMaskPrimeGroupB3G0179

def block3SemanticBatchWords0089 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0011 then
    block3QrMaskWordsGroup0011 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0089 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0089 block3SemanticBatchWords0089 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0089
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0089) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0089 p) :=
  block3MaskTableBatchCertificate0089.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
