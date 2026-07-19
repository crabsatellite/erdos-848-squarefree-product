import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0069

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0069 :
    factorRightValid0069 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0069 := by
  unfold factorRightValid0069 factorDataChunk0069
  decide

theorem factorBlock0069 :
    factorDataChunk0069.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0069 factorRoot0069 factorLeft0069 factorRight0069

end Erdos848.GeneratedFiveMillionFactorCoverage
