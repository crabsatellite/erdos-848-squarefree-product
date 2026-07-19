import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0011

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0011 :
    factorRightValid0011 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0011 := by
  unfold factorRightValid0011 factorDataChunk0011
  decide

theorem factorBlock0011 :
    factorDataChunk0011.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0011 factorRoot0011 factorLeft0011 factorRight0011

end Erdos848.GeneratedFiveMillionFactorCoverage
