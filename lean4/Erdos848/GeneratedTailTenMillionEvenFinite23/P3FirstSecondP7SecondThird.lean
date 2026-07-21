import Erdos848.GeneratedTailTenMillionEvenFinite23.B130
import Erdos848.GeneratedTailTenMillionEvenFinite23.B131
import Erdos848.GeneratedTailTenMillionEvenFinite23.B132
import Erdos848.GeneratedTailTenMillionEvenFinite23.B133
import Erdos848.GeneratedTailTenMillionEvenFinite23.B134

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_firstSecond_p7_secondThird_all
    (p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .firstSecond .secondThird p11 = true := by
    cases p11 with
    | allEqual => exact block_p3_firstSecond_p7_secondThird_p11_allEqual
    | firstSecond => exact block_p3_firstSecond_p7_secondThird_p11_firstSecond
    | firstThird => exact block_p3_firstSecond_p7_secondThird_p11_firstThird
    | secondThird => exact block_p3_firstSecond_p7_secondThird_p11_secondThird
    | allDistinct => exact block_p3_firstSecond_p7_secondThird_p11_allDistinct
#print axioms block_p3_firstSecond_p7_secondThird_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
