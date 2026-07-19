import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0076

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0076 :
    factorRightValid0076 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0076 := by
  unfold factorRightValid0076 factorDataChunk0076
  decide

theorem factorBlock0076 :
    factorDataChunk0076.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0076 factorRoot0076 factorLeft0076 factorRight0076

end Erdos848.GeneratedFiveMillionFactorCoverage
