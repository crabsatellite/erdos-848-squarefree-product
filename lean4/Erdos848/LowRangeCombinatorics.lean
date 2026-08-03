import Erdos848.HallPartition
import Erdos848.LowRangeArithmetic

namespace Erdos848

/-! Exact set-theoretic and parity layer shared by the two low ranges. -/

private lemma low_card_filter_mod_eq_le (N m r : ℕ) :
    ((Finset.range N).filter (fun n => n ≡ r [MOD m])).card ≤
      N / m + 1 := by
  have h_set :
      Finset.filter (fun n => n ≡ r [MOD m]) (Finset.range N) ⊆
        Finset.image (fun q => q * m + (r % m))
          (Finset.range (N / m + 1)) := by
    intro n hn
    simp_all +decide [Nat.ModEq]
    exact ⟨n / m, Nat.div_le_div_right hn.1.le,
      by linarith [Nat.mod_add_div n m]⟩
  exact le_trans (Finset.card_le_card h_set)
    (Finset.card_image_le.trans (by norm_num))

private lemma low_card_filter_modEq_and_modEq_le
    (N m n a b : ℕ) (hcop : Nat.Coprime m n) :
    ((Finset.range N).filter
      (fun x => x ≡ a [MOD m] ∧ x ≡ b [MOD n])).card ≤
        N / (m * n) + 1 := by
  classical
  have hsub :
      (Finset.range N).filter
          (fun x => x ≡ a [MOD m] ∧ x ≡ b [MOD n]) ⊆
        (Finset.range N).filter
          (fun x => x ≡ Nat.chineseRemainder hcop a b [MOD m * n]) := by
    intro x hx
    simp [Finset.mem_filter, Finset.mem_range] at hx ⊢
    exact ⟨hx.1,
      Nat.chineseRemainder_modEq_unique (co := hcop) hx.2.1 hx.2.2⟩
  have hcard :
      ((Finset.range N).filter
        (fun x => x ≡ a [MOD m] ∧ x ≡ b [MOD n])).card ≤
      ((Finset.range N).filter
        (fun x => x ≡ Nat.chineseRemainder hcop a b
          [MOD m * n])).card :=
    Finset.card_le_card hsub
  exact le_trans hcard
    (low_card_filter_mod_eq_le N (m * n)
      (Nat.chineseRemainder hcop a b))

def lowDiagonalBad (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N \ lowBaseSet N).filter fun x =>
    ¬ Squarefree (x * x + 1)

def lowBaseBadNeighbours (N t : ℕ) : Finset ℕ :=
  (lowBaseSet N).filter fun a => ¬ Squarefree (a * t + 1)

lemma hallResidual_subset_lowDiagonalBad {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) :
    hallResidual N B ⊆ lowDiagonalBad N := by
  intro x hx
  have hxCompletion : x ∈ hallCompletion N B := (Finset.mem_sdiff.mp hx).1
  have hxNotBase : x ∉ lowBaseSet N := (Finset.mem_sdiff.mp hx).2
  have hCompletionProp := hallCompletion_nonSquarefree (N := N) hBprop
  exact Finset.mem_filter.mpr ⟨
    Finset.mem_sdiff.mpr ⟨hallCompletion_subset_Icc hBout hxCompletion, hxNotBase⟩,
    hCompletionProp x hxCompletion x hxCompletion⟩

lemma hallBasePart_subset_lowBaseBadNeighbours {N : ℕ} {B : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B) {t : ℕ}
    (ht : t ∈ hallCompletion N B) :
    hallBasePart N B ⊆ lowBaseBadNeighbours N t := by
  intro a ha
  have haCompletion : a ∈ hallCompletion N B := (Finset.mem_inter.mp ha).1
  have haBase : a ∈ lowBaseSet N := (Finset.mem_inter.mp ha).2
  exact Finset.mem_filter.mpr ⟨haBase,
    hallCompletion_nonSquarefree hBprop a haCompletion t ht⟩

lemma hallCompletion_card_cast_le_diagonal_add_degree
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B) {t : ℕ}
    (ht : t ∈ hallResidual N B) :
    ((hallCompletion N B).card : ℚ) ≤
      ((lowDiagonalBad N).card : ℚ) +
      ((lowBaseBadNeighbours N t).card : ℚ) := by
  have htCompletion : t ∈ hallCompletion N B := (Finset.mem_sdiff.mp ht).1
  have hResidualCard := Finset.card_le_card
    (hallResidual_subset_lowDiagonalBad hBout hBprop)
  have hBaseCard := Finset.card_le_card
    (hallBasePart_subset_lowBaseBadNeighbours hBprop htCompletion)
  have hResidualCardQ :
      ((hallResidual N B).card : ℚ) ≤ ((lowDiagonalBad N).card : ℚ) := by
    exact_mod_cast hResidualCard
  have hBaseCardQ :
      ((hallBasePart N B).card : ℚ) ≤
        ((lowBaseBadNeighbours N t).card : ℚ) := by
    exact_mod_cast hBaseCard
  have hPartitionQ :
      ((hallCompletion N B).card : ℚ) =
        ((hallResidual N B).card : ℚ) + ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  rw [hPartitionQ]
  exact add_le_add hResidualCardQ hBaseCardQ

lemma hall_bound_of_completion_cast_lt_target
    {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (htarget : ((hallCompletion N B).card : ℚ) <
      (N : ℚ) / 25 - 7 / 25) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hcardQ : ((hallCompletion N B).card : ℚ) <
      ((OriginalA7 N).card : ℚ) :=
    lt_of_lt_of_le htarget (originalA7_card_cast_lower N)
  have hcard : (hallCompletion N B).card < (OriginalA7 N).card := by
    exact_mod_cast hcardQ
  rw [hallCompletion_card hBout] at hcard
  exact Nat.le_of_lt hcard

/-! ## Exhaustive low-range parity split

Using one even pivot is enough for the even-degree branch.  For any residual
of size at least
eleven, either there is an even pivot, both odd classes contain four pivots, or
one odd class contains eight pivots while the other has at most three. -/

def mod4EvenPart (S : Finset ℕ) : Finset ℕ :=
  S.filter fun x => x % 4 = 0 ∨ x % 4 = 2

def mod4OnePart (S : Finset ℕ) : Finset ℕ :=
  S.filter fun x => x % 4 = 1

def mod4ThreePart (S : Finset ℕ) : Finset ℕ :=
  S.filter fun x => x % 4 = 3

def mod4Part (S : Finset ℕ) (r : ℕ) : Finset ℕ :=
  S.filter fun x => x % 4 = r

lemma mod4_partition (S : Finset ℕ) :
    (mod4EvenPart S ∪ mod4OnePart S) ∪ mod4ThreePart S = S := by
  ext x
  simp only [Finset.mem_union, Finset.mem_filter, mod4EvenPart,
    mod4OnePart, mod4ThreePart]
  constructor
  · rintro ((⟨hxS, _⟩ | ⟨hxS, _⟩) | ⟨hxS, _⟩)
    all_goals exact hxS
  · intro hxS
    have hmod : x % 4 < 4 := Nat.mod_lt x (by norm_num)
    have hcases :
        x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
      omega
    rcases hcases with hzero | hone | htwo | hthree
    · exact Or.inl (Or.inl ⟨hxS, Or.inl hzero⟩)
    · exact Or.inl (Or.inr ⟨hxS, hone⟩)
    · exact Or.inl (Or.inl ⟨hxS, Or.inr htwo⟩)
    · exact Or.inr ⟨hxS, hthree⟩

lemma mod4EvenPart_disjoint_mod4OnePart (S : Finset ℕ) :
    Disjoint (mod4EvenPart S) (mod4OnePart S) := by
  rw [Finset.disjoint_left]
  intro x hxEven hxOne
  simp [mod4EvenPart] at hxEven
  simp [mod4OnePart] at hxOne
  omega

lemma mod4EvenOne_disjoint_mod4ThreePart (S : Finset ℕ) :
    Disjoint (mod4EvenPart S ∪ mod4OnePart S) (mod4ThreePart S) := by
  rw [Finset.disjoint_left]
  intro x hx hxThree
  rcases Finset.mem_union.mp hx with hxEven | hxOne
  · simp [mod4EvenPart] at hxEven
    simp [mod4ThreePart] at hxThree
    omega
  · simp [mod4OnePart] at hxOne
    simp [mod4ThreePart] at hxThree
    omega

lemma mod4_part_card_sum (S : Finset ℕ) :
    (mod4EvenPart S).card + (mod4OnePart S).card +
      (mod4ThreePart S).card = S.card := by
  calc
    _ = (mod4EvenPart S ∪ mod4OnePart S).card +
        (mod4ThreePart S).card := by
      rw [Finset.card_union_of_disjoint (mod4EvenPart_disjoint_mod4OnePart S)]
    _ = ((mod4EvenPart S ∪ mod4OnePart S) ∪
        mod4ThreePart S).card := by
      rw [Finset.card_union_of_disjoint (mod4EvenOne_disjoint_mod4ThreePart S)]
    _ = S.card := by rw [mod4_partition]

lemma mod4EvenPart_eq_zero_union_two (S : Finset ℕ) :
    mod4EvenPart S = mod4Part S 0 ∪ mod4Part S 2 := by
  ext x
  simp [mod4EvenPart, mod4Part]
  tauto

lemma mod4ZeroPart_disjoint_mod4TwoPart (S : Finset ℕ) :
    Disjoint (mod4Part S 0) (mod4Part S 2) := by
  rw [Finset.disjoint_left]
  intro x hxZero hxTwo
  simp [mod4Part] at hxZero hxTwo
  omega

lemma mod4_four_card_sum (S : Finset ℕ) :
    (mod4Part S 0).card + (mod4Part S 1).card +
      (mod4Part S 2).card + (mod4Part S 3).card = S.card := by
  have heven : (mod4EvenPart S).card =
      (mod4Part S 0).card + (mod4Part S 2).card := by
    rw [mod4EvenPart_eq_zero_union_two,
      Finset.card_union_of_disjoint (mod4ZeroPart_disjoint_mod4TwoPart S)]
  have hone : mod4OnePart S = mod4Part S 1 := by
    ext x
    simp [mod4OnePart, mod4Part]
  have hthree : mod4ThreePart S = mod4Part S 3 := by
    ext x
    simp [mod4ThreePart, mod4Part]
  have hsum := mod4_part_card_sum S
  rw [heven, hone, hthree] at hsum
  omega

theorem lowResidualParityTrichotomy (S : Finset ℕ) (hcard : 11 ≤ S.card) :
    0 < (mod4EvenPart S).card ∨
    (4 ≤ (mod4OnePart S).card ∧ 4 ≤ (mod4ThreePart S).card) ∨
    ((mod4OnePart S).card ≤ 3 ∧ 8 ≤ (mod4ThreePart S).card) ∨
    ((mod4ThreePart S).card ≤ 3 ∧ 8 ≤ (mod4OnePart S).card) := by
  have hsum := mod4_part_card_sum S
  omega

/-! The single-pivot form actually needs no quantitative residual lower bound.
Once the pure case is separated, the residual contains an even pivot, meets
both odd classes, or is contained in exactly one odd class. -/

theorem lowResidualSinglePivotTrichotomy (S : Finset ℕ) :
    S = ∅ ∨
    (mod4EvenPart S).Nonempty ∨
    ((∀ x ∈ S, x % 4 = 1 ∨ x % 4 = 3) ∧
      (mod4OnePart S).Nonempty ∧ (mod4ThreePart S).Nonempty) ∨
    (S.Nonempty ∧ (∀ x ∈ S, x % 4 = 1)) ∨
    (S.Nonempty ∧ (∀ x ∈ S, x % 4 = 3)) := by
  by_cases hS : S = ∅
  · exact Or.inl hS
  right
  by_cases hEven : (mod4EvenPart S).Nonempty
  · exact Or.inl hEven
  right
  have hAllOdd : ∀ x ∈ S, x % 4 = 1 ∨ x % 4 = 3 := by
    intro x hx
    have hxCases : x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
      have hmod : x % 4 < 4 := Nat.mod_lt x (by norm_num)
      omega
    rcases hxCases with hxZero | hxOne | hxTwo | hxThree
    · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inl hxZero⟩⟩)
    · exact Or.inl hxOne
    · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inr hxTwo⟩⟩)
    · exact Or.inr hxThree
  by_cases hOne : (mod4OnePart S).Nonempty
  · by_cases hThree : (mod4ThreePart S).Nonempty
    · exact Or.inl ⟨hAllOdd, hOne, hThree⟩
    · right
      left
      refine ⟨Finset.nonempty_iff_ne_empty.mpr hS, ?_⟩
      intro x hx
      have hxCases : x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
        have hmod : x % 4 < 4 := Nat.mod_lt x (by norm_num)
        omega
      rcases hxCases with hxZero | hxOne | hxTwo | hxThree
      · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inl hxZero⟩⟩)
      · exact hxOne
      · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inr hxTwo⟩⟩)
      · exact False.elim (hThree ⟨x, Finset.mem_filter.mpr ⟨hx, hxThree⟩⟩)
  · right
    right
    refine ⟨Finset.nonempty_iff_ne_empty.mpr hS, ?_⟩
    intro x hx
    have hxCases : x % 4 = 0 ∨ x % 4 = 1 ∨ x % 4 = 2 ∨ x % 4 = 3 := by
      have hmod : x % 4 < 4 := Nat.mod_lt x (by norm_num)
      omega
    rcases hxCases with hxZero | hxOne | hxTwo | hxThree
    · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inl hxZero⟩⟩)
    · exact False.elim (hOne ⟨x, Finset.mem_filter.mpr ⟨hx, hxOne⟩⟩)
    · exact False.elim (hEven ⟨x, Finset.mem_filter.mpr ⟨hx, Or.inr hxTwo⟩⟩)
    · exact hxThree

def lowDiagonalOdd (N : ℕ) : Finset ℕ :=
  (lowDiagonalBad N).filter fun x => x % 4 = 1 ∨ x % 4 = 3

def lowDiagonalMod4 (N r : ℕ) : Finset ℕ :=
  (lowDiagonalBad N).filter fun x => x % 4 = r

def hallBaseMod4Part (N : ℕ) (B : Finset ℕ) (r : ℕ) : Finset ℕ :=
  mod4Part (hallBasePart N B) r

def lowBaseBadMod4Neighbours (N t r : ℕ) : Finset ℕ :=
  mod4Part (lowBaseBadNeighbours N t) r

def lowBaseMod4Part (N r : ℕ) : Finset ℕ :=
  mod4Part (lowBaseSet N) r

def twoSquareInactive (r s : ℕ) : Prop :=
  (r * s + 1) % 4 ≠ 0

lemma originalA7_mod4_card_le (N r : ℕ) :
    (mod4Part (OriginalA7 N) r).card ≤ N / 100 + 1 := by
  let target := (Finset.range N).filter fun x =>
    x ≡ 6 [MOD 25] ∧ x ≡ (r + 3) % 4 [MOD 4]
  have hmap : Set.MapsTo (fun a : ℕ => a - 1)
      (mod4Part (OriginalA7 N) r : Set ℕ) target := by
    intro a ha
    have haPart := Finset.mem_filter.mp ha
    have haC := Finset.mem_filter.mp haPart.1
    have haInterval := Finset.mem_Icc.mp haC.1
    have haPos : 1 ≤ a := haInterval.1
    have haLe : a ≤ N := haInterval.2
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr (by
      change a - 1 < N
      omega), ?_, ?_⟩
    · change (a - 1) % 25 = 6 % 25
      norm_num
      omega
    · change (a - 1) % 4 = ((r + 3) % 4) % 4
      simp only [Nat.mod_mod]
      omega
  have hinj : (mod4Part (OriginalA7 N) r : Set ℕ).InjOn
      (fun a : ℕ => a - 1) := by
    intro a ha b hb hab
    have haPart := Finset.mem_filter.mp ha
    have hbPart := Finset.mem_filter.mp hb
    have haC := Finset.mem_filter.mp haPart.1
    have hbC := Finset.mem_filter.mp hbPart.1
    have haPos : 1 ≤ a := (Finset.mem_Icc.mp haC.1).1
    have hbPos : 1 ≤ b := (Finset.mem_Icc.mp hbC.1).1
    change a - 1 = b - 1 at hab
    omega
  have hcard : (mod4Part (OriginalA7 N) r).card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun a : ℕ => a - 1) hmap hinj
  have htarget : target.card ≤ N / 100 + 1 := by
    exact low_card_filter_modEq_and_modEq_le
      N 25 4 6 ((r + 3) % 4) (by norm_num)
  exact le_trans hcard htarget

lemma originalA18_mod4_card_le (N r : ℕ) :
    (mod4Part (OriginalA18 N) r).card ≤ N / 100 + 1 := by
  let target := (Finset.range N).filter fun x =>
    x ≡ 17 [MOD 25] ∧ x ≡ (r + 3) % 4 [MOD 4]
  have hmap : Set.MapsTo (fun a : ℕ => a - 1)
      (mod4Part (OriginalA18 N) r : Set ℕ) target := by
    intro a ha
    have haPart := Finset.mem_filter.mp ha
    have haC := Finset.mem_filter.mp haPart.1
    have haInterval := Finset.mem_Icc.mp haC.1
    have haPos : 1 ≤ a := haInterval.1
    have haLe : a ≤ N := haInterval.2
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_range.mpr (by
      change a - 1 < N
      omega), ?_, ?_⟩
    · change (a - 1) % 25 = 17 % 25
      norm_num
      omega
    · change (a - 1) % 4 = ((r + 3) % 4) % 4
      simp only [Nat.mod_mod]
      omega
  have hinj : (mod4Part (OriginalA18 N) r : Set ℕ).InjOn
      (fun a : ℕ => a - 1) := by
    intro a ha b hb hab
    have haPart := Finset.mem_filter.mp ha
    have hbPart := Finset.mem_filter.mp hb
    have haC := Finset.mem_filter.mp haPart.1
    have hbC := Finset.mem_filter.mp hbPart.1
    have haPos : 1 ≤ a := (Finset.mem_Icc.mp haC.1).1
    have hbPos : 1 ≤ b := (Finset.mem_Icc.mp hbC.1).1
    change a - 1 = b - 1 at hab
    omega
  have hcard : (mod4Part (OriginalA18 N) r).card ≤ target.card :=
    Finset.card_le_card_of_injOn (fun a : ℕ => a - 1) hmap hinj
  have htarget : target.card ≤ N / 100 + 1 := by
    exact low_card_filter_modEq_and_modEq_le
      N 25 4 17 ((r + 3) % 4) (by norm_num)
  exact le_trans hcard htarget

theorem lowBaseMod4Part_cast_le (N r : ℕ) :
    ((lowBaseMod4Part N r).card : ℚ) ≤ (N : ℚ) / 50 + 2 := by
  have heq : lowBaseMod4Part N r =
      mod4Part (OriginalA7 N) r ∪ mod4Part (OriginalA18 N) r := by
    ext x
    simp [lowBaseMod4Part, lowBaseSet, mod4Part]
    tauto
  have hunion := Finset.card_union_le
    (mod4Part (OriginalA7 N) r) (mod4Part (OriginalA18 N) r)
  have h7 := originalA7_mod4_card_le N r
  have h18 := originalA18_mod4_card_le N r
  have hnat : (lowBaseMod4Part N r).card ≤ 2 * (N / 100 + 1) := by
    rw [heq]
    omega
  have hq : ((lowBaseMod4Part N r).card : ℚ) ≤
      2 * (((N / 100 : ℕ) : ℚ) + 1) := by
    exact_mod_cast hnat
  have hdiv : ((N / 100 : ℕ) : ℚ) ≤ (N : ℚ) / 100 := Nat.cast_div_le
  norm_num at hq hdiv ⊢
  linarith

lemma hallBaseMod4Part_subset_bad {N : ℕ} {B : Finset ℕ}
    (hBprop : NonSquarefreeProductProp B) {t r : ℕ}
    (ht : t ∈ hallCompletion N B) :
    hallBaseMod4Part N B r ⊆ lowBaseBadMod4Neighbours N t r := by
  intro a ha
  have haPart := Finset.mem_filter.mp ha
  exact Finset.mem_filter.mpr ⟨
    hallBasePart_subset_lowBaseBadNeighbours hBprop ht haPart.1,
    haPart.2⟩

lemma hallBaseMod4Part_subset_raw {N : ℕ} {B : Finset ℕ} {r : ℕ} :
    hallBaseMod4Part N B r ⊆ lowBaseMod4Part N r := by
  intro a ha
  have haPart := Finset.mem_filter.mp ha
  exact Finset.mem_filter.mpr ⟨(Finset.mem_inter.mp haPart.1).2, haPart.2⟩

lemma hallBasePart_four_card_sum (N : ℕ) (B : Finset ℕ) :
    (hallBaseMod4Part N B 0).card + (hallBaseMod4Part N B 1).card +
      (hallBaseMod4Part N B 2).card + (hallBaseMod4Part N B 3).card =
        (hallBasePart N B).card := by
  exact mod4_four_card_sum (hallBasePart N B)

lemma hallResidual_subset_lowDiagonalOdd {N : ℕ} {B : Finset ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hOdd : ∀ x ∈ hallResidual N B, x % 4 = 1 ∨ x % 4 = 3) :
    hallResidual N B ⊆ lowDiagonalOdd N := by
  intro x hx
  exact Finset.mem_filter.mpr ⟨
    hallResidual_subset_lowDiagonalBad hBout hBprop hx,
    hOdd x hx⟩

lemma hallResidual_subset_lowDiagonalMod4 {N : ℕ} {B : Finset ℕ} {r : ℕ}
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hclass : ∀ x ∈ hallResidual N B, x % 4 = r) :
    hallResidual N B ⊆ lowDiagonalMod4 N r := by
  intro x hx
  exact Finset.mem_filter.mpr ⟨
    hallResidual_subset_lowDiagonalBad hBout hBprop hx,
    hclass x hx⟩

lemma hallBasePart_card_cast_le_four_oddDegrees
    {N : ℕ} {B : Finset ℕ} {tOne tThree : ℕ} {oddDegree : ℚ}
    (hBprop : NonSquarefreeProductProp B)
    (htOne : tOne ∈ hallResidual N B)
    (htThree : tThree ∈ hallResidual N B)
    (htOneClass : tOne % 4 = 1)
    (htThreeClass : tThree % 4 = 3)
    (hoddDegree : ∀ {u r : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive r (u % 4) →
      ((lowBaseBadMod4Neighbours N u r).card : ℚ) ≤ oddDegree) :
    ((hallBasePart N B).card : ℚ) ≤ 4 * oddDegree := by
  have htOneCompletion : tOne ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp htOne).1
  have htThreeCompletion : tThree ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp htThree).1
  have h0Nat := Finset.card_le_card
    (hallBaseMod4Part_subset_bad hBprop (r := 0) htOneCompletion)
  have h1Nat := Finset.card_le_card
    (hallBaseMod4Part_subset_bad hBprop (r := 1) htOneCompletion)
  have h2Nat := Finset.card_le_card
    (hallBaseMod4Part_subset_bad hBprop (r := 2) htOneCompletion)
  have h3Nat := Finset.card_le_card
    (hallBaseMod4Part_subset_bad hBprop (r := 3) htThreeCompletion)
  have h0Q : ((hallBaseMod4Part N B 0).card : ℚ) ≤ oddDegree := by
    have hcast : ((hallBaseMod4Part N B 0).card : ℚ) ≤
        ((lowBaseBadMod4Neighbours N tOne 0).card : ℚ) := by
      exact_mod_cast h0Nat
    exact le_trans hcast (hoddDegree htOne (by
      norm_num [twoSquareInactive, htOneClass]))
  have h1Q : ((hallBaseMod4Part N B 1).card : ℚ) ≤ oddDegree := by
    have hcast : ((hallBaseMod4Part N B 1).card : ℚ) ≤
        ((lowBaseBadMod4Neighbours N tOne 1).card : ℚ) := by
      exact_mod_cast h1Nat
    exact le_trans hcast (hoddDegree htOne (by
      norm_num [twoSquareInactive, htOneClass]))
  have h2Q : ((hallBaseMod4Part N B 2).card : ℚ) ≤ oddDegree := by
    have hcast : ((hallBaseMod4Part N B 2).card : ℚ) ≤
        ((lowBaseBadMod4Neighbours N tOne 2).card : ℚ) := by
      exact_mod_cast h2Nat
    exact le_trans hcast (hoddDegree htOne (by
      norm_num [twoSquareInactive, htOneClass]))
  have h3Q : ((hallBaseMod4Part N B 3).card : ℚ) ≤ oddDegree := by
    have hcast : ((hallBaseMod4Part N B 3).card : ℚ) ≤
        ((lowBaseBadMod4Neighbours N tThree 3).card : ℚ) := by
      exact_mod_cast h3Nat
    exact le_trans hcast (hoddDegree htThree (by
      norm_num [twoSquareInactive, htThreeClass]))
  have hpartsQ : ((hallBasePart N B).card : ℚ) =
      ((hallBaseMod4Part N B 0).card : ℚ) +
      ((hallBaseMod4Part N B 1).card : ℚ) +
      ((hallBaseMod4Part N B 2).card : ℚ) +
      ((hallBaseMod4Part N B 3).card : ℚ) := by
    exact_mod_cast (hallBasePart_four_card_sum N B).symm
  rw [hpartsQ]
  linarith

theorem firstLow_twoOddPivots_hall_bound
    {N : ℕ} {B : Finset ℕ} {tOne tThree : ℕ}
    (hN : 1_500_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hResidualOdd : ∀ x ∈ hallResidual N B,
      x % 4 = 1 ∨ x % 4 = 3)
    (htOne : tOne ∈ hallResidual N B)
    (htOneClass : tOne % 4 = 1)
    (htThree : tThree ∈ hallResidual N B)
    (htThreeClass : tThree % 4 = 3)
    (hdiagonal : ((lowDiagonalOdd N).card : ℚ) ≤
      (12_657 / 1_000_000 : ℚ) * N)
    (hoddDegree : ∀ {u r : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive r (u % 4) →
      ((lowBaseBadMod4Neighbours N u r).card : ℚ) ≤
        (N : ℚ) / 300 + 548) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hResidualNat := Finset.card_le_card
    (hallResidual_subset_lowDiagonalOdd hBout hBprop hResidualOdd)
  have hResidualQ : ((hallResidual N B).card : ℚ) ≤
      ((lowDiagonalOdd N).card : ℚ) := by
    exact_mod_cast hResidualNat
  have hBaseQ : ((hallBasePart N B).card : ℚ) ≤
      4 * ((N : ℚ) / 300 + 548) :=
    hallBasePart_card_cast_le_four_oddDegrees hBprop htOne htThree
      htOneClass htThreeClass hoddDegree
  have hPartitionQ : ((hallCompletion N B).card : ℚ) =
      ((hallResidual N B).card : ℚ) + ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hcompletion : ((hallCompletion N B).card : ℚ) ≤
      ((lowDiagonalOdd N).card : ℚ) +
        4 * ((N : ℚ) / 300 + 548) := by
    rw [hPartitionQ]
    linarith
  have hterminal := firstLow_twoOddClasses_arithmetic
    (N := N) (diagonal := ((lowDiagonalOdd N).card : ℚ))
    (oddDegree := (N : ℚ) / 300 + 548) hN hdiagonal le_rfl
  apply hall_bound_of_completion_cast_lt_target hBout
  linarith

theorem secondLow_twoOddPivots_hall_bound
    {N : ℕ} {B : Finset ℕ} {tOne tThree : ℕ}
    (hN : 3_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hResidualOdd : ∀ x ∈ hallResidual N B,
      x % 4 = 1 ∨ x % 4 = 3)
    (htOne : tOne ∈ hallResidual N B)
    (htOneClass : tOne % 4 = 1)
    (htThree : tThree ∈ hallResidual N B)
    (htThreeClass : tThree % 4 = 3)
    (hdiagonal : ((lowDiagonalOdd N).card : ℚ) ≤
      (12_655 / 1_000_000 : ℚ) * N)
    (hoddDegree : ∀ {u r : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive r (u % 4) →
      ((lowBaseBadMod4Neighbours N u r).card : ℚ) ≤
        (N : ℚ) / 300 + 672) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hResidualNat := Finset.card_le_card
    (hallResidual_subset_lowDiagonalOdd hBout hBprop hResidualOdd)
  have hResidualQ : ((hallResidual N B).card : ℚ) ≤
      ((lowDiagonalOdd N).card : ℚ) := by
    exact_mod_cast hResidualNat
  have hBaseQ : ((hallBasePart N B).card : ℚ) ≤
      4 * ((N : ℚ) / 300 + 672) :=
    hallBasePart_card_cast_le_four_oddDegrees hBprop htOne htThree
      htOneClass htThreeClass hoddDegree
  have hPartitionQ : ((hallCompletion N B).card : ℚ) =
      ((hallResidual N B).card : ℚ) + ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hcompletion : ((hallCompletion N B).card : ℚ) ≤
      ((lowDiagonalOdd N).card : ℚ) +
        4 * ((N : ℚ) / 300 + 672) := by
    rw [hPartitionQ]
    linarith
  have hterminal := secondLow_twoOddClasses_arithmetic
    (N := N) (diagonal := ((lowDiagonalOdd N).card : ℚ))
    (oddDegree := (N : ℚ) / 300 + 672) hN hdiagonal le_rfl
  apply hall_bound_of_completion_cast_lt_target hBout
  linarith

lemma hallBasePart_card_cast_le_raw_add_three_oddDegrees
    {N : ℕ} {B : Finset ℕ} {t r : ℕ} {oddDegree rawBound : ℚ}
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallResidual N B)
    (htClass : t % 4 = r)
    (hr : r = 1 ∨ r = 3)
    (hoddDegree : ∀ {u s : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive s (u % 4) →
      ((lowBaseBadMod4Neighbours N u s).card : ℚ) ≤ oddDegree)
    (hraw : ∀ s : ℕ, ((lowBaseMod4Part N s).card : ℚ) ≤ rawBound) :
    ((hallBasePart N B).card : ℚ) ≤ rawBound + 3 * oddDegree := by
  have htCompletion : t ∈ hallCompletion N B := (Finset.mem_sdiff.mp ht).1
  have hpartsQ : ((hallBasePart N B).card : ℚ) =
      ((hallBaseMod4Part N B 0).card : ℚ) +
      ((hallBaseMod4Part N B 1).card : ℚ) +
      ((hallBaseMod4Part N B 2).card : ℚ) +
      ((hallBaseMod4Part N B 3).card : ℚ) := by
    exact_mod_cast (hallBasePart_four_card_sum N B).symm
  rcases hr with rfl | rfl
  · have h0Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 0) htCompletion)
    have h1Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 1) htCompletion)
    have h2Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 2) htCompletion)
    have h3Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_raw (N := N) (B := B) (r := 3))
    have h0 : ((hallBaseMod4Part N B 0).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 0).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 0).card : ℚ) := by exact_mod_cast h0Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    have h1 : ((hallBaseMod4Part N B 1).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 1).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 1).card : ℚ) := by exact_mod_cast h1Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    have h2 : ((hallBaseMod4Part N B 2).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 2).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 2).card : ℚ) := by exact_mod_cast h2Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    have h3 : ((hallBaseMod4Part N B 3).card : ℚ) ≤ rawBound := by
      have hcast : ((hallBaseMod4Part N B 3).card : ℚ) ≤
          ((lowBaseMod4Part N 3).card : ℚ) := by exact_mod_cast h3Nat
      exact le_trans hcast (hraw 3)
    rw [hpartsQ]
    linarith
  · have h0Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 0) htCompletion)
    have h1Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_raw (N := N) (B := B) (r := 1))
    have h2Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 2) htCompletion)
    have h3Nat := Finset.card_le_card
      (hallBaseMod4Part_subset_bad hBprop (r := 3) htCompletion)
    have h0 : ((hallBaseMod4Part N B 0).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 0).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 0).card : ℚ) := by exact_mod_cast h0Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    have h1 : ((hallBaseMod4Part N B 1).card : ℚ) ≤ rawBound := by
      have hcast : ((hallBaseMod4Part N B 1).card : ℚ) ≤
          ((lowBaseMod4Part N 1).card : ℚ) := by exact_mod_cast h1Nat
      exact le_trans hcast (hraw 1)
    have h2 : ((hallBaseMod4Part N B 2).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 2).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 2).card : ℚ) := by exact_mod_cast h2Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    have h3 : ((hallBaseMod4Part N B 3).card : ℚ) ≤ oddDegree := by
      have hcast : ((hallBaseMod4Part N B 3).card : ℚ) ≤
          ((lowBaseBadMod4Neighbours N t 3).card : ℚ) := by exact_mod_cast h3Nat
      exact le_trans hcast (hoddDegree ht (by
        norm_num [twoSquareInactive, htClass]))
    rw [hpartsQ]
    linarith

theorem firstLow_oneOddClassPivot_hall_bound
    {N : ℕ} {B : Finset ℕ} {t r : ℕ}
    (hN : 1_500_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallResidual N B)
    (hr : r = 1 ∨ r = 3)
    (hclass : ∀ x ∈ hallResidual N B, x % 4 = r)
    (hdiagonal : ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_337 / 1_000_000 : ℚ) * N)
    (hoddDegree : ∀ {u s : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive s (u % 4) →
      ((lowBaseBadMod4Neighbours N u s).card : ℚ) ≤
        (N : ℚ) / 300 + 548)
    (hraw : ∀ s : ℕ, ((lowBaseMod4Part N s).card : ℚ) ≤
      (N : ℚ) / 50 + 2) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hResidualNat := Finset.card_le_card
    (hallResidual_subset_lowDiagonalMod4 hBout hBprop hclass)
  have hResidualQ : ((hallResidual N B).card : ℚ) ≤
      ((lowDiagonalMod4 N r).card : ℚ) := by exact_mod_cast hResidualNat
  have hBaseQ : ((hallBasePart N B).card : ℚ) ≤
      ((N : ℚ) / 50 + 2) + 3 * ((N : ℚ) / 300 + 548) :=
    hallBasePart_card_cast_le_raw_add_three_oddDegrees hBprop ht
      (hclass t ht) hr hoddDegree hraw
  have hPartitionQ : ((hallCompletion N B).card : ℚ) =
      ((hallResidual N B).card : ℚ) + ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hcompletion : ((hallCompletion N B).card : ℚ) ≤
      ((lowDiagonalMod4 N r).card : ℚ) + ((N : ℚ) / 50 + 2) +
        3 * ((N : ℚ) / 300 + 548) := by
    rw [hPartitionQ]
    linarith
  have hterminal := firstLow_oneOddClass_arithmetic
    (N := N) (diagonal := ((lowDiagonalMod4 N r).card : ℚ))
    (oddDegree := (N : ℚ) / 300 + 548)
    (rawClass := (N : ℚ) / 50 + 2) hN hdiagonal le_rfl le_rfl
  apply hall_bound_of_completion_cast_lt_target hBout
  linarith

theorem secondLow_oneOddClassPivot_hall_bound
    {N : ℕ} {B : Finset ℕ} {t r : ℕ}
    (hN : 3_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallResidual N B)
    (hr : r = 1 ∨ r = 3)
    (hclass : ∀ x ∈ hallResidual N B, x % 4 = r)
    (hdiagonal : ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_333 / 1_000_000 : ℚ) * N)
    (hoddDegree : ∀ {u s : ℕ}, u ∈ hallResidual N B →
      twoSquareInactive s (u % 4) →
      ((lowBaseBadMod4Neighbours N u s).card : ℚ) ≤
        (N : ℚ) / 300 + 672)
    (hraw : ∀ s : ℕ, ((lowBaseMod4Part N s).card : ℚ) ≤
      (N : ℚ) / 50 + 2) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hResidualNat := Finset.card_le_card
    (hallResidual_subset_lowDiagonalMod4 hBout hBprop hclass)
  have hResidualQ : ((hallResidual N B).card : ℚ) ≤
      ((lowDiagonalMod4 N r).card : ℚ) := by exact_mod_cast hResidualNat
  have hBaseQ : ((hallBasePart N B).card : ℚ) ≤
      ((N : ℚ) / 50 + 2) + 3 * ((N : ℚ) / 300 + 672) :=
    hallBasePart_card_cast_le_raw_add_three_oddDegrees hBprop ht
      (hclass t ht) hr hoddDegree hraw
  have hPartitionQ : ((hallCompletion N B).card : ℚ) =
      ((hallResidual N B).card : ℚ) + ((hallBasePart N B).card : ℚ) := by
    exact_mod_cast (hallCompletion_card_partition N B).symm
  have hcompletion : ((hallCompletion N B).card : ℚ) ≤
      ((lowDiagonalMod4 N r).card : ℚ) + ((N : ℚ) / 50 + 2) +
        3 * ((N : ℚ) / 300 + 672) := by
    rw [hPartitionQ]
    linarith
  have hterminal := secondLow_oneOddClass_arithmetic
    (N := N) (diagonal := ((lowDiagonalMod4 N r).card : ℚ))
    (oddDegree := (N : ℚ) / 300 + 672)
    (rawClass := (N : ℚ) / 50 + 2) hN hdiagonal le_rfl le_rfl
  apply hall_bound_of_completion_cast_lt_target hBout
  linarith

/-! ## Direct closure of the even-pivot mechanism -/

theorem firstLow_evenPivot_hall_bound
    {N : ℕ} {B : Finset ℕ} {t : ℕ}
    (hN : 1_500_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallResidual N B)
    (htEven : t % 4 = 0 ∨ t % 4 = 2)
    (hdiagonal : ((lowDiagonalBad N).card : ℚ) ≤
      (25_297 / 1_000_000 : ℚ) * N)
    (hevenDegree : ∀ {u : ℕ}, u ∈ hallResidual N B →
      (u % 4 = 0 ∨ u % 4 = 2) →
      ((lowBaseBadNeighbours N u).card : ℚ) ≤ (N : ℚ) / 75 + 462) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hcompletion := hallCompletion_card_cast_le_diagonal_add_degree
    hBout hBprop ht
  have hterminal := firstLow_eightEven_arithmetic hN hdiagonal
    (hevenDegree ht htEven)
  have htarget : ((hallCompletion N B).card : ℚ) <
      (N : ℚ) / 25 - 7 / 25 :=
    lt_of_le_of_lt hcompletion hterminal
  have hcardQ : ((hallCompletion N B).card : ℚ) <
      ((OriginalA7 N).card : ℚ) :=
    lt_of_lt_of_le htarget (originalA7_card_cast_lower N)
  have hcard : (hallCompletion N B).card < (OriginalA7 N).card := by
    exact_mod_cast hcardQ
  rw [hallCompletion_card hBout] at hcard
  exact Nat.le_of_lt hcard

theorem secondLow_evenPivot_hall_bound
    {N : ℕ} {B : Finset ℕ} {t : ℕ}
    (hN : 3_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (ht : t ∈ hallResidual N B)
    (htEven : t % 4 = 0 ∨ t % 4 = 2)
    (hdiagonal : ((lowDiagonalBad N).card : ℚ) ≤
      (25_295 / 1_000_000 : ℚ) * N)
    (hevenDegree : ∀ {u : ℕ}, u ∈ hallResidual N B →
      (u % 4 = 0 ∨ u % 4 = 2) →
      ((lowBaseBadNeighbours N u).card : ℚ) ≤ (N : ℚ) / 75 + 567) :
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card := by
  have hcompletion := hallCompletion_card_cast_le_diagonal_add_degree
    hBout hBprop ht
  have hterminal := secondLow_eightEven_arithmetic hN hdiagonal
    (hevenDegree ht htEven)
  have htarget : ((hallCompletion N B).card : ℚ) <
      (N : ℚ) / 25 - 7 / 25 :=
    lt_of_le_of_lt hcompletion hterminal
  have hcardQ : ((hallCompletion N B).card : ℚ) <
      ((OriginalA7 N).card : ℚ) :=
    lt_of_lt_of_le htarget (originalA7_card_cast_lower N)
  have hcard : (hallCompletion N B).card < (OriginalA7 N).card := by
    exact_mod_cast hcardQ
  rw [hallCompletion_card hBout] at hcard
  exact Nat.le_of_lt hcard

/-! ## Minimal direct-close contracts for the two low ranges

The strengthened single-pivot trichotomy needs no residual-density scan.
These structures contain only
the pure opposite-base close and the diagonal/one-pivot degree estimates that
the branch theorems consume. -/

structure FirstLowKernelBounds (N : ℕ) : Prop where
  pure : ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card
  diagonalAll : ((lowDiagonalBad N).card : ℚ) ≤
    (25_297 / 1_000_000 : ℚ) * N
  diagonalOdd : ((lowDiagonalOdd N).card : ℚ) ≤
    (12_657 / 1_000_000 : ℚ) * N
  diagonalOne : ∀ r : ℕ, (r = 1 ∨ r = 3) →
    ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_337 / 1_000_000 : ℚ) * N
  evenDegree : ∀ u : ℕ, u ∈ Finset.Icc 1 N \ lowBaseSet N →
    u ∈ lowDiagonalBad N →
    (u % 4 = 0 ∨ u % 4 = 2) →
    ((lowBaseBadNeighbours N u).card : ℚ) ≤ (N : ℚ) / 75 + 462
  oddDegree : ∀ u s : ℕ, u ∈ Finset.Icc 1 N \ lowBaseSet N →
    u ∈ lowDiagonalBad N →
    twoSquareInactive s (u % 4) →
    ((lowBaseBadMod4Neighbours N u s).card : ℚ) ≤
      (N : ℚ) / 300 + 548

structure SecondLowKernelBounds (N : ℕ) : Prop where
  pure : ∀ B : Finset ℕ,
    Erdos848OutsideSet N B → NonSquarefreeProductProp B →
    hallResidual N B = ∅ →
    B.card + (hallNonNeighbours N B).card ≤ (OriginalA7 N).card
  diagonalAll : ((lowDiagonalBad N).card : ℚ) ≤
    (25_295 / 1_000_000 : ℚ) * N
  diagonalOdd : ((lowDiagonalOdd N).card : ℚ) ≤
    (12_655 / 1_000_000 : ℚ) * N
  diagonalOne : ∀ r : ℕ, (r = 1 ∨ r = 3) →
    ((lowDiagonalMod4 N r).card : ℚ) ≤
      (6_333 / 1_000_000 : ℚ) * N
  evenDegree : ∀ u : ℕ, u ∈ Finset.Icc 1 N \ lowBaseSet N →
    u ∈ lowDiagonalBad N →
    (u % 4 = 0 ∨ u % 4 = 2) →
    ((lowBaseBadNeighbours N u).card : ℚ) ≤ (N : ℚ) / 75 + 567
  oddDegree : ∀ u s : ℕ, u ∈ Finset.Icc 1 N \ lowBaseSet N →
    u ∈ lowDiagonalBad N →
    twoSquareInactive s (u % 4) →
    ((lowBaseBadMod4Neighbours N u s).card : ℚ) ≤
      (N : ℚ) / 300 + 672

theorem firstLowHallStatement_of_kernelBounds
    {N : ℕ} (hN : 1_500_000 ≤ N) (bounds : FirstLowKernelBounds N) :
    Erdos848HallStatement N := by
  intro B hBout hBprop
  have hResidualOutside : ∀ {u : ℕ}, u ∈ hallResidual N B →
      u ∈ Finset.Icc 1 N \ lowBaseSet N := by
    intro u hu
    exact Finset.mem_sdiff.mpr ⟨
      hallCompletion_subset_Icc hBout (Finset.mem_sdiff.mp hu).1,
      (Finset.mem_sdiff.mp hu).2⟩
  have hResidualDiagonal : ∀ {u : ℕ}, u ∈ hallResidual N B →
      u ∈ lowDiagonalBad N := by
    intro u hu
    exact hallResidual_subset_lowDiagonalBad hBout hBprop hu
  rcases lowResidualSinglePivotTrichotomy (hallResidual N B) with
    hEmpty | hEven | hBoth | hOne | hThree
  · exact bounds.pure B hBout hBprop hEmpty
  · obtain ⟨t, htPart⟩ := hEven
    have htData := Finset.mem_filter.mp htPart
    exact firstLow_evenPivot_hall_bound hN hBout hBprop htData.1 htData.2
      bounds.diagonalAll (by
        intro u hu huEven
        exact bounds.evenDegree u (hResidualOutside hu)
          (hResidualDiagonal hu) huEven)
  · obtain ⟨tOne, htOnePart⟩ := hBoth.2.1
    obtain ⟨tThree, htThreePart⟩ := hBoth.2.2
    have htOneData := Finset.mem_filter.mp htOnePart
    have htThreeData := Finset.mem_filter.mp htThreePart
    exact firstLow_twoOddPivots_hall_bound hN hBout hBprop hBoth.1
      htOneData.1 htOneData.2 htThreeData.1 htThreeData.2
      bounds.diagonalOdd (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
  · obtain ⟨t, ht⟩ := hOne.1
    exact firstLow_oneOddClassPivot_hall_bound hN hBout hBprop ht
      (Or.inl rfl) hOne.2 (bounds.diagonalOne 1 (Or.inl rfl)) (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
      (lowBaseMod4Part_cast_le N)
  · obtain ⟨t, ht⟩ := hThree.1
    exact firstLow_oneOddClassPivot_hall_bound hN hBout hBprop ht
      (Or.inr rfl) hThree.2 (bounds.diagonalOne 3 (Or.inr rfl)) (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
      (lowBaseMod4Part_cast_le N)

theorem secondLowHallStatement_of_kernelBounds
    {N : ℕ} (hN : 3_000_000 ≤ N) (bounds : SecondLowKernelBounds N) :
    Erdos848HallStatement N := by
  intro B hBout hBprop
  have hResidualOutside : ∀ {u : ℕ}, u ∈ hallResidual N B →
      u ∈ Finset.Icc 1 N \ lowBaseSet N := by
    intro u hu
    exact Finset.mem_sdiff.mpr ⟨
      hallCompletion_subset_Icc hBout (Finset.mem_sdiff.mp hu).1,
      (Finset.mem_sdiff.mp hu).2⟩
  have hResidualDiagonal : ∀ {u : ℕ}, u ∈ hallResidual N B →
      u ∈ lowDiagonalBad N := by
    intro u hu
    exact hallResidual_subset_lowDiagonalBad hBout hBprop hu
  rcases lowResidualSinglePivotTrichotomy (hallResidual N B) with
    hEmpty | hEven | hBoth | hOne | hThree
  · exact bounds.pure B hBout hBprop hEmpty
  · obtain ⟨t, htPart⟩ := hEven
    have htData := Finset.mem_filter.mp htPart
    exact secondLow_evenPivot_hall_bound hN hBout hBprop htData.1 htData.2
      bounds.diagonalAll (by
        intro u hu huEven
        exact bounds.evenDegree u (hResidualOutside hu)
          (hResidualDiagonal hu) huEven)
  · obtain ⟨tOne, htOnePart⟩ := hBoth.2.1
    obtain ⟨tThree, htThreePart⟩ := hBoth.2.2
    have htOneData := Finset.mem_filter.mp htOnePart
    have htThreeData := Finset.mem_filter.mp htThreePart
    exact secondLow_twoOddPivots_hall_bound hN hBout hBprop hBoth.1
      htOneData.1 htOneData.2 htThreeData.1 htThreeData.2
      bounds.diagonalOdd (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
  · obtain ⟨t, ht⟩ := hOne.1
    exact secondLow_oneOddClassPivot_hall_bound hN hBout hBprop ht
      (Or.inl rfl) hOne.2 (bounds.diagonalOne 1 (Or.inl rfl)) (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
      (lowBaseMod4Part_cast_le N)
  · obtain ⟨t, ht⟩ := hThree.1
    exact secondLow_oneOddClassPivot_hall_bound hN hBout hBprop ht
      (Or.inr rfl) hThree.2 (bounds.diagonalOne 3 (Or.inr rfl)) (by
        intro u s hu hinactive
        exact bounds.oddDegree u s (hResidualOutside hu)
          (hResidualDiagonal hu) hinactive)
      (lowBaseMod4Part_cast_le N)

def Erdos848FirstLowKernelEvidence : Prop :=
  ∀ N, 1_500_000 ≤ N → N < 3_000_000 → Nonempty (FirstLowKernelBounds N)

def Erdos848SecondLowKernelEvidence : Prop :=
  ∀ N, 3_000_000 ≤ N → N < 5_000_000 → Nonempty (SecondLowKernelBounds N)

theorem erdos848FirstLowClose_of_kernelEvidence
    (evidence : Erdos848FirstLowKernelEvidence) : Erdos848FirstLowClose := by
  intro N hlower hupper
  obtain ⟨bounds⟩ := evidence N hlower hupper
  exact originalProblem_of_hallStatement
    (firstLowHallStatement_of_kernelBounds hlower bounds)

theorem erdos848SecondLowClose_of_kernelEvidence
    (evidence : Erdos848SecondLowKernelEvidence) : Erdos848SecondLowClose := by
  intro N hlower hupper
  obtain ⟨bounds⟩ := evidence N hlower hupper
  exact originalProblem_of_hallStatement
    (secondLowHallStatement_of_kernelBounds hlower bounds)

end Erdos848
