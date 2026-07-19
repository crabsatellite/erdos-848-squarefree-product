import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0193

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0193 :
    factorRightValid0193 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0193 := by
  unfold factorRightValid0193 factorDataChunk0193
  decide

theorem factorBlock0193 :
    factorDataChunk0193.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0193 factorRoot0193 factorLeft0193 factorRight0193

end Erdos848.GeneratedFiveMillionFactorCoverage
