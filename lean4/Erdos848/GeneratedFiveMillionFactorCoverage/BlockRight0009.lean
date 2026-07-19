import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0009

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0009 :
    factorRightValid0009 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0009 := by
  unfold factorRightValid0009 factorDataChunk0009
  decide

theorem factorBlock0009 :
    factorDataChunk0009.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0009 factorRoot0009 factorLeft0009 factorRight0009

end Erdos848.GeneratedFiveMillionFactorCoverage
