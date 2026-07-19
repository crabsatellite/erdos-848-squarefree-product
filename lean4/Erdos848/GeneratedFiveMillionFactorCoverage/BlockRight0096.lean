import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0096

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0096 :
    factorRightValid0096 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0096 := by
  unfold factorRightValid0096 factorDataChunk0096
  decide

theorem factorBlock0096 :
    factorDataChunk0096.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0096 factorRoot0096 factorLeft0096 factorRight0096

end Erdos848.GeneratedFiveMillionFactorCoverage
