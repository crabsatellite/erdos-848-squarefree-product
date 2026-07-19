import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0008

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0008 :
    factorRightValid0008 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0008 := by
  unfold factorRightValid0008 factorDataChunk0008
  decide

theorem factorBlock0008 :
    factorDataChunk0008.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0008 factorRoot0008 factorLeft0008 factorRight0008

end Erdos848.GeneratedFiveMillionFactorCoverage
