import Erdos848.TailHybridPaperRootChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Data
import Erdos848.GeneratedHybridPaperRootCoverage.Block3BaseData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0012

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SemanticBatchPrimes0100 : List Nat :=
    semanticMaskPrimeGroupB3G0200

def block3SemanticBatchWords0100 (p : Nat) : List Nat :=
  if p ∈ maskPrimeGroup0012 then
    block3QrMaskWordsGroup0012 p
  else
    block3BaseWords

def block3MaskTableBatchCertificate0100 :
    Erdos848.SquareWordMaskTableCertificate
      15625 block3SemanticBatchPrimes0100 block3SemanticBatchWords0100 :=
  ⟨by decide, by rfl, by decide⟩

theorem block3MaskBatchLocalCertificate0100
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0100) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3SemanticBatchWords0100 p) :=
  block3MaskTableBatchCertificate0100.entry hp

end Erdos848.GeneratedHybridPaperRootCoverage
