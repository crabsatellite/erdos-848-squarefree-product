import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0035

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0035 :
    factorRightValid0035 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0035 := by
  unfold factorRightValid0035 factorDataChunk0035
  decide

theorem factorBlock0035 :
    factorDataChunk0035.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0035 factorRoot0035 factorLeft0035 factorRight0035

end Erdos848.GeneratedFiveMillionFactorCoverage
