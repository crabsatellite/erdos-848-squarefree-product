import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0039

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0039 :
    factorRightValid0039 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0039 := by
  unfold factorRightValid0039 factorDataChunk0039
  decide

theorem factorBlock0039 :
    factorDataChunk0039.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0039 factorRoot0039 factorLeft0039 factorRight0039

end Erdos848.GeneratedFiveMillionFactorCoverage
