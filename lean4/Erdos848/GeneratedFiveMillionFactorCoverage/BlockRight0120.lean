import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0120

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0120 :
    factorRightValid0120 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0120 := by
  unfold factorRightValid0120 factorDataChunk0120
  decide

theorem factorBlock0120 :
    factorDataChunk0120.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0120 factorRoot0120 factorLeft0120 factorRight0120

end Erdos848.GeneratedFiveMillionFactorCoverage
