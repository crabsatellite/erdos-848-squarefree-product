import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0022

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0022 :
    factorRightValid0022 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0022 := by
  unfold factorRightValid0022 factorDataChunk0022
  decide

theorem factorBlock0022 :
    factorDataChunk0022.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0022 factorRoot0022 factorLeft0022 factorRight0022

end Erdos848.GeneratedFiveMillionFactorCoverage
