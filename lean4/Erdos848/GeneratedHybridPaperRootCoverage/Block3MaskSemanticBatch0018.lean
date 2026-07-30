import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0018 : List Nat :=
    semanticMaskPrimeGroupB3G0036 ++
    semanticMaskPrimeGroupB3G0037

def block3SemanticBatchWords0018 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0002 then
    block3QrMaskWordsGroup0002 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0018 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0018 block3SemanticBatchWords0018 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0018
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0018) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0018 p) :=
  block3MaskTableBatchCertificate0018.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
