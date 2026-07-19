import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0183

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0183 :
    factorRightValid0183 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0183 := by
  unfold factorRightValid0183 factorDataChunk0183
  decide

theorem factorBlock0183 :
    factorDataChunk0183.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0183 factorRoot0183 factorLeft0183 factorRight0183

end Erdos848.GeneratedFiveMillionFactorCoverage
