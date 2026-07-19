import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0078

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0078 :
    factorRightValid0078 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0078 := by
  unfold factorRightValid0078 factorDataChunk0078
  decide

theorem factorBlock0078 :
    factorDataChunk0078.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0078 factorRoot0078 factorLeft0078 factorRight0078

end Erdos848.GeneratedFiveMillionFactorCoverage
