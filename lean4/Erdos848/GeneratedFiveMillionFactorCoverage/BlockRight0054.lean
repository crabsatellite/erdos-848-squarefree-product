import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0054

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0054 :
    factorRightValid0054 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0054 := by
  unfold factorRightValid0054 factorDataChunk0054
  decide

theorem factorBlock0054 :
    factorDataChunk0054.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0054 factorRoot0054 factorLeft0054 factorRight0054

end Erdos848.GeneratedFiveMillionFactorCoverage
