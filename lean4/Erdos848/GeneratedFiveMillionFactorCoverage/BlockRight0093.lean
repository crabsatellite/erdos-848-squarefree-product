import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0093

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0093 :
    factorRightValid0093 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0093 := by
  unfold factorRightValid0093 factorDataChunk0093
  decide

theorem factorBlock0093 :
    factorDataChunk0093.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0093 factorRoot0093 factorLeft0093 factorRight0093

end Erdos848.GeneratedFiveMillionFactorCoverage
