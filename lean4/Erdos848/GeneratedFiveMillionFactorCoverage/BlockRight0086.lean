import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0086

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0086 :
    factorRightValid0086 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0086 := by
  unfold factorRightValid0086 factorDataChunk0086
  decide

theorem factorBlock0086 :
    factorDataChunk0086.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0086 factorRoot0086 factorLeft0086 factorRight0086

end Erdos848.GeneratedFiveMillionFactorCoverage
