import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0047

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0047 :
    factorRightValid0047 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0047 := by
  unfold factorRightValid0047 factorDataChunk0047
  decide

theorem factorBlock0047 :
    factorDataChunk0047.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0047 factorRoot0047 factorLeft0047 factorRight0047

end Erdos848.GeneratedFiveMillionFactorCoverage
