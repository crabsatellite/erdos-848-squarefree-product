import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0111

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0111 :
    factorRightValid0111 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0111 := by
  unfold factorRightValid0111 factorDataChunk0111
  decide

theorem factorBlock0111 :
    factorDataChunk0111.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0111 factorRoot0111 factorLeft0111 factorRight0111

end Erdos848.GeneratedFiveMillionFactorCoverage
