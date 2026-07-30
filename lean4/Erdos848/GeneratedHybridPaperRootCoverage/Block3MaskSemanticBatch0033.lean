import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0033 : List Nat :=
    semanticMaskPrimeGroupB3G0066 ++
    semanticMaskPrimeGroupB3G0067

def block3SemanticBatchWords0033 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0004 then
    block3QrMaskWordsGroup0004 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0033 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0033 block3SemanticBatchWords0033 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0033
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0033) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0033 p) :=
  block3MaskTableBatchCertificate0033.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
