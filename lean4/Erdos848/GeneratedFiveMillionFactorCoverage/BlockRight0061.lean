import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0061

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0061 :
    factorRightValid0061 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0061 := by
  unfold factorRightValid0061 factorDataChunk0061
  decide

theorem factorBlock0061 :
    factorDataChunk0061.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0061 factorRoot0061 factorLeft0061 factorRight0061

end Erdos848.GeneratedFiveMillionFactorCoverage
