import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0089

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0089 :
    factorRightValid0089 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0089 := by
  unfold factorRightValid0089 factorDataChunk0089
  decide

theorem factorBlock0089 :
    factorDataChunk0089.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0089 factorRoot0089 factorLeft0089 factorRight0089

end Erdos848.GeneratedFiveMillionFactorCoverage
