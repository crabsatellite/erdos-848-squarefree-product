import Erdos848.GeneratedTailTenMillionEvenFinite23.B230
import Erdos848.GeneratedTailTenMillionEvenFinite23.B231
import Erdos848.GeneratedTailTenMillionEvenFinite23.B232
import Erdos848.GeneratedTailTenMillionEvenFinite23.B233
import Erdos848.GeneratedTailTenMillionEvenFinite23.B234

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_firstThird_p7_secondThird_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .firstThird .secondThird p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_firstThird_p7_secondThird_p11_allEqual
    | firstSecond => exact block_p3_firstThird_p7_secondThird_p11_firstSecond
    | firstThird => exact block_p3_firstThird_p7_secondThird_p11_firstThird
    | secondThird => exact block_p3_firstThird_p7_secondThird_p11_secondThird
    | allDistinct => exact block_p3_firstThird_p7_secondThird_p11_allDistinct
#print axioms block_p3_firstThird_p7_secondThird_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
