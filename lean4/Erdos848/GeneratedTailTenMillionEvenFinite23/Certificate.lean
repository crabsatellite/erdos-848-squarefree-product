import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstSecond
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3FirstThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3SecondThird
import Erdos848.GeneratedTailTenMillionEvenFinite23.P3AllDistinct

namespace Erdos848.GeneratedTailTenMillionEvenFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem all
    (p3 p7 p11 p13 p17 p19 p23 :
      Erdos848.E1FiniteRootPattern)
    (hp3 : p3 != .allEqual) :
    Erdos848.TenMillionEvenFinite23CrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have hpass :
      Erdos848.tenMillionEvenFinite23BlockPasses
        p3 p7 p11 = true := by
    cases p3 with
    | allEqual => simp_all
    | firstSecond => exact block_p3_firstSecond_all p7 p11
    | firstThird => exact block_p3_firstThird_all p7 p11
    | secondThird => exact block_p3_secondThird_all p7 p11
    | allDistinct => exact block_p3_allDistinct_all p7 p11
  exact Erdos848.tenMillionEvenFinite23BlockPasses_sound
    hpass p13 p17 p19 p23

#print axioms all

end Erdos848.GeneratedTailTenMillionEvenFinite23
