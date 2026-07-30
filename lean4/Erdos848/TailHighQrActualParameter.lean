import Erdos848.TailHighQrScreenCertificate

namespace Erdos848

/-!
# Actual high square points enter the checked QR survivor

The variable-split proof already constructs the complementary quotient and
the transformed progression witness.  Here we retain that witness, prove its
ordinary or five-twist QR conditions for the selected support primes, and
replace the full quotient interval by the checked survivor finset.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem highQrNormalHighPoint_parameter_mem
    (certificate : CertifiedHighQrScreenRow)
    {N : Nat} {B : Finset Nat}
    {pivot point baseResidue : Nat}
    (hYFive : 5 < N / certificate.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint :
      point ∈ twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue)
    (hconstantFive : ¬5 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset
        (pivot * baseResidue + 1) = true)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        certificate.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        certificate.row.forcing.stop) :
    point / 25 ∈ transformedParameterSet
      (N / 25 + 2) (N / certificate.row.split) (25 * pivot)
      (pivot * baseResidue + 1)
      (highQrRootSurvivorFinset certificate.row.M
        certificate.normalLookup certificate.baseWords
        (highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot))) := by
  classical
  have hfull :=
    highVariableNormalHighPoint_parameter_mem
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      (split := certificate.row.split)
      (certificate.row.check_sound certificate.checked).1
      hYFive hBout hpivotResidual
      hpoint hconstantFive
  have htRange := (Finset.mem_filter.mp hfull).1
  obtain ⟨m, hmFull, p, hpRange, hpLarge, hequation⟩ :=
    (show transformedParameterSetWitness
      (N / 25 + 2) (N / certificate.row.split) (25 * pivot)
      (pivot * baseResidue + 1)
      (highVariableQuotientSurvivors certificate.row.split)
      (point / 25) from
        (Finset.mem_filter.mp hfull).2)
  have hmBounds := Finset.mem_Ico.mp hmFull
  have hrowValid :=
    certificate.row.check_sound certificate.checked
  have hmM : m ≤ certificate.row.M := by
    have hmSplit : m ≤ certificate.row.split ^ 2 := by
      simp only [highVariableQuotientSurvivors] at hmBounds
      omega
    exact hmSplit.trans hrowValid.2.1
  have hselectedTable :=
    certificate.selectedSupport_sublist_table
      (fiveMillionPivotSupport pivot)
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
  have hselectedSupport :
      List.Sublist
        (highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot))
        (fiveMillionPivotSupport pivot) :=
    (certificate.selectedSupport_sublist
      (fiveMillionPivotSupport pivot)).trans
      List.filter_sublist
  have hpointResidue :
      point % 25 = baseResidue :=
    (Finset.mem_filter.mp hpoint).2
  have hpointDecomp :
      point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by
        rw [hpointResidue]
  have hraw :
      p ^ 2 * m = pivot * point + 1 := by
    calc
      p ^ 2 * m =
          (pivot * baseResidue + 1) +
            (25 * pivot) * (point / 25) := hequation
      _ = pivot * (baseResidue + 25 * (point / 25)) + 1 := by
        ring
      _ = pivot * point + 1 := by rw [← hpointDecomp]
  have hsquares :
      ∀ q ∈ highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot),
        ¬q ∣ m ∧ ∃ root : Nat, root ^ 2 ≡ m [MOD q] := by
    intro q hq
    have hqSupport := hselectedSupport.subset hq
    exact quotient_modEq_square_of_prime_dvd_pivot
      (fiveMillionPivotSupport_primes pivot q hqSupport).1
      (fiveMillionPivotSupport_dvd hqSupport) hraw
  have hpFive : ¬5 ∣ p := by
    intro hpDvd
    have hleft : 5 ∣ p ^ 2 * m :=
      dvd_mul_of_dvd_left
        (dvd_pow hpDvd (by norm_num : 2 ≠ 0)) m
    rw [hequation] at hleft
    have htail :
        5 ∣ (25 * pivot) * (point / 25) := by
      refine ⟨5 * pivot * (point / 25), by ring⟩
    exact hconstantFive
      ((Nat.dvd_add_iff_left htail).mpr hleft)
  have hequationMod :
      p ^ 2 * m % 5 =
        (pivot * baseResidue + 1) % 5 := by
    have hmod := congrArg (fun value : Nat => value % 5) hequation
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset :
      modFiveCosetAccepts certificate.row.squareCoset m = true :=
    modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
  have hmSurvivor :=
    certificate.mem_normalSurvivor
      (fiveMillionPivotSupport pivot)
      hmBounds.1 hmM hsquares hmCoset hselectedTable
  apply Finset.mem_filter.mpr
  exact ⟨htRange, m, hmSurvivor, p,
    hpRange, hpLarge, hequation⟩

theorem highQrFiveTwistHighPoint_parameter_mem
    (certificate : CertifiedHighQrScreenRow)
    {N : Nat} {B : Finset Nat}
    {pivot point baseResidue : Nat}
    (hYFive : 5 < N / certificate.row.split)
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpoint :
      point ∈ twoBaseHighTailSquarePointsAtResidue
        N pivot (N / certificate.row.split) baseResidue)
    (hconstantFive : 5 ∣ pivot * baseResidue + 1)
    (hconstantTwentyFive : ¬25 ∣ pivot * baseResidue + 1)
    (hcoset :
      modFiveCosetAccepts certificate.row.squareCoset
        ((pivot * baseResidue + 1) / 5) = true)
    (hSupportLength :
      (fiveMillionPivotSupport pivot).length =
        certificate.row.forcing.supportLength)
    (hSupportProduct :
      (fiveMillionPivotSupport pivot).prod <
        certificate.row.forcing.stop) :
    point / 25 ∈ transformedParameterSet
      (N / 25 + 2) (N / certificate.row.split) (5 * pivot)
      ((pivot * baseResidue + 1) / 5)
      (highQrRootSurvivorFinset certificate.row.M
        certificate.twistLookup certificate.baseWords
        (highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot))) := by
  classical
  have hfull :=
    highVariableFiveTwistHighPoint_parameter_mem
      (N := N) (B := B) (pivot := pivot) (point := point)
      (baseResidue := baseResidue)
      (split := certificate.row.split)
      (certificate.row.check_sound certificate.checked).1
      hYFive hBout hpivotResidual
      hpoint hconstantFive hconstantTwentyFive
  have htRange := (Finset.mem_filter.mp hfull).1
  obtain ⟨m, hmFull, p, hpRange, hpLarge, hequation⟩ :=
    (show transformedParameterSetWitness
      (N / 25 + 2) (N / certificate.row.split) (5 * pivot)
      ((pivot * baseResidue + 1) / 5)
      (highVariableQuotientSurvivors certificate.row.split)
      (point / 25) from
        (Finset.mem_filter.mp hfull).2)
  have hmBounds := Finset.mem_Ico.mp hmFull
  have hrowValid :=
    certificate.row.check_sound certificate.checked
  have hmM : m ≤ certificate.row.M := by
    have hmSplit : m ≤ certificate.row.split ^ 2 := by
      simp only [highVariableQuotientSurvivors] at hmBounds
      omega
    exact hmSplit.trans hrowValid.2.1
  have hselectedTable :=
    certificate.selectedSupport_sublist_table
      (fiveMillionPivotSupport pivot)
      (fiveMillionPivotSupport_primes pivot)
      (fiveMillionPivotSupport_increasing pivot)
  have hselectedSupport :
      List.Sublist
        (highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot))
        (fiveMillionPivotSupport pivot) :=
    (certificate.selectedSupport_sublist
      (fiveMillionPivotSupport pivot)).trans
      List.filter_sublist
  have hpointResidue :
      point % 25 = baseResidue :=
    (Finset.mem_filter.mp hpoint).2
  have hpointDecomp :
      point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by
        rw [hpointResidue]
  have hconstantEq :
      5 * ((pivot * baseResidue + 1) / 5) =
        pivot * baseResidue + 1 :=
    Nat.mul_div_cancel' hconstantFive
  have hraw :
      p ^ 2 * (5 * m) = pivot * point + 1 := by
    calc
      p ^ 2 * (5 * m) = 5 * (p ^ 2 * m) := by ring
      _ = 5 * (((pivot * baseResidue + 1) / 5) +
          (5 * pivot) * (point / 25)) := by rw [hequation]
      _ = pivot * (baseResidue + 25 * (point / 25)) + 1 := by
        rw [mul_add, hconstantEq]
        ring
      _ = pivot * point + 1 := by rw [← hpointDecomp]
  have hsquares :
      ∀ q ∈ highQrSelectedSupport certificate.row
          (fiveMillionPivotSupport pivot),
        ¬q ∣ 5 * m ∧
          ∃ root : Nat, root ^ 2 ≡ 5 * m [MOD q] := by
    intro q hq
    have hqSupport := hselectedSupport.subset hq
    exact quotient_modEq_square_of_prime_dvd_pivot
      (fiveMillionPivotSupport_primes pivot q hqSupport).1
      (fiveMillionPivotSupport_dvd hqSupport) hraw
  have hpFive : ¬5 ∣ p := by
    intro hpDvd
    have hquotientFive :
        ¬5 ∣ (pivot * baseResidue + 1) / 5 :=
      not_five_dvd_div_five_of_not_twentyFive
        hconstantFive hconstantTwentyFive
    have hleft : 5 ∣ p ^ 2 * m :=
      dvd_mul_of_dvd_left
        (dvd_pow hpDvd (by norm_num : 2 ≠ 0)) m
    rw [hequation] at hleft
    have htail :
        5 ∣ (5 * pivot) * (point / 25) := by
      refine ⟨pivot * (point / 25), by ring⟩
    exact hquotientFive
      ((Nat.dvd_add_iff_left htail).mpr hleft)
  have hequationMod :
      p ^ 2 * m % 5 =
        ((pivot * baseResidue + 1) / 5) % 5 := by
    have hmod := congrArg (fun value : Nat => value % 5) hequation
    simpa [Nat.add_mod, Nat.mul_mod] using hmod
  have hmCoset :
      modFiveCosetAccepts certificate.row.squareCoset m = true :=
    modFiveCosetAccepts_of_square_scaled
      hpFive hequationMod hcoset
  have hmSurvivor :=
    certificate.mem_twistSurvivor
      (fiveMillionPivotSupport pivot)
      hmBounds.1 hmM hsquares hmCoset hselectedTable
  apply Finset.mem_filter.mpr
  exact ⟨htRange, m, hmSurvivor, p,
    hpRange, hpLarge, hequation⟩

#print axioms highQrNormalHighPoint_parameter_mem
#print axioms highQrFiveTwistHighPoint_parameter_mem

end Erdos848
