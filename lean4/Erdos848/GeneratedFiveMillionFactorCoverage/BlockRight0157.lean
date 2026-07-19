import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0157

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0157 :
    factorRightValid0157 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0157 := by
  unfold factorRightValid0157 factorDataChunk0157
  decide

theorem factorBlock0157 :
    factorDataChunk0157.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0157 factorRoot0157 factorLeft0157 factorRight0157

end Erdos848.GeneratedFiveMillionFactorCoverage
