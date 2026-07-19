import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0032

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0032 :
    factorRightValid0032 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0032 := by
  unfold factorRightValid0032 factorDataChunk0032
  decide

theorem factorBlock0032 :
    factorDataChunk0032.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0032 factorRoot0032 factorLeft0032 factorRight0032

end Erdos848.GeneratedFiveMillionFactorCoverage
