import Erdos848.GeneratedTailTenMillionEvenFinite23.B110
import Erdos848.GeneratedTailTenMillionEvenFinite23.B111
import Erdos848.GeneratedTailTenMillionEvenFinite23.B112
import Erdos848.GeneratedTailTenMillionEvenFinite23.B113
import Erdos848.GeneratedTailTenMillionEvenFinite23.B114

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_firstSecond_p7_firstSecond_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .firstSecond .firstSecond p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_firstSecond_p7_firstSecond_p11_allEqual
    | firstSecond => exact block_p3_firstSecond_p7_firstSecond_p11_firstSecond
    | firstThird => exact block_p3_firstSecond_p7_firstSecond_p11_firstThird
    | secondThird => exact block_p3_firstSecond_p7_firstSecond_p11_secondThird
    | allDistinct => exact block_p3_firstSecond_p7_firstSecond_p11_allDistinct
#print axioms block_p3_firstSecond_p7_firstSecond_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
