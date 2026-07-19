import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0144

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0144 :
    factorRightValid0144 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0144 := by
  unfold factorRightValid0144 factorDataChunk0144
  decide

theorem factorBlock0144 :
    factorDataChunk0144.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0144 factorRoot0144 factorLeft0144 factorRight0144

end Erdos848.GeneratedFiveMillionFactorCoverage
