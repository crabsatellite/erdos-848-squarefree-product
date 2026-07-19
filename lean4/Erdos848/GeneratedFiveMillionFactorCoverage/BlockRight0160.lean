import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0160

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0160 :
    factorRightValid0160 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0160 := by
  unfold factorRightValid0160 factorDataChunk0160
  decide

theorem factorBlock0160 :
    factorDataChunk0160.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0160 factorRoot0160 factorLeft0160 factorRight0160

end Erdos848.GeneratedFiveMillionFactorCoverage
