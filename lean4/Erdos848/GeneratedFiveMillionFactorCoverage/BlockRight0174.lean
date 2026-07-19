import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0174

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0174 :
    factorRightValid0174 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0174 := by
  unfold factorRightValid0174 factorDataChunk0174
  decide

theorem factorBlock0174 :
    factorDataChunk0174.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0174 factorRoot0174 factorLeft0174 factorRight0174

end Erdos848.GeneratedFiveMillionFactorCoverage
