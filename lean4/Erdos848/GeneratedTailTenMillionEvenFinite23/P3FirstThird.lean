import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThirdP7AllEqual
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThirdP7FirstSecond
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThirdP7FirstThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThirdP7SecondThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThirdP7AllDistinct

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_firstThird_all
    (p7 p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .firstThird p7 p11 = true := by
    cases p7 with
    | allEqual => exact block_p3_firstThird_p7_allEqual_all p11
    | firstSecond => exact block_p3_firstThird_p7_firstSecond_all p11
    | firstThird => exact block_p3_firstThird_p7_firstThird_all p11
    | secondThird => exact block_p3_firstThird_p7_secondThird_all p11
    | allDistinct => exact block_p3_firstThird_p7_allDistinct_all p11

#print axioms block_p3_firstThird_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
