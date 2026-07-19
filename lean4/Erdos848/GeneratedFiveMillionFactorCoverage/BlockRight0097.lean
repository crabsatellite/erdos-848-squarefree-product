import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0097

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0097 :
    factorRightValid0097 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0097 := by
  unfold factorRightValid0097 factorDataChunk0097
  decide

theorem factorBlock0097 :
    factorDataChunk0097.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0097 factorRoot0097 factorLeft0097 factorRight0097

end Erdos848.GeneratedFiveMillionFactorCoverage
