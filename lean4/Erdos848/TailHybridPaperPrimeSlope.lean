import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate
import Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.Certificate

namespace Erdos848

/-!
# Cumulative prime-count bound for the hybrid root range

The forty-million certificate supplies the single anchor
`π(3_636_363) ≤ 259_187`.  The packed hybrid certificate then supplies one
recoverable increment bound on every 30,030-wide interval through 16M.
This file performs the cumulative induction once, in the kernel, so a root
envelope row needs no independent prime-count assertion.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem hybridPaperPrimeCounting_periodBoundary_le
    {period : Nat}
    (hLower : 121 ≤ period) (hUpper : period ≤ 533) :
    Nat.primeCounting (period * 30_030 - 1) ≤
      259_187 + (period - 121) * 2_020 := by
  induction period, hLower using Nat.le_induction with
  | base =>
      have hanchor :=
        Erdos848.GeneratedFortyMillionPrimeUpperCoverage.primeCounting_3636363_le
      have hmono :
          Nat.primeCounting (121 * 30_030 - 1) ≤
            Nat.primeCounting 3_636_363 :=
        Nat.monotone_primeCounting (by norm_num)
      convert hmono.trans hanchor using 1 <;> norm_num
  | succ period hperiod ih =>
      have hperiodUpper : period ≤ 532 := by omega
      have hstep :=
        Erdos848.GeneratedHybridPaperPrimeSlopeCoverage.period_primeCounting_step
            (period := period) hperiod hperiodUpper
      calc
        Nat.primeCounting ((period + 1) * 30_030 - 1) =
            Nat.primeCounting
              (period * 30_030 + 30_030 - 1) := by
                congr 1
                omega
        _ ≤ Nat.primeCounting (period * 30_030 - 1) + 2_020 :=
          hstep
        _ ≤ (259_187 + (period - 121) * 2_020) + 2_020 :=
          Nat.add_le_add_right (ih (by omega)) 2_020
        _ = 259_187 + ((period + 1) - 121) * 2_020 := by
          omega

theorem hybridPaperPrimeCounting_slope_le
    {y : Nat}
    (hLower : 3_636_364 ≤ y) (hUpper : y ≤ 16_000_000) :
    Nat.primeCounting y ≤
      259_187 + (y / 30_030 - 120) * 2_020 := by
  have hperiodLower : 121 ≤ y / 30_030 + 1 := by omega
  have hperiodUpper : y / 30_030 + 1 ≤ 533 := by omega
  have hend :=
    hybridPaperPrimeCounting_periodBoundary_le
      hperiodLower hperiodUpper
  have hyEnd :
      y ≤ (y / 30_030 + 1) * 30_030 - 1 := by
    omega
  calc
    Nat.primeCounting y ≤
        Nat.primeCounting
          ((y / 30_030 + 1) * 30_030 - 1) :=
      Nat.monotone_primeCounting hyEnd
    _ ≤ 259_187 + ((y / 30_030 + 1) - 121) * 2_020 :=
      hend
    _ = 259_187 + (y / 30_030 - 120) * 2_020 := by
      omega

#print axioms hybridPaperPrimeCounting_periodBoundary_le
#print axioms hybridPaperPrimeCounting_slope_le

end Erdos848
