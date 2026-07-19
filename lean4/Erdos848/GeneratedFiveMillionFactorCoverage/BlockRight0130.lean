import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0130

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0130 :
    factorRightValid0130 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0130 := by
  unfold factorRightValid0130 factorDataChunk0130
  decide

theorem factorBlock0130 :
    factorDataChunk0130.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0130 factorRoot0130 factorLeft0130 factorRight0130

end Erdos848.GeneratedFiveMillionFactorCoverage
