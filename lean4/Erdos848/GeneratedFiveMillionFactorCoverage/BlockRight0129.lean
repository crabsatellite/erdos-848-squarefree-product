import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0129

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0129 :
    factorRightValid0129 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0129 := by
  unfold factorRightValid0129 factorDataChunk0129
  decide

theorem factorBlock0129 :
    factorDataChunk0129.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0129 factorRoot0129 factorLeft0129 factorRight0129

end Erdos848.GeneratedFiveMillionFactorCoverage
