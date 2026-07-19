import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0080

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0080 :
    factorRightValid0080 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0080 := by
  unfold factorRightValid0080 factorDataChunk0080
  decide

theorem factorBlock0080 :
    factorDataChunk0080.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0080 factorRoot0080 factorLeft0080 factorRight0080

end Erdos848.GeneratedFiveMillionFactorCoverage
