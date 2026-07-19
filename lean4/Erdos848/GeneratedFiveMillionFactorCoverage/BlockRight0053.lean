import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0053

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0053 :
    factorRightValid0053 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0053 := by
  unfold factorRightValid0053 factorDataChunk0053
  decide

theorem factorBlock0053 :
    factorDataChunk0053.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0053 factorRoot0053 factorLeft0053 factorRight0053

end Erdos848.GeneratedFiveMillionFactorCoverage
