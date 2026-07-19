import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0072

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0072 :
    factorRightValid0072 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0072 := by
  unfold factorRightValid0072 factorDataChunk0072
  decide

theorem factorBlock0072 :
    factorDataChunk0072.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0072 factorRoot0072 factorLeft0072 factorRight0072

end Erdos848.GeneratedFiveMillionFactorCoverage
