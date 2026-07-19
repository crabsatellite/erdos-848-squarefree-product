import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0026

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0026 :
    factorRightValid0026 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0026 := by
  unfold factorRightValid0026 factorDataChunk0026
  decide

theorem factorBlock0026 :
    factorDataChunk0026.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0026 factorRoot0026 factorLeft0026 factorRight0026

end Erdos848.GeneratedFiveMillionFactorCoverage
