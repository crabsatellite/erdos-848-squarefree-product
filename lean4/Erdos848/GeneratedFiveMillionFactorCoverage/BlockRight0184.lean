import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0184

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0184 :
    factorRightValid0184 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0184 := by
  unfold factorRightValid0184 factorDataChunk0184
  decide

theorem factorBlock0184 :
    factorDataChunk0184.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0184 factorRoot0184 factorLeft0184 factorRight0184

end Erdos848.GeneratedFiveMillionFactorCoverage
