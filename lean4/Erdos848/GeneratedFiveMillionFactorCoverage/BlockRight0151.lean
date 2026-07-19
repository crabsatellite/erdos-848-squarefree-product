import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0151

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0151 :
    factorRightValid0151 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0151 := by
  unfold factorRightValid0151 factorDataChunk0151
  decide

theorem factorBlock0151 :
    factorDataChunk0151.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0151 factorRoot0151 factorLeft0151 factorRight0151

end Erdos848.GeneratedFiveMillionFactorCoverage
