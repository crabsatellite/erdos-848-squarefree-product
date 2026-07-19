import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0141

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0141 :
    factorRightValid0141 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0141 := by
  unfold factorRightValid0141 factorDataChunk0141
  decide

theorem factorBlock0141 :
    factorDataChunk0141.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0141 factorRoot0141 factorLeft0141 factorRight0141

end Erdos848.GeneratedFiveMillionFactorCoverage
