import Erdos848.GeneratedTailTenMillionEvenFinite23.B140
import Erdos848.GeneratedTailTenMillionEvenFinite23.B141
import Erdos848.GeneratedTailTenMillionEvenFinite23.B142
import Erdos848.GeneratedTailTenMillionEvenFinite23.B143
import Erdos848.GeneratedTailTenMillionEvenFinite23.B144

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_firstSecond_p7_allDistinct_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .firstSecond .allDistinct p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_firstSecond_p7_allDistinct_p11_allEqual
    | firstSecond => exact block_p3_firstSecond_p7_allDistinct_p11_firstSecond
    | firstThird => exact block_p3_firstSecond_p7_allDistinct_p11_firstThird
    | secondThird => exact block_p3_firstSecond_p7_allDistinct_p11_secondThird
    | allDistinct => exact block_p3_firstSecond_p7_allDistinct_p11_allDistinct
#print axioms block_p3_firstSecond_p7_allDistinct_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
