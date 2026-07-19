import Erdos848.TailMixedHall
import Erdos848.TailPaperValuationChargeBridge

namespace Erdos848

/-!
# Literal close triples for the twenty-million allocation

The external search supplies numerical degree and component bounds.  Pivot
selection itself is proved here from the literal Hall residual: a valuation
part larger than the `20001`-bucket count contains a pair at distance at most
`20000`, and its size also leaves a third distinct pivot.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def twentyMillionGapChargeCap (N : Nat) : Nat :=
  (N - 1) / 20_001 + 1

def twentyMillionOddTwoBucketCap (N : Nat) : Nat :=
  (N - 1) / 296 + 1

def twentyMillionOddOneBucketCap (N : Nat) : Nat :=
  (N - 1) / 148 + 1

def TwentyMillionDegreeResidualLower (N : Nat) (B : Finset Nat) : Prop :=
  6_910_733 * N < 1_000_000_000 * (hallResidual N B).card

theorem fiveMillionValuationParts_card_explicit
    (N : Nat) (B : Finset Nat) :
    (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card +
          (fiveMillionValuationPart N B .evenThree).card +
          (fiveMillionValuationPart N B .oddOne).card +
          (fiveMillionValuationPart N B .oddThree).card =
      (hallResidual N B).card := by
  have hsum := fiveMillionValuationParts_card_sum N B
  rw [show (Finset.univ : Finset FiveMillionValuationClass) =
      {.evenOne, .evenTwo, .evenThree, .oddOne, .oddThree} by decide] at hsum
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hsum

structure TwentyMillionCloseTriple
    (N : Nat) (B : Finset Nat) (cls : FiveMillionValuationClass) where
  pivots : Finset Nat
  card : pivots.card = 3
  subsetPart : pivots ⊆ fiveMillionValuationPart N B cls
  left : Nat
  right : Nat
  leftMem : left ∈ pivots
  rightMem : right ∈ pivots
  left_lt_right : left < right
  gap_le : right - left ≤ 20_000

def TwentyMillionCloseTriple.CommonModNine
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) : Prop :=
  ∃ cell : Fin 9, ∀ pivot ∈ triple.pivots,
    paperModNineCell pivot = cell

theorem fiveMillionValuationPart_subset_Icc_of_outside
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B) :
    fiveMillionValuationPart N B cls ⊆ Finset.Icc 1 N := by
  intro pivot hpivot
  have hpivotResidual :=
    fiveMillionValuationPart_subset_residual N B cls hpivot
  have hpivotCompletion : pivot ∈ hallCompletion N B :=
    (Finset.mem_sdiff.mp hpivotResidual).1
  exact hallCompletion_subset_Icc hBout hpivotCompletion

theorem exists_twentyMillionCloseTriple
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hlarge :
      twentyMillionGapChargeCap N <
        (fiveMillionValuationPart N B cls).card) :
    Nonempty (TwentyMillionCloseTriple N B cls) := by
  classical
  let part := fiveMillionValuationPart N B cls
  obtain ⟨x, hx, y, hy, hxy, hgap⟩ :=
    exists_close_pair_of_card
      (S := part) (N := N) (gap := 20_001)
      (by norm_num)
      (fiveMillionValuationPart_subset_Icc_of_outside hBout)
      (by simpa [part, twentyMillionGapChargeCap] using hlarge)
  have hpartCard : 2 < part.card := by
    have hcapLower : 2 ≤ twentyMillionGapChargeCap N := by
      simp [twentyMillionGapChargeCap]
      omega
    have hlargePart :
        twentyMillionGapChargeCap N < part.card := by
      simpa [part] using hlarge
    omega
  have hxyNe : x ≠ y := Nat.ne_of_lt hxy
  have hpairCard : ({x, y} : Finset Nat).card = 2 := by
    simp [hxyNe]
  have hnotSubset : ¬ part ⊆ ({x, y} : Finset Nat) := by
    intro hsubset
    have hcardLe := Finset.card_le_card hsubset
    rw [hpairCard] at hcardLe
    omega
  obtain ⟨z, hzPart, hzPair⟩ := Finset.not_subset.mp hnotSubset
  have hzx : z ≠ x := by
    intro h
    apply hzPair
    simp [h]
  have hzy : z ≠ y := by
    intro h
    apply hzPair
    simp [h]
  have hxz : x ≠ z := Ne.symm hzx
  have hyz : y ≠ z := Ne.symm hzy
  let pivots : Finset Nat := {x, y, z}
  have hpivotsCard : pivots.card = 3 := by
    simp [pivots, hxyNe, hxz, hyz]
  have hpivotsSubset : pivots ⊆ part := by
    intro pivot hpivot
    simp only [pivots, Finset.mem_insert, Finset.mem_singleton] at hpivot
    rcases hpivot with rfl | rfl | rfl
    · exact hx
    · exact hy
    · exact hzPart
  exact ⟨
    { pivots := pivots
      card := hpivotsCard
      subsetPart := by simpa [part] using hpivotsSubset
      left := x
      right := y
      leftMem := by simp [pivots]
      rightMem := by simp [pivots]
      left_lt_right := hxy
      gap_le := by omega }⟩

theorem TwentyMillionCloseTriple.common_or_nonconstant
    {N : Nat} {B : Finset Nat} {cls : FiveMillionValuationClass}
    (triple : TwentyMillionCloseTriple N B cls) :
    triple.CommonModNine ∨
      ∃ left ∈ triple.pivots, ∃ right ∈ triple.pivots,
        paperModNineCell left ≠ paperModNineCell right := by
  classical
  by_cases hcommon : triple.CommonModNine
  · exact Or.inl hcommon
  · right
    have hpivotsPositive : 0 < triple.pivots.card := by
      rw [triple.card]
      norm_num
    obtain ⟨first, hfirst⟩ := Finset.card_pos.mp hpivotsPositive
    have hnotAll :
        ¬ ∀ pivot ∈ triple.pivots,
          paperModNineCell pivot = paperModNineCell first := by
      intro hall
      exact hcommon ⟨paperModNineCell first, hall⟩
    push Not at hnotAll
    obtain ⟨other, hother, hne⟩ := hnotAll
    exact ⟨other, hother, first, hfirst, hne⟩

theorem twentyMillion_oddTwo_bucket_forced
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hDegree : TwentyMillionDegreeResidualLower N B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        twentyMillionGapChargeCap N)
    (hEvenTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        twentyMillionGapChargeCap N)
    (hEvenThree :
      (fiveMillionValuationPart N B .evenThree).card ≤
        twentyMillionGapChargeCap N) :
    twentyMillionOddTwoBucketCap N <
        (fiveMillionValuationPart N B .oddOne).card ∨
      twentyMillionOddTwoBucketCap N <
        (fiveMillionValuationPart N B .oddThree).card := by
  have hsum :
      (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card +
          (fiveMillionValuationPart N B .evenThree).card +
          (fiveMillionValuationPart N B .oddOne).card +
          (fiveMillionValuationPart N B .oddThree).card =
        (hallResidual N B).card := by
    exact fiveMillionValuationParts_card_explicit N B
  unfold TwentyMillionDegreeResidualLower at hDegree
  by_contra hnone
  push Not at hnone
  rcases hnone with ⟨hOddOne, hOddThree⟩
  simp only [twentyMillionGapChargeCap] at hEvenOne hEvenTwo hEvenThree
  simp only [twentyMillionOddTwoBucketCap] at hOddOne hOddThree
  omega

theorem twentyMillion_oddOne_bucket_forced
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hDegree : TwentyMillionDegreeResidualLower N B)
    (hEvenOne :
      (fiveMillionValuationPart N B .evenOne).card ≤
        twentyMillionGapChargeCap N)
    (hEvenTwo :
      (fiveMillionValuationPart N B .evenTwo).card ≤
        twentyMillionGapChargeCap N)
    (hEvenThree :
      (fiveMillionValuationPart N B .evenThree).card ≤
        twentyMillionGapChargeCap N)
    (hOtherEmpty :
      (fiveMillionValuationPart N B
        (paperOddValuationClass (oppositeOddParity parity))).card = 0) :
    twentyMillionOddOneBucketCap N <
      (fiveMillionValuationPart N B
        (paperOddValuationClass parity)).card := by
  have hsum :
      (fiveMillionValuationPart N B .evenOne).card +
          (fiveMillionValuationPart N B .evenTwo).card +
          (fiveMillionValuationPart N B .evenThree).card +
          (fiveMillionValuationPart N B .oddOne).card +
          (fiveMillionValuationPart N B .oddThree).card =
        (hallResidual N B).card := by
    exact fiveMillionValuationParts_card_explicit N B
  unfold TwentyMillionDegreeResidualLower at hDegree
  cases parity <;>
    simp only [paperOddValuationClass, oppositeOddParity] at hOtherEmpty ⊢ <;>
    simp only [twentyMillionGapChargeCap] at hEvenOne hEvenTwo hEvenThree <;>
    simp only [twentyMillionOddOneBucketCap] <;>
    omega

structure TwentyMillionOddTwoCloseTriple
    (N : Nat) (B : Finset Nat) (parity : Bool) where
  pivots : Finset Nat
  card : pivots.card = 3
  left : Nat
  right : Nat
  third : Nat
  leftMem :
    left ∈ fiveMillionValuationPart N B (paperOddValuationClass parity)
  rightMem :
    right ∈ fiveMillionValuationPart N B (paperOddValuationClass parity)
  thirdMem :
    third ∈ fiveMillionValuationPart N B
      (paperOddValuationClass (oppositeOddParity parity))
  pivots_eq : pivots = {left, right, third}
  left_lt_right : left < right
  gap_le : right - left ≤ 295

structure TwentyMillionOddOneCloseTriple
    (N : Nat) (B : Finset Nat) (parity : Bool) where
  pivots : Finset Nat
  card : pivots.card = 3
  subsetPart :
    pivots ⊆ fiveMillionValuationPart N B
      (paperOddValuationClass parity)
  left : Nat
  right : Nat
  leftMem : left ∈ pivots
  rightMem : right ∈ pivots
  left_lt_right : left < right
  gap_le : right - left ≤ 147

theorem exists_twentyMillionOddTwoCloseTriple
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hBout : Erdos848OutsideSet N B)
    (hlarge :
      twentyMillionOddTwoBucketCap N <
        (fiveMillionValuationPart N B
          (paperOddValuationClass parity)).card)
    (hOther :
      (fiveMillionValuationPart N B
        (paperOddValuationClass
          (oppositeOddParity parity))).Nonempty) :
    Nonempty (TwentyMillionOddTwoCloseTriple N B parity) := by
  classical
  let selected :=
    fiveMillionValuationPart N B (paperOddValuationClass parity)
  obtain ⟨x, hx, y, hy, hxy, hgap⟩ :=
    exists_close_pair_of_card
      (S := selected) (N := N) (gap := 296)
      (by norm_num)
      (fiveMillionValuationPart_subset_Icc_of_outside hBout)
      (by simpa [selected, twentyMillionOddTwoBucketCap] using hlarge)
  obtain ⟨z, hz⟩ := hOther
  have hclasses :
      paperOddValuationClass parity ≠
        paperOddValuationClass (oppositeOddParity parity) := by
    cases parity <;> decide
  have hdisjoint :=
    fiveMillionValuationPart_disjoint N B hclasses
  have hzx : z ≠ x := by
    intro h
    subst z
    exact (Finset.disjoint_left.mp hdisjoint) hx hz
  have hzy : z ≠ y := by
    intro h
    subst z
    exact (Finset.disjoint_left.mp hdisjoint) hy hz
  have hxyNe : x ≠ y := Nat.ne_of_lt hxy
  let pivots : Finset Nat := {x, y, z}
  have hpivotsCard : pivots.card = 3 := by
    simp [pivots, hxyNe, Ne.symm hzx, Ne.symm hzy]
  exact ⟨
    { pivots := pivots
      card := hpivotsCard
      left := x
      right := y
      third := z
      leftMem := by simpa [selected] using hx
      rightMem := by simpa [selected] using hy
      thirdMem := hz
      pivots_eq := rfl
      left_lt_right := hxy
      gap_le := by omega }⟩

theorem exists_twentyMillionOddOneCloseTriple
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hlarge :
      twentyMillionOddOneBucketCap N <
        (fiveMillionValuationPart N B
          (paperOddValuationClass parity)).card) :
    Nonempty (TwentyMillionOddOneCloseTriple N B parity) := by
  classical
  let part :=
    fiveMillionValuationPart N B (paperOddValuationClass parity)
  obtain ⟨x, hx, y, hy, hxy, hgap⟩ :=
    exists_close_pair_of_card
      (S := part) (N := N) (gap := 148)
      (by norm_num)
      (fiveMillionValuationPart_subset_Icc_of_outside hBout)
      (by simpa [part, twentyMillionOddOneBucketCap] using hlarge)
  have hpartCard : 2 < part.card := by
    have hcapLower : 2 ≤ twentyMillionOddOneBucketCap N := by
      simp [twentyMillionOddOneBucketCap]
      omega
    have hlargePart : twentyMillionOddOneBucketCap N < part.card := by
      simpa [part] using hlarge
    omega
  have hxyNe : x ≠ y := Nat.ne_of_lt hxy
  have hpairCard : ({x, y} : Finset Nat).card = 2 := by simp [hxyNe]
  have hnotSubset : ¬ part ⊆ ({x, y} : Finset Nat) := by
    intro hsubset
    have hcardLe := Finset.card_le_card hsubset
    rw [hpairCard] at hcardLe
    omega
  obtain ⟨z, hzPart, hzPair⟩ := Finset.not_subset.mp hnotSubset
  have hzx : z ≠ x := by
    intro h
    apply hzPair
    simp [h]
  have hzy : z ≠ y := by
    intro h
    apply hzPair
    simp [h]
  let pivots : Finset Nat := {x, y, z}
  have hpivotsCard : pivots.card = 3 := by
    simp [pivots, hxyNe, Ne.symm hzx, Ne.symm hzy]
  have hpivotsSubset : pivots ⊆ part := by
    intro pivot hpivot
    simp only [pivots, Finset.mem_insert, Finset.mem_singleton] at hpivot
    rcases hpivot with rfl | rfl | rfl
    · exact hx
    · exact hy
    · exact hzPart
  exact ⟨
    { pivots := pivots
      card := hpivotsCard
      subsetPart := by simpa [part] using hpivotsSubset
      left := x
      right := y
      leftMem := by simp [pivots]
      rightMem := by simp [pivots]
      left_lt_right := hxy
      gap_le := by omega }⟩

inductive TwentyMillionValuationAllocation
    (N : Nat) (B : Finset Nat) : Prop where
  | evenOne
      (triple : TwentyMillionCloseTriple N B .evenOne)
  | evenTwo
      (evenOneCharge :
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N)
      (triple : TwentyMillionCloseTriple N B .evenTwo)
  | evenThree
      (evenOneCharge :
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N)
      (evenTwoCharge :
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N)
      (triple : TwentyMillionCloseTriple N B .evenThree)
  | oddTwo
      (evenOneCharge :
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N)
      (evenTwoCharge :
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N)
      (evenThreeCharge :
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N)
      (parity : Bool)
      (triple : TwentyMillionOddTwoCloseTriple N B parity)
  | oddOne
      (evenOneCharge :
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N)
      (evenTwoCharge :
        (fiveMillionValuationPart N B .evenTwo).card ≤
          twentyMillionGapChargeCap N)
      (evenThreeCharge :
        (fiveMillionValuationPart N B .evenThree).card ≤
          twentyMillionGapChargeCap N)
      (parity : Bool)
      (otherEmpty :
        (fiveMillionValuationPart N B
          (paperOddValuationClass
            (oppositeOddParity parity))).card = 0)
      (triple : TwentyMillionOddOneCloseTriple N B parity)

noncomputable def twentyMillionValuationAllocation
    {N : Nat} {B : Finset Nat}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hDegree : TwentyMillionDegreeResidualLower N B) :
    TwentyMillionValuationAllocation N B := by
  classical
  by_cases hOne :
      twentyMillionGapChargeCap N <
        (fiveMillionValuationPart N B .evenOne).card
  · exact .evenOne (Classical.choice
      (exists_twentyMillionCloseTriple hLower hBout hOne))
  · have hOneCharge :
        (fiveMillionValuationPart N B .evenOne).card ≤
          twentyMillionGapChargeCap N := by omega
    by_cases hTwo :
        twentyMillionGapChargeCap N <
          (fiveMillionValuationPart N B .evenTwo).card
    · exact .evenTwo hOneCharge (Classical.choice
        (exists_twentyMillionCloseTriple hLower hBout hTwo))
    · have hTwoCharge :
          (fiveMillionValuationPart N B .evenTwo).card ≤
            twentyMillionGapChargeCap N := by omega
      by_cases hThree :
          twentyMillionGapChargeCap N <
            (fiveMillionValuationPart N B .evenThree).card
      · exact .evenThree hOneCharge hTwoCharge (Classical.choice
          (exists_twentyMillionCloseTriple hLower hBout hThree))
      · have hThreeCharge :
            (fiveMillionValuationPart N B .evenThree).card ≤
              twentyMillionGapChargeCap N := by omega
        let oddOne := fiveMillionValuationPart N B .oddOne
        let oddThree := fiveMillionValuationPart N B .oddThree
        by_cases hOddOneEmpty : oddOne = ∅
        · have hOddOneCard : oddOne.card = 0 := by simp [hOddOneEmpty]
          have hlarge := twentyMillion_oddOne_bucket_forced
            (parity := true) hLower hDegree hOneCharge hTwoCharge
              hThreeCharge (by simpa [oddOne] using hOddOneCard)
          exact .oddOne hOneCharge hTwoCharge hThreeCharge true
            (by simpa [oddOne] using hOddOneCard)
            (Classical.choice
              (exists_twentyMillionOddOneCloseTriple
                hLower hBout hlarge))
        · have hOddOneNonempty : oddOne.Nonempty :=
            Finset.nonempty_iff_ne_empty.mpr hOddOneEmpty
          by_cases hOddThreeEmpty : oddThree = ∅
          · have hOddThreeCard : oddThree.card = 0 := by
              simp [hOddThreeEmpty]
            have hlarge := twentyMillion_oddOne_bucket_forced
              (parity := false) hLower hDegree hOneCharge hTwoCharge
                hThreeCharge (by
                  simpa [oddThree] using hOddThreeCard)
            exact .oddOne hOneCharge hTwoCharge hThreeCharge false
              (by simpa [oddThree] using hOddThreeCard)
              (Classical.choice
                (exists_twentyMillionOddOneCloseTriple
                  hLower hBout hlarge))
          · have hOddThreeNonempty : oddThree.Nonempty :=
              Finset.nonempty_iff_ne_empty.mpr hOddThreeEmpty
            rcases twentyMillion_oddTwo_bucket_forced
                hLower hDegree hOneCharge hTwoCharge hThreeCharge with
              hlargeOne | hlargeThree
            · exact .oddTwo hOneCharge hTwoCharge hThreeCharge false
                (Classical.choice
                  (exists_twentyMillionOddTwoCloseTriple
                    hBout hlargeOne (by
                      simpa [oddThree] using hOddThreeNonempty)))
            · exact .oddTwo hOneCharge hTwoCharge hThreeCharge true
                (Classical.choice
                  (exists_twentyMillionOddTwoCloseTriple
                    hBout hlargeThree (by
                      simpa [oddOne] using hOddOneNonempty)))

#print axioms exists_twentyMillionCloseTriple
#print axioms TwentyMillionCloseTriple.common_or_nonconstant
#print axioms twentyMillion_oddTwo_bucket_forced
#print axioms twentyMillion_oddOne_bucket_forced
#print axioms exists_twentyMillionOddTwoCloseTriple
#print axioms exists_twentyMillionOddOneCloseTriple
#print axioms twentyMillionValuationAllocation

end Erdos848
