import Erdos848.GeneratedTailTenMillionEvenFinite23.B410
import Erdos848.GeneratedTailTenMillionEvenFinite23.B411
import Erdos848.GeneratedTailTenMillionEvenFinite23.B412
import Erdos848.GeneratedTailTenMillionEvenFinite23.B413
import Erdos848.GeneratedTailTenMillionEvenFinite23.B414

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_allDistinct_p7_firstSecond_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .allDistinct .firstSecond p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_allDistinct_p7_firstSecond_p11_allEqual
    | firstSecond => exact block_p3_allDistinct_p7_firstSecond_p11_firstSecond
    | firstThird => exact block_p3_allDistinct_p7_firstSecond_p11_firstThird
    | secondThird => exact block_p3_allDistinct_p7_firstSecond_p11_secondThird
    | allDistinct => exact block_p3_allDistinct_p7_firstSecond_p11_allDistinct
#print axioms block_p3_allDistinct_p7_firstSecond_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
