import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0040

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0040 :
    factorRightValid0040 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0040 := by
  unfold factorRightValid0040 factorDataChunk0040
  decide

theorem factorBlock0040 :
    factorDataChunk0040.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0040 factorRoot0040 factorLeft0040 factorRight0040

end Erdos848.GeneratedFiveMillionFactorCoverage
