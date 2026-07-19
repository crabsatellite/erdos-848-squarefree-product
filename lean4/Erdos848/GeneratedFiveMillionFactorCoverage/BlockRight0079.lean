import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0079

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0079 :
    factorRightValid0079 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0079 := by
  unfold factorRightValid0079 factorDataChunk0079
  decide

theorem factorBlock0079 :
    factorDataChunk0079.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0079 factorRoot0079 factorLeft0079 factorRight0079

end Erdos848.GeneratedFiveMillionFactorCoverage
