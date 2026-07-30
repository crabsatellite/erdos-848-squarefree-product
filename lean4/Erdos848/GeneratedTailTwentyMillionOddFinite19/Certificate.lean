import Erdos848.GeneratedTailTwentyMillionOddFinite19.GroupBatch0000
import Erdos848.GeneratedTailTwentyMillionOddFinite19.GroupBatch0001
import Erdos848.GeneratedTailTwentyMillionOddFinite19.GroupBatch0002
import Erdos848.GeneratedTailTwentyMillionOddFinite19.GroupBatch0003
import Erdos848.GeneratedTailTwentyMillionOddFinite19.GroupBatch0004

namespace Erdos848.GeneratedTailTwentyMillionOddFinite19

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem oddTwo_generic_all
    (p2 p3 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 p2 p3 p7 p11 p13 p17 p19 := by
  cases p2 with
    | allEqual => simp_all
    | firstSecond =>
      cases p3 with
      | allEqual => exact False.elim (hp3 rfl)
      | firstSecond =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstSecond_p3_firstSecond_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstSecond_p3_firstSecond_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstSecond_p3_firstSecond_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstSecond_p3_firstSecond_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstSecond_p3_firstSecond_p7_allDistinct_all p11 p13 p17 p19
      | firstThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstSecond_p3_firstThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstSecond_p3_firstThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstSecond_p3_firstThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstSecond_p3_firstThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstSecond_p3_firstThird_p7_allDistinct_all p11 p13 p17 p19
      | secondThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstSecond_p3_secondThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstSecond_p3_secondThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstSecond_p3_secondThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstSecond_p3_secondThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstSecond_p3_secondThird_p7_allDistinct_all p11 p13 p17 p19
      | allDistinct =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstSecond_p3_allDistinct_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstSecond_p3_allDistinct_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstSecond_p3_allDistinct_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstSecond_p3_allDistinct_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstSecond_p3_allDistinct_p7_allDistinct_all p11 p13 p17 p19
    | firstThird =>
      cases p3 with
      | allEqual => exact False.elim (hp3 rfl)
      | firstSecond =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allDistinct_all p11 p13 p17 p19
      | firstThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstThird_p7_allDistinct_all p11 p13 p17 p19
      | secondThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstThird_p3_secondThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstThird_p3_secondThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstThird_p3_secondThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstThird_p3_secondThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstThird_p3_secondThird_p7_allDistinct_all p11 p13 p17 p19
      | allDistinct =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_firstThird_p3_allDistinct_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_firstThird_p3_allDistinct_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_firstThird_p3_allDistinct_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_firstThird_p3_allDistinct_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_firstThird_p3_allDistinct_p7_allDistinct_all p11 p13 p17 p19
    | secondThird =>
      cases p3 with
      | allEqual => exact False.elim (hp3 rfl)
      | firstSecond =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_secondThird_p3_firstSecond_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_secondThird_p3_firstSecond_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_secondThird_p3_firstSecond_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_secondThird_p3_firstSecond_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_secondThird_p3_firstSecond_p7_allDistinct_all p11 p13 p17 p19
      | firstThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_secondThird_p3_firstThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_secondThird_p3_firstThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_secondThird_p3_firstThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_secondThird_p3_firstThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_secondThird_p3_firstThird_p7_allDistinct_all p11 p13 p17 p19
      | secondThird =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_secondThird_p3_secondThird_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_secondThird_p3_secondThird_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_secondThird_p3_secondThird_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_secondThird_p3_secondThird_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_secondThird_p3_secondThird_p7_allDistinct_all p11 p13 p17 p19
      | allDistinct =>
        cases p7 with
        | allEqual => exact oddTwo_generic_p2_secondThird_p3_allDistinct_p7_allEqual_all p11 p13 p17 p19
        | firstSecond => exact oddTwo_generic_p2_secondThird_p3_allDistinct_p7_firstSecond_all p11 p13 p17 p19
        | firstThird => exact oddTwo_generic_p2_secondThird_p3_allDistinct_p7_firstThird_all p11 p13 p17 p19
        | secondThird => exact oddTwo_generic_p2_secondThird_p3_allDistinct_p7_secondThird_all p11 p13 p17 p19
        | allDistinct => exact oddTwo_generic_p2_secondThird_p3_allDistinct_p7_allDistinct_all p11 p13 p17 p19
    | allDistinct => simp_all

theorem oddTwo_common_all
    (p2 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp2 : p2 = .firstSecond ∨ p2 = .firstThird ∨
      p2 = .secondThird) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      20_878 p2 .allEqual p7 p11 p13 p17 p19 := by
  cases p2 with
    | allEqual => simp_all
    | firstSecond =>
      cases p7 with
      | allEqual => exact oddTwo_common_p2_firstSecond_p7_allEqual_all p11 p13 p17 p19
      | firstSecond => exact oddTwo_common_p2_firstSecond_p7_firstSecond_all p11 p13 p17 p19
      | firstThird => exact oddTwo_common_p2_firstSecond_p7_firstThird_all p11 p13 p17 p19
      | secondThird => exact oddTwo_common_p2_firstSecond_p7_secondThird_all p11 p13 p17 p19
      | allDistinct => exact oddTwo_common_p2_firstSecond_p7_allDistinct_all p11 p13 p17 p19
    | firstThird =>
      cases p7 with
      | allEqual => exact oddTwo_common_p2_firstThird_p7_allEqual_all p11 p13 p17 p19
      | firstSecond => exact oddTwo_common_p2_firstThird_p7_firstSecond_all p11 p13 p17 p19
      | firstThird => exact oddTwo_common_p2_firstThird_p7_firstThird_all p11 p13 p17 p19
      | secondThird => exact oddTwo_common_p2_firstThird_p7_secondThird_all p11 p13 p17 p19
      | allDistinct => exact oddTwo_common_p2_firstThird_p7_allDistinct_all p11 p13 p17 p19
    | secondThird =>
      cases p7 with
      | allEqual => exact oddTwo_common_p2_secondThird_p7_allEqual_all p11 p13 p17 p19
      | firstSecond => exact oddTwo_common_p2_secondThird_p7_firstSecond_all p11 p13 p17 p19
      | firstThird => exact oddTwo_common_p2_secondThird_p7_firstThird_all p11 p13 p17 p19
      | secondThird => exact oddTwo_common_p2_secondThird_p7_secondThird_all p11 p13 p17 p19
      | allDistinct => exact oddTwo_common_p2_secondThird_p7_allDistinct_all p11 p13 p17 p19
    | allDistinct => simp_all

theorem oddOne_generic_all
    (p3 p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.twentyMillionOddOneFinite19CrossInequality
      26_643 p3 p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddOneFinite19SubBlockPasses
        26_643 p3 p7 p11 = true := by
    cases p3 with
    | allEqual => exact False.elim (hp3 rfl)
    | firstSecond =>
      cases p7 with
      | allEqual => exact oddOne_generic_p3_firstSecond_p7_allEqual_all p11
      | firstSecond => exact oddOne_generic_p3_firstSecond_p7_firstSecond_all p11
      | firstThird => exact oddOne_generic_p3_firstSecond_p7_firstThird_all p11
      | secondThird => exact oddOne_generic_p3_firstSecond_p7_secondThird_all p11
      | allDistinct => exact oddOne_generic_p3_firstSecond_p7_allDistinct_all p11
    | firstThird =>
      cases p7 with
      | allEqual => exact oddOne_generic_p3_firstThird_p7_allEqual_all p11
      | firstSecond => exact oddOne_generic_p3_firstThird_p7_firstSecond_all p11
      | firstThird => exact oddOne_generic_p3_firstThird_p7_firstThird_all p11
      | secondThird => exact oddOne_generic_p3_firstThird_p7_secondThird_all p11
      | allDistinct => exact oddOne_generic_p3_firstThird_p7_allDistinct_all p11
    | secondThird =>
      cases p7 with
      | allEqual => exact oddOne_generic_p3_secondThird_p7_allEqual_all p11
      | firstSecond => exact oddOne_generic_p3_secondThird_p7_firstSecond_all p11
      | firstThird => exact oddOne_generic_p3_secondThird_p7_firstThird_all p11
      | secondThird => exact oddOne_generic_p3_secondThird_p7_secondThird_all p11
      | allDistinct => exact oddOne_generic_p3_secondThird_p7_allDistinct_all p11
    | allDistinct =>
      cases p7 with
      | allEqual => exact oddOne_generic_p3_allDistinct_p7_allEqual_all p11
      | firstSecond => exact oddOne_generic_p3_allDistinct_p7_firstSecond_all p11
      | firstThird => exact oddOne_generic_p3_allDistinct_p7_firstThird_all p11
      | secondThird => exact oddOne_generic_p3_allDistinct_p7_secondThird_all p11
      | allDistinct => exact oddOne_generic_p3_allDistinct_p7_allDistinct_all p11
  exact Erdos848.twentyMillionOddOneFinite19SubBlockPasses_sound
    hpass p13 p17 p19

theorem oddOne_common_all
    (p7 p11 p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddOneFinite19CrossInequality
      29_459 .allEqual p7 p11 p13 p17 p19 := by
  have hpass :
      Erdos848.twentyMillionOddOneFinite19SubBlockPasses
        29_459 .allEqual p7 p11 = true := by
    cases p7 with
      | allEqual => exact oddOne_common_p7_allEqual_all p11
      | firstSecond => exact oddOne_common_p7_firstSecond_all p11
      | firstThird => exact oddOne_common_p7_firstThird_all p11
      | secondThird => exact oddOne_common_p7_secondThird_all p11
      | allDistinct => exact oddOne_common_p7_allDistinct_all p11
  exact Erdos848.twentyMillionOddOneFinite19SubBlockPasses_sound
    hpass p13 p17 p19

end Erdos848.GeneratedTailTwentyMillionOddFinite19
