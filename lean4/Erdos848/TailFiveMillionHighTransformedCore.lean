import Erdos848.TailFiveMillionActualSupportCore
import Erdos848.TailSupportScanChecker

namespace Erdos848

/-! Lightweight residue and base-constant facts for global high-tail rows. -/

noncomputable def twoBaseHighTailSquarePointsAtResidue
    (N pivot upper baseResidue : Nat) : Finset Nat :=
  (twoBaseHighTailSquarePoints N pivot upper).filter fun point =>
    point % 25 = baseResidue

lemma nat_eq_of_mod_eq_and_div_eq
    {a b modulus : Nat} (hmod : a % modulus = b % modulus)
    (hdiv : a / modulus = b / modulus) :
    a = b := by
  calc
    a = a % modulus + modulus * (a / modulus) :=
      (Nat.mod_add_div a modulus).symm
    _ = b % modulus + modulus * (b / modulus) := by rw [hmod, hdiv]
    _ = b := Nat.mod_add_div b modulus

lemma modFiveCosetAccepts_of_square_scaled
    {p m constant : Nat} {squareCoset : Bool}
    (hpFive : ¬ 5 ∣ p)
    (hequation : p ^ 2 * m % 5 = constant % 5)
    (hconstant : modFiveCosetAccepts squareCoset constant = true) :
    modFiveCosetAccepts squareCoset m = true := by
  have hpModNe : p % 5 ≠ 0 := fun h =>
    hpFive (Nat.dvd_iff_mod_eq_zero.mpr h)
  have hpModLt : p % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmModLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hcModLt : constant % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hequation' : ((p % 5) ^ 2 * (m % 5)) % 5 = constant % 5 := by
    simpa [Nat.mul_mod, Nat.pow_mod] using hequation
  interval_cases hpMod : p % 5 <;>
    interval_cases hmMod : m % 5 <;>
      interval_cases hcMod : constant % 5 <;>
        cases squareCoset <;>
          simp [modFiveCosetAccepts, hpMod, hmMod, hcMod] at hconstant ⊢ <;>
          omega

lemma point_div_twentyFive_injective_on_residue
    {points : Finset Nat} {baseResidue : Nat}
    (hresidue : ∀ point ∈ points, point % 25 = baseResidue) :
    Set.InjOn (fun point : Nat => point / 25) points := by
  intro a ha b hb hab
  exact nat_eq_of_mod_eq_and_div_eq
    ((hresidue a ha).trans (hresidue b hb).symm) hab

theorem twoBaseHighTailSquarePoints_eq_residue_union
    (N pivot upper : Nat) :
    twoBaseHighTailSquarePoints N pivot upper =
      twoBaseHighTailSquarePointsAtResidue N pivot upper 7 ∪
        twoBaseHighTailSquarePointsAtResidue N pivot upper 18 := by
  classical
  ext point
  simp only [twoBaseHighTailSquarePointsAtResidue, Finset.mem_union,
    Finset.mem_filter]
  constructor
  · intro hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Or.inl ⟨hpoint, (Finset.mem_filter.mp hseven).2⟩
    · exact Or.inr ⟨hpoint, (Finset.mem_filter.mp heighteen).2⟩
  · rintro (⟨hpoint, _⟩ | ⟨hpoint, _⟩) <;> exact hpoint

private lemma pivot_mod25_eq_seven_of_seven_event_core
    {pivot point : Nat}
    (hpoint : point % 25 = 7)
    (hevent : 25 ∣ pivot * point + 1) :
    pivot % 25 = 7 := by
  have hzero := Nat.dvd_iff_mod_eq_zero.mp hevent
  rw [Nat.add_mod, Nat.mul_mod, hpoint] at hzero
  norm_num at hzero
  let r := pivot % 25
  change r = 7
  have hr : r < 25 := Nat.mod_lt pivot (by norm_num)
  have hzero' : (r * 7 % 25 + 1) % 25 = 0 := by
    simpa [r] using hzero
  clear hpoint hevent hzero
  clear_value r
  clear pivot point
  interval_cases r <;> norm_num at hzero'
  all_goals norm_num

private lemma pivot_mod25_eq_eighteen_of_eighteen_event_core
    {pivot point : Nat}
    (hpoint : point % 25 = 18)
    (hevent : 25 ∣ pivot * point + 1) :
    pivot % 25 = 18 := by
  have hzero := Nat.dvd_iff_mod_eq_zero.mp hevent
  rw [Nat.add_mod, Nat.mul_mod, hpoint] at hzero
  norm_num at hzero
  let r := pivot % 25
  change r = 18
  have hr : r < 25 := Nat.mod_lt pivot (by norm_num)
  have hzero' : (r * 18 % 25 + 1) % 25 = 0 := by
    simpa [r] using hzero
  clear hpoint hevent hzero
  clear_value r
  clear pivot point
  interval_cases r <;> norm_num at hzero'
  all_goals norm_num

lemma fiveMillionBaseConstant_not_twentyFive_dvd
    {N : Nat} {B : Finset Nat} {pivot point baseResidue : Nat}
    (hBout : Erdos848OutsideSet N B)
    (hpivotResidual : pivot ∈ hallResidual N B)
    (hpointLow : point ∈ lowBaseSet N)
    (hpointResidue : point % 25 = baseResidue) :
    ¬ 25 ∣ pivot * baseResidue + 1 := by
  intro hconstant
  have hpointDecomp : point = baseResidue + 25 * (point / 25) := by
    calc
      point = point % 25 + 25 * (point / 25) :=
        (Nat.mod_add_div point 25).symm
      _ = baseResidue + 25 * (point / 25) := by rw [hpointResidue]
  have hequation : pivot * point + 1 =
      (pivot * baseResidue + 1) + (25 * pivot) * (point / 25) := by
    conv_lhs => rw [hpointDecomp]
    ring
  have htail : 25 ∣ (25 * pivot) * (point / 25) := by
    refine ⟨pivot * (point / 25), ?_⟩
    ring
  have hevent : 25 ∣ pivot * point + 1 := by
    rw [hequation]
    exact Nat.dvd_add hconstant htail
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  have hpivotBounds := hallCompletion_subset_Icc hBout hpivotCompletion
  have hpivotNotBase := (Finset.mem_sdiff.mp hpivotResidual).2
  rcases Finset.mem_union.mp hpointLow with hseven | heighteen
  · have hpivotMod := pivot_mod25_eq_seven_of_seven_event_core
      (Finset.mem_filter.mp hseven).2 hevent
    apply hpivotNotBase
    exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩)
  · have hpivotMod := pivot_mod25_eq_eighteen_of_eighteen_event_core
      (Finset.mem_filter.mp heighteen).2 hevent
    apply hpivotNotBase
    exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨hpivotBounds, hpivotMod⟩)

lemma not_five_dvd_div_five_of_not_twentyFive
    {constant : Nat} (hfive : 5 ∣ constant)
    (htwentyFive : ¬ 25 ∣ constant) :
    ¬ 5 ∣ constant / 5 := by
  intro hquotient
  obtain ⟨k, hk⟩ := hquotient
  apply htwentyFive
  refine ⟨k, ?_⟩
  have hcancel : 5 * (constant / 5) = constant := Nat.mul_div_cancel' hfive
  omega

lemma exists_modFiveCosetAccepts_of_not_dvd
    {m : Nat} (hfive : ¬ 5 ∣ m) :
    ∃ squareCoset : Bool, modFiveCosetAccepts squareCoset m = true := by
  have hmodLt : m % 5 < 5 := Nat.mod_lt _ (by norm_num)
  have hmodNe : m % 5 ≠ 0 := fun h =>
    hfive (Nat.dvd_iff_mod_eq_zero.mpr h)
  interval_cases hmod : m % 5 <;>
    simp [modFiveCosetAccepts, hmod] at hmodNe ⊢

#print axioms fiveMillionBaseConstant_not_twentyFive_dvd
#print axioms exists_modFiveCosetAccepts_of_not_dvd

end Erdos848
