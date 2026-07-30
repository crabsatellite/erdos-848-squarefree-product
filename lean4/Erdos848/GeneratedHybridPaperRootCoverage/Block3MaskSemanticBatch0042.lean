import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0005

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0042 : List Nat :=
    semanticMaskPrimeGroupB3G0084 ++
    semanticMaskPrimeGroupB3G0085

def block3SemanticBatchWords0042 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0005 then
    block3QrMaskWordsGroup0005 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0042 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0042 block3SemanticBatchWords0042 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0042
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0042) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0042 p) :=
  block3MaskTableBatchCertificate0042.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
