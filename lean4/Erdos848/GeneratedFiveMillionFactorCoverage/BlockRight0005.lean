import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0005

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0005 :
    factorRightValid0005 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0005 := by
  unfold factorRightValid0005 factorDataChunk0005
  decide

theorem factorBlock0005 :
    factorDataChunk0005.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0005 factorRoot0005 factorLeft0005 factorRight0005

end Erdos848.GeneratedFiveMillionFactorCoverage
