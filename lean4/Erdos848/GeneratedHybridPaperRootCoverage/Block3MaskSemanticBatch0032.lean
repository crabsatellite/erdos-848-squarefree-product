import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0004

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0032 : List Nat :=
    semanticMaskPrimeGroupB3G0064 ++
    semanticMaskPrimeGroupB3G0065

def block3SemanticBatchWords0032 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0004 then
    block3QrMaskWordsGroup0004 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0032 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0032 block3SemanticBatchWords0032 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0032
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0032) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0032 p) :=
  block3MaskTableBatchCertificate0032.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
