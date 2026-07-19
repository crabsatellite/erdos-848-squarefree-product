import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0131

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0131 :
    factorRightValid0131 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0131 := by
  unfold factorRightValid0131 factorDataChunk0131
  decide

theorem factorBlock0131 :
    factorDataChunk0131.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0131 factorRoot0131 factorLeft0131 factorRight0131

end Erdos848.GeneratedFiveMillionFactorCoverage
