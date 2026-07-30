import Erdos848.TailHybridPaperRootCosetChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block3SquareBaseCertificate :
    Erdos848.ModFiveCosetWordMaskCertificate
      15625 true block3SquareBaseWords :=
  ⟨by decide, by decide⟩

def block3NonsquareBaseCertificate :
    Erdos848.ModFiveCosetWordMaskCertificate
      15625 false block3NonsquareBaseWords :=
  ⟨by decide, by decide⟩

end Erdos848.GeneratedHybridPaperRootCoverage
