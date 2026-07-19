import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0115

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0115 :
    factorRightValid0115 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0115 := by
  unfold factorRightValid0115 factorDataChunk0115
  decide

theorem factorBlock0115 :
    factorDataChunk0115.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0115 factorRoot0115 factorLeft0115 factorRight0115

end Erdos848.GeneratedFiveMillionFactorCoverage
