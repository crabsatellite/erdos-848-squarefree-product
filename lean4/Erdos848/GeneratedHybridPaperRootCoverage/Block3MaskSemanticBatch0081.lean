import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0010

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0081 : List Nat :=
    semanticMaskPrimeGroupB3G0162 ++
    semanticMaskPrimeGroupB3G0163

def block3SemanticBatchWords0081 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0010 then
    block3QrMaskWordsGroup0010 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0081 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0081 block3SemanticBatchWords0081 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0081
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0081) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0081 p) :=
  block3MaskTableBatchCertificate0081.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
