import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0067

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0067 :
    factorRightValid0067 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0067 := by
  unfold factorRightValid0067 factorDataChunk0067
  decide

theorem factorBlock0067 :
    factorDataChunk0067.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0067 factorRoot0067 factorLeft0067 factorRight0067

end Erdos848.GeneratedFiveMillionFactorCoverage
