import Erdos848.TailHybridPaperRootCosetChecker
import Erdos848.GeneratedHybridPaperRootCoverage.Block2CosetBaseData

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def block2SquareBaseCertificate :
    Erdos848.ModFiveCosetWordMaskCertificate
      10000 true block2SquareBaseWords :=
  ⟨by decide, by decide⟩

def block2NonsquareBaseCertificate :
    Erdos848.ModFiveCosetWordMaskCertificate
      10000 false block2NonsquareBaseWords :=
  ⟨by decide, by decide⟩

end Erdos848.GeneratedHybridPaperRootCoverage
