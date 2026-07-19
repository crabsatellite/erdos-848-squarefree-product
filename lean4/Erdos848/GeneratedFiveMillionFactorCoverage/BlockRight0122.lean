import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0122

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0122 :
    factorRightValid0122 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0122 := by
  unfold factorRightValid0122 factorDataChunk0122
  decide

theorem factorBlock0122 :
    factorDataChunk0122.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0122 factorRoot0122 factorLeft0122 factorRight0122

end Erdos848.GeneratedFiveMillionFactorCoverage
