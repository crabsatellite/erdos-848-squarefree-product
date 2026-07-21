import Erdos848.GeneratedTailTenMillionEvenFinite23.B440
import Erdos848.GeneratedTailTenMillionEvenFinite23.B441
import Erdos848.GeneratedTailTenMillionEvenFinite23.B442
import Erdos848.GeneratedTailTenMillionEvenFinite23.B443
import Erdos848.GeneratedTailTenMillionEvenFinite23.B444

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_allDistinct_p7_allDistinct_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .allDistinct .allDistinct p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_allDistinct_p7_allDistinct_p11_allEqual
    | firstSecond => exact block_p3_allDistinct_p7_allDistinct_p11_firstSecond
    | firstThird => exact block_p3_allDistinct_p7_allDistinct_p11_firstThird
    | secondThird => exact block_p3_allDistinct_p7_allDistinct_p11_secondThird
    | allDistinct => exact block_p3_allDistinct_p7_allDistinct_p11_allDistinct
#print axioms block_p3_allDistinct_p7_allDistinct_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
