import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0010

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0010 :
    factorRightValid0010 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0010 := by
  unfold factorRightValid0010 factorDataChunk0010
  decide

theorem factorBlock0010 :
    factorDataChunk0010.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0010 factorRoot0010 factorLeft0010 factorRight0010

end Erdos848.GeneratedFiveMillionFactorCoverage
