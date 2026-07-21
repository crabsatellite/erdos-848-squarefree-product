import Erdos848.GeneratedTailTenMillionEvenFinite23.B420
import Erdos848.GeneratedTailTenMillionEvenFinite23.B421
import Erdos848.GeneratedTailTenMillionEvenFinite23.B422
import Erdos848.GeneratedTailTenMillionEvenFinite23.B423
import Erdos848.GeneratedTailTenMillionEvenFinite23.B424

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_allDistinct_p7_firstThird_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .allDistinct .firstThird p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_allDistinct_p7_firstThird_p11_allEqual
    | firstSecond => exact block_p3_allDistinct_p7_firstThird_p11_firstSecond
    | firstThird => exact block_p3_allDistinct_p7_firstThird_p11_firstThird
    | secondThird => exact block_p3_allDistinct_p7_firstThird_p11_secondThird
    | allDistinct => exact block_p3_allDistinct_p7_firstThird_p11_allDistinct
#print axioms block_p3_allDistinct_p7_firstThird_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
