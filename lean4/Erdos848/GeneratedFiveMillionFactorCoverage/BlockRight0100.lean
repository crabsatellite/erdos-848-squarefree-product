import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0100

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0100 :
    factorRightValid0100 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0100 := by
  unfold factorRightValid0100 factorDataChunk0100
  decide

theorem factorBlock0100 :
    factorDataChunk0100.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0100 factorRoot0100 factorLeft0100 factorRight0100

end Erdos848.GeneratedFiveMillionFactorCoverage
