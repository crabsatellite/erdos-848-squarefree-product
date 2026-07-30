import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0012 : List Nat :=
    semanticMaskPrimeGroupB3G0024 ++
    semanticMaskPrimeGroupB3G0025

def block3SemanticBatchWords0012 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0001 then
    block3QrMaskWordsGroup0001 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0012 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0012 block3SemanticBatchWords0012 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0012
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0012) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0012 p) :=
  block3MaskTableBatchCertificate0012.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
