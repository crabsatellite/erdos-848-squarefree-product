import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0009

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0072 : List Nat :=
    semanticMaskPrimeGroupB3G0144 ++
    semanticMaskPrimeGroupB3G0145

def block3SemanticBatchWords0072 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0009 then
    block3QrMaskWordsGroup0009 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0072 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0072 block3SemanticBatchWords0072 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0072
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0072) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0072 p) :=
  block3MaskTableBatchCertificate0072.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
