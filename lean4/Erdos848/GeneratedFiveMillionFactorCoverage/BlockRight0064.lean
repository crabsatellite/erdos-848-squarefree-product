import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0064

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0064 :
    factorRightValid0064 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0064 := by
  unfold factorRightValid0064 factorDataChunk0064
  decide

theorem factorBlock0064 :
    factorDataChunk0064.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0064 factorRoot0064 factorLeft0064 factorRight0064

end Erdos848.GeneratedFiveMillionFactorCoverage
