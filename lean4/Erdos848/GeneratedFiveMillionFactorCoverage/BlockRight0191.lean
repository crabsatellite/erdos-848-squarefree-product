import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0191

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0191 :
    factorRightValid0191 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0191 := by
  unfold factorRightValid0191 factorDataChunk0191
  decide

theorem factorBlock0191 :
    factorDataChunk0191.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0191 factorRoot0191 factorLeft0191 factorRight0191

end Erdos848.GeneratedFiveMillionFactorCoverage
