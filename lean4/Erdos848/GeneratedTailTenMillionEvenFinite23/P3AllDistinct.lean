import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinctP7AllEqual
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinctP7FirstSecond
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinctP7FirstThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinctP7SecondThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinctP7AllDistinct

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem block_p3_allDistinct_all
    (p7 p11 : Erdos848.E1FiniteRootPattern) :
    Erdos848.tenMillionEvenFinite23BlockPasses
      .allDistinct p7 p11 = true := by
    cases p7 with
    | allEqual => exact block_p3_allDistinct_p7_allEqual_all p11
    | firstSecond => exact block_p3_allDistinct_p7_firstSecond_all p11
    | firstThird => exact block_p3_allDistinct_p7_firstThird_all p11
    | secondThird => exact block_p3_allDistinct_p7_secondThird_all p11
    | allDistinct => exact block_p3_allDistinct_p7_allDistinct_all p11

#print axioms block_p3_allDistinct_all

end Erdos848.GeneratedTailTenMillionEvenFinite23
