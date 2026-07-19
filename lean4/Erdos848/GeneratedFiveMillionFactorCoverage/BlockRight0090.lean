import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0090

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0090 :
    factorRightValid0090 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0090 := by
  unfold factorRightValid0090 factorDataChunk0090
  decide

theorem factorBlock0090 :
    factorDataChunk0090.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0090 factorRoot0090 factorLeft0090 factorRight0090

end Erdos848.GeneratedFiveMillionFactorCoverage
