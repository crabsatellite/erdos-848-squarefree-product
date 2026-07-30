import Erdos848.GeneratedTailTwentyMillionFinite23.Groups

namespace Erdos848.GeneratedTailTwentyMillionFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem generic_all
    (p3 p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern)
    (hp3 : Not (p3 = .allEqual)) :
    Erdos848.twentyMillionFiniteGeneric23CrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have hpass :
      Erdos848.twentyMillionFiniteGeneric23SubBlockPasses
        p3 p7 p11 = true := by
    cases p3 with
    | allEqual => exact False.elim (hp3 rfl)
    | firstSecond =>
      cases p7 with
      | allEqual => exact generic_p3_firstSecond_p7_allEqual_all p11
      | firstSecond => exact generic_p3_firstSecond_p7_firstSecond_all p11
      | firstThird => exact generic_p3_firstSecond_p7_firstThird_all p11
      | secondThird => exact generic_p3_firstSecond_p7_secondThird_all p11
      | allDistinct => exact generic_p3_firstSecond_p7_allDistinct_all p11
    | firstThird =>
      cases p7 with
      | allEqual => exact generic_p3_firstThird_p7_allEqual_all p11
      | firstSecond => exact generic_p3_firstThird_p7_firstSecond_all p11
      | firstThird => exact generic_p3_firstThird_p7_firstThird_all p11
      | secondThird => exact generic_p3_firstThird_p7_secondThird_all p11
      | allDistinct => exact generic_p3_firstThird_p7_allDistinct_all p11
    | secondThird =>
      cases p7 with
      | allEqual => exact generic_p3_secondThird_p7_allEqual_all p11
      | firstSecond => exact generic_p3_secondThird_p7_firstSecond_all p11
      | firstThird => exact generic_p3_secondThird_p7_firstThird_all p11
      | secondThird => exact generic_p3_secondThird_p7_secondThird_all p11
      | allDistinct => exact generic_p3_secondThird_p7_allDistinct_all p11
    | allDistinct =>
      cases p7 with
      | allEqual => exact generic_p3_allDistinct_p7_allEqual_all p11
      | firstSecond => exact generic_p3_allDistinct_p7_firstSecond_all p11
      | firstThird => exact generic_p3_allDistinct_p7_firstThird_all p11
      | secondThird => exact generic_p3_allDistinct_p7_secondThird_all p11
      | allDistinct => exact generic_p3_allDistinct_p7_allDistinct_all p11
  exact Erdos848.twentyMillionFiniteGeneric23SubBlockPasses_sound
    hpass p13 p17 p19 p23

end Erdos848.GeneratedTailTwentyMillionFinite23
