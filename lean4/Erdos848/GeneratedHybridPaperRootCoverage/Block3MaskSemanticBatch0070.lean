import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0008

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0070 : List Nat :=
    semanticMaskPrimeGroupB3G0140 ++
    semanticMaskPrimeGroupB3G0141

def block3SemanticBatchWords0070 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0008 then
    block3QrMaskWordsGroup0008 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0070 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0070 block3SemanticBatchWords0070 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0070
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0070) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0070 p) :=
  block3MaskTableBatchCertificate0070.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
