import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0003

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0028 : List Nat :=
    semanticMaskPrimeGroupB3G0056 ++
    semanticMaskPrimeGroupB3G0057

def block3SemanticBatchWords0028 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0003 then
    block3QrMaskWordsGroup0003 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0028 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0028 block3SemanticBatchWords0028 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0028
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0028) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0028 p) :=
  block3MaskTableBatchCertificate0028.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
