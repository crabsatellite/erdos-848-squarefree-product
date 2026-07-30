import Erdos848.TailTwentyMillionOddFinite19Checker

namespace Erdos848.GeneratedTailTwentyMillionOddFinite19

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .secondThird p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_secondThird_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .allEqual .allDistinct p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_allEqual_p11_allDistinct_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allEqual p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allEqual_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstSecond p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstSecond_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .firstThird p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_firstThird_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .secondThird p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_secondThird_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstSecond .allDistinct p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstSecond_p11_allDistinct_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .allEqual p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_allEqual_p13_allDistinct p17 p19

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_allEqual
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond .allEqual p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_firstSecond
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond .firstSecond p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_firstThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond .firstThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_secondThird
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond .secondThird p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_allDistinct
    (p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond .allDistinct p17 p19 := by
  cases p17 <;> cases p19 <;> decide

theorem oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond
    (p13 p17 p19 : Erdos848.E1FiniteRootPattern) :
    Erdos848.twentyMillionOddTwoFinite19CrossInequality
      19_420 .firstThird .firstSecond .firstThird .firstSecond p13 p17 p19 := by
  cases p13 with
  | allEqual => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_allEqual p17 p19
  | firstSecond => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_firstSecond p17 p19
  | firstThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_firstThird p17 p19
  | secondThird => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_secondThird p17 p19
  | allDistinct => exact oddTwo_generic_p2_firstThird_p3_firstSecond_p7_firstThird_p11_firstSecond_p13_allDistinct p17 p19

end Erdos848.GeneratedTailTwentyMillionOddFinite19
