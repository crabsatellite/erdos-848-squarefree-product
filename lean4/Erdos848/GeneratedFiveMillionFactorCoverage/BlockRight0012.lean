import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0012

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0012 :
    factorRightValid0012 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0012 := by
  unfold factorRightValid0012 factorDataChunk0012
  decide

theorem factorBlock0012 :
    factorDataChunk0012.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0012 factorRoot0012 factorLeft0012 factorRight0012

end Erdos848.GeneratedFiveMillionFactorCoverage
