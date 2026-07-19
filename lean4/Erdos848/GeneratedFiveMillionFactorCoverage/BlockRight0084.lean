import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0084

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0084 :
    factorRightValid0084 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0084 := by
  unfold factorRightValid0084 factorDataChunk0084
  decide

theorem factorBlock0084 :
    factorDataChunk0084.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0084 factorRoot0084 factorLeft0084 factorRight0084

end Erdos848.GeneratedFiveMillionFactorCoverage
