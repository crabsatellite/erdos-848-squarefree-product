import Erdos848.TailGlobalMixedThreePivotBudget
import Erdos848.TailGlobalMixedThreePivotFiniteProducer

namespace Erdos848

/-!
# Hall bridge for the three-pivot cutoff-seven finite payment

The abstract `58 / 441` density and the literal CRT producer are connected
here to the actual even-valuation Hall pivots.  Counting is performed directly
on `Icc 1 N` modulo `25 * 441 = 11025`, so each selected residue contributes
one exact `ceilDiv` endpoint and no quotient-interval endpoint is introduced.
-/

noncomputable def globalMixedThreePivotFiniteEventForms
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    (point : ℕ) : Finset GlobalMixedThreePivotForm := by
  classical
  exact Finset.univ.filter fun i =>
    finiteSquarePrimeEvent 7
      (globalMixedThreePivotAt pivots hcard i) point

noncomputable def globalMixedThreePivotFiniteEventCount
    (pivots : Finset ℕ) (point : ℕ) : ℕ := by
  classical
  exact (pivots.filter fun pivot =>
    finiteSquarePrimeEvent 7 pivot point).card

theorem globalMixedThreePivotFiniteEventForms_card
    (pivots : Finset ℕ) (hcard : pivots.card = 3)
    (point : ℕ) :
    (globalMixedThreePivotFiniteEventForms
      pivots hcard point).card =
      globalMixedThreePivotFiniteEventCount pivots point := by
  classical
  change
    ((Finset.univ.filter fun i : GlobalMixedThreePivotForm =>
      finiteSquarePrimeEvent 7
        (globalMixedThreePivotAt pivots hcard i) point).card) =
    ((pivots.filter fun pivot =>
      finiteSquarePrimeEvent 7 pivot point).card)
  apply Finset.card_bij (fun i _hi =>
    globalMixedThreePivotAt pivots hcard i)
  · intro i hi
    exact Finset.mem_filter.mpr
      ⟨globalMixedThreePivotAt_mem pivots hcard i,
        (Finset.mem_filter.mp hi).2⟩
  · intro i _hi j _hj hij
    exact globalMixedThreePivotAt_injective pivots hcard hij
  · intro pivot hpivot
    obtain ⟨i, hi⟩ := globalMixedThreePivotAt_surjective_on
      pivots hcard (Finset.mem_filter.mp hpivot).1
    refine ⟨i, ?_, hi⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ i, ?_⟩
    simpa [hi] using (Finset.mem_filter.mp hpivot).2

theorem globalMixedThreePivotFiniteEventForms_subset_cutoffSeven
    {N : ℕ} {B pivots : Finset ℕ}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {point : ℕ} (hpoint : point ∈ lowBaseSet N) :
    globalMixedThreePivotFiniteEventForms pivots hcard point ⊆
      globalMixedThreePivotCutoffSevenForms pivots hcard point := by
  classical
  intro i hi
  have hpivot := hpivots (globalMixedThreePivotAt_mem pivots hcard i)
  have hevent := (Finset.mem_filter.mp hi).2
  obtain ⟨p, hpFinite, hpDiv⟩ :=
    (finiteSquarePrimeEvent_iff_evenValuationPrime7
      hBout hvaluation hpivot hpoint).mp hevent
  have hpCases : p = 3 ∨ p = 7 := by
    rw [globalMixedEvenFinitePrimes7_eq] at hpFinite
    simpa using hpFinite
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_univ _, ?_⟩
  rcases hpCases with rfl | rfl
  · exact Or.inl hpDiv
  · exact Or.inr hpDiv

private lemma globalMixed_card_le_ceilDiv_of_pairwise_modEq
    (S : Finset ℕ) (N m : ℕ) (hm : 0 < m)
    (hbounds : ∀ a ∈ S, a ∈ Finset.Icc 1 N)
    (hmod : ∀ a ∈ S, ∀ b ∈ S, a ≡ b [MOD m]) :
    S.card ≤ N ⌈/⌉ m := by
  let block : ℕ → ℕ := fun a => (a - 1) / m
  have hblock : ∀ a ∈ S, block a < N ⌈/⌉ m := by
    intro a ha
    have haIcc := Finset.mem_Icc.mp (hbounds a ha)
    have haLt : a - 1 < N := by omega
    have hNle : N ≤ m * (N ⌈/⌉ m) :=
      (ceilDiv_le_iff_le_mul hm).mp le_rfl
    have haMul : a - 1 < m * (N ⌈/⌉ m) :=
      lt_of_lt_of_le haLt hNle
    exact (Nat.div_lt_iff_lt_mul hm).mpr
      (by simpa [block, Nat.mul_comm] using haMul)
  have hinj : Set.InjOn block S := by
    intro a ha b hb hab
    have haIcc := Finset.mem_Icc.mp (hbounds a ha)
    have hbIcc := Finset.mem_Icc.mp (hbounds b hb)
    have habMod : a - 1 ≡ b - 1 [MOD m] := by
      apply Nat.ModEq.add_right_cancel' 1
      simpa [Nat.sub_add_cancel haIcc.1,
        Nat.sub_add_cancel hbIcc.1] using hmod a ha b hb
    have hrema : (a - 1) % m = (b - 1) % m := habMod
    dsimp [block] at hab
    have hsub : a - 1 = b - 1 := by
      calc
        a - 1 = m * ((a - 1) / m) + (a - 1) % m :=
          (Nat.div_add_mod (a - 1) m).symm
        _ = m * ((b - 1) / m) + (b - 1) % m := by
          rw [hab, hrema]
        _ = b - 1 := Nat.div_add_mod (b - 1) m
    omega
  calc
    S.card = (S.image block).card :=
      (Finset.card_image_iff.mpr hinj).symm
    _ ≤ (Finset.range (N ⌈/⌉ m)).card := by
      apply Finset.card_le_card
      intro q hq
      simp only [Finset.mem_image] at hq
      rcases hq with ⟨a, ha, rfl⟩
      exact Finset.mem_range.mpr (hblock a ha)
    _ = N ⌈/⌉ m := Finset.card_range _

/-- Direct interval count for one mod-25 base progression and at most `58`
selected quotient residues modulo `441`. -/
theorem globalMixedBaseProgression_card_le_fiftyEight
    {N baseResidue : ℕ} {S residues : Finset ℕ}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 441 ∈ residues)
    (hcard : residues.card ≤ 58) :
    (S.card : ℚ) ≤ (58 / 11025 : ℚ) * N + 58 := by
  classical
  let fibre : ℕ → Finset ℕ := fun residue =>
    S.filter fun x => (x / 25) % 441 = residue
  have hpartition : S.card =
      ∑ residue ∈ residues, (fibre residue).card := by
    exact Finset.card_eq_sum_card_fiberwise (by
      intro x hx
      exact hresidue x hx)
  have hfibre : ∀ residue ∈ residues,
      (fibre residue).card ≤ N ⌈/⌉ 11025 := by
    intro residue _hresidue
    apply globalMixed_card_le_ceilDiv_of_pairwise_modEq
      (fibre residue) N 11025 (by norm_num)
    · intro x hx
      exact hSBounds x (Finset.mem_filter.mp hx).1
    · intro x hx y hy
      have hxS := (Finset.mem_filter.mp hx).1
      have hyS := (Finset.mem_filter.mp hy).1
      have hxMod := hSMod x hxS
      have hyMod := hSMod y hyS
      have hxResidue := (Finset.mem_filter.mp hx).2
      have hyResidue := (Finset.mem_filter.mp hy).2
      have hxDecomp := Nat.mod_add_div x 25
      have hyDecomp := Nat.mod_add_div y 25
      have hxQuotientDecomp := Nat.mod_add_div (x / 25) 441
      have hyQuotientDecomp := Nat.mod_add_div (y / 25) 441
      change x % 11025 = y % 11025
      omega
  have hsum :
      (∑ residue ∈ residues, (fibre residue).card) ≤
        ∑ _residue ∈ residues, N ⌈/⌉ 11025 := by
    exact Finset.sum_le_sum hfibre
  have hcardNat : S.card ≤ 58 * (N ⌈/⌉ 11025) := by
    rw [hpartition]
    calc
      (∑ residue ∈ residues, (fibre residue).card) ≤
          ∑ _residue ∈ residues, N ⌈/⌉ 11025 := hsum
      _ = residues.card * (N ⌈/⌉ 11025) := by simp
      _ ≤ 58 * (N ⌈/⌉ 11025) :=
        Nat.mul_le_mul_right _ hcard
  have hcardQ : (S.card : ℚ) ≤
      58 * ((N ⌈/⌉ 11025 : ℕ) : ℚ) := by
    exact_mod_cast hcardNat
  have hceilNat : N ⌈/⌉ 11025 ≤ N / 11025 + 1 := by
    apply (ceilDiv_le_iff_le_mul (by norm_num : 0 < 11025)).mpr
    have hdecomp := Nat.div_add_mod N 11025
    have hrem := Nat.mod_lt N (by norm_num : 0 < 11025)
    omega
  have hceilCast : ((N ⌈/⌉ 11025 : ℕ) : ℚ) ≤
      ((N / 11025 : ℕ) : ℚ) + 1 := by
    exact_mod_cast hceilNat
  have hdivCast : ((N / 11025 : ℕ) : ℚ) ≤ (N : ℚ) / 11025 :=
    Nat.cast_div_le
  have hceil : ((N ⌈/⌉ 11025 : ℕ) : ℚ) ≤
      (N : ℚ) / 11025 + 1 := by
    linarith
  calc
    (S.card : ℚ) ≤ 58 * ((N ⌈/⌉ 11025 : ℕ) : ℚ) := hcardQ
    _ ≤ 58 * ((N : ℚ) / 11025 + 1) := by gcongr
    _ = (58 / 11025 : ℚ) * N + 58 := by ring

/-- The sharp all-three analogue: at most nine quotient residues. -/
theorem globalMixedBaseProgression_card_le_nine
    {N baseResidue : Nat} {S residues : Finset Nat}
    (hSBounds : ∀ x ∈ S, x ∈ Finset.Icc 1 N)
    (hSMod : ∀ x ∈ S, x % 25 = baseResidue)
    (hresidue : ∀ x ∈ S, (x / 25) % 441 ∈ residues)
    (hcard : residues.card <= 9) :
    (S.card : Rat) <= (9 / 11025 : Rat) * N + 9 := by
  classical
  let fibre : Nat -> Finset Nat := fun residue =>
    S.filter fun x => (x / 25) % 441 = residue
  have hpartition : S.card =
      ∑ residue ∈ residues, (fibre residue).card := by
    exact Finset.card_eq_sum_card_fiberwise (by
      intro x hx
      exact hresidue x hx)
  have hfibre : ∀ residue ∈ residues,
      (fibre residue).card <= N ⌈/⌉ 11025 := by
    intro residue _hresidue
    apply globalMixed_card_le_ceilDiv_of_pairwise_modEq
      (fibre residue) N 11025 (by norm_num)
    · intro x hx
      exact hSBounds x (Finset.mem_filter.mp hx).1
    · intro x hx y hy
      have hxS := (Finset.mem_filter.mp hx).1
      have hyS := (Finset.mem_filter.mp hy).1
      have hxMod := hSMod x hxS
      have hyMod := hSMod y hyS
      have hxResidue := (Finset.mem_filter.mp hx).2
      have hyResidue := (Finset.mem_filter.mp hy).2
      have hxDecomp := Nat.mod_add_div x 25
      have hyDecomp := Nat.mod_add_div y 25
      have hxQuotientDecomp := Nat.mod_add_div (x / 25) 441
      have hyQuotientDecomp := Nat.mod_add_div (y / 25) 441
      change x % 11025 = y % 11025
      omega
  have hsum :
      (∑ residue ∈ residues, (fibre residue).card) <=
        ∑ _residue ∈ residues, N ⌈/⌉ 11025 :=
    Finset.sum_le_sum hfibre
  have hcardNat : S.card <= 9 * (N ⌈/⌉ 11025) := by
    rw [hpartition]
    calc
      (∑ residue ∈ residues, (fibre residue).card) <=
          ∑ _residue ∈ residues, N ⌈/⌉ 11025 := hsum
      _ = residues.card * (N ⌈/⌉ 11025) := by simp
      _ <= 9 * (N ⌈/⌉ 11025) := Nat.mul_le_mul_right _ hcard
  have hcardQ : (S.card : Rat) <=
      9 * (((N ⌈/⌉ 11025 : Nat) : Rat)) := by
    exact_mod_cast hcardNat
  have hceilNat : N ⌈/⌉ 11025 <= N / 11025 + 1 := by
    apply (ceilDiv_le_iff_le_mul (by norm_num : 0 < 11025)).mpr
    have hdecomp := Nat.div_add_mod N 11025
    have hrem := Nat.mod_lt N (by norm_num : 0 < 11025)
    omega
  have hceilCast : (((N ⌈/⌉ 11025 : Nat) : Rat)) <=
      ((N / 11025 : Nat) : Rat) + 1 := by
    exact_mod_cast hceilNat
  have hdivCast : (((N / 11025 : Nat) : Rat)) <=
      (N : Rat) / 11025 := Nat.cast_div_le
  have hceil : (((N ⌈/⌉ 11025 : Nat) : Rat)) <=
      (N : Rat) / 11025 + 1 := by
    linarith
  calc
    (S.card : Rat) <= 9 * (((N ⌈/⌉ 11025 : Nat) : Rat)) := hcardQ
    _ <= 9 * ((N : Rat) / 11025 + 1) := by gcongr
    _ = (9 / 11025 : Rat) * N + 9 := by ring

private theorem globalMixedThreePivotThreshold_residue
    {N : ℕ} {B pivots : Finset ℕ}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue point : ℕ}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue)
    (hthreshold : 2 ≤
      globalMixedThreePivotFiniteEventCount pivots point) :
    (point / 25) % 441 ∈
      globalMixedThreePivotNatResidues
        (globalMixedThreePivotModNineRoot
          baseResidue pivots hcard)
        (globalMixedThreePivotModFortyNineRoot
          baseResidue pivots hcard) := by
  have heventCard : 2 ≤
      (globalMixedThreePivotFiniteEventForms
        pivots hcard point).card := by
    rw [globalMixedThreePivotFiniteEventForms_card]
    exact hthreshold
  have hcutoffCard : 2 ≤
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card :=
    heventCard.trans (Finset.card_le_card
      (globalMixedThreePivotFiniteEventForms_subset_cutoffSeven
        hBout hvaluation hpivots hcard hpointLow))
  exact globalMixedThreePivotNatResidue_of_cutoffSevenForms
    hpointMod hcutoffCard

private theorem globalMixedThreePivotAllThreeThreshold_residue
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    {baseResidue point : Nat}
    (hpointLow : point ∈ lowBaseSet N)
    (hpointMod : point % 25 = baseResidue)
    (hthreshold : 3 <=
      globalMixedThreePivotFiniteEventCount pivots point) :
    (point / 25) % 441 ∈
      globalMixedThreePivotAllThreeNatResidues
        (globalMixedThreePivotModNineRoot
          baseResidue pivots hcard)
        (globalMixedThreePivotModFortyNineRoot
          baseResidue pivots hcard) := by
  have heventCard : 3 <=
      (globalMixedThreePivotFiniteEventForms
        pivots hcard point).card := by
    rw [globalMixedThreePivotFiniteEventForms_card]
    exact hthreshold
  have hcutoffCard : 3 <=
      (globalMixedThreePivotCutoffSevenForms
        pivots hcard point).card :=
    heventCard.trans (Finset.card_le_card
      (globalMixedThreePivotFiniteEventForms_subset_cutoffSeven
        hBout hvaluation hpivots hcard hpointLow))
  exact globalMixedThreePivotAllThreeNatResidue_of_cutoffSevenForms
    hpointMod hcutoffCard

/-- All three finite events for a literal even-valuation pivot triple occupy
at most nine CRT residues in each of the two base progressions. -/
theorem globalMixedEvenThreePivotAllFiniteThreshold_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (hcapacity : ∀ residue : Fin 9,
      (pivots.filter fun pivot => pivot % 9 = residue.val).card <= 2) :
    (((hallBasePart N B).filter fun point =>
        3 <= globalMixedThreePivotFiniteEventCount pivots point).card : Rat) /
      N <= 2 / 1225 + 18 / N := by
  classical
  let threshold := (hallBasePart N B).filter fun point =>
    3 <= globalMixedThreePivotFiniteEventCount pivots point
  let seven := threshold ∩ OriginalA7 N
  let eighteen := threshold ∩ OriginalA18 N
  let sevenResidues := globalMixedThreePivotAllThreeNatResidues
    (globalMixedThreePivotModNineRoot 7 pivots hcard)
    (globalMixedThreePivotModFortyNineRoot 7 pivots hcard)
  let eighteenResidues := globalMixedThreePivotAllThreeNatResidues
    (globalMixedThreePivotModNineRoot 18 pivots hcard)
    (globalMixedThreePivotModFortyNineRoot 18 pivots hcard)
  have hthresholdSubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    have hlow := (Finset.mem_inter.mp hbase).2
    rcases Finset.mem_union.mp hlow with hseven | heighteen
    · exact Finset.mem_union_left _ (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : threshold.card <= seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenRootCapacity : ∀ residue,
      (globalMixedPartialRootFibre
        (globalMixedThreePivotModNineRoot 7 pivots hcard)
        residue).card <= 2 :=
    globalMixedThreePivotModNineRoot_fibre_card_le_two hcapacity
  have heightteenRootCapacity : ∀ residue,
      (globalMixedPartialRootFibre
        (globalMixedThreePivotModNineRoot 18 pivots hcard)
        residue).card <= 2 :=
    globalMixedThreePivotModNineRoot_fibre_card_le_two hcapacity
  have hsevenResidues : sevenResidues.card <= 9 := by
    exact globalMixedThreePivotAllThreeNatResidues_card_le_nine
      _ _ hsevenRootCapacity
  have heightteenResidues : eighteenResidues.card <= 9 := by
    exact globalMixedThreePivotAllThreeNatResidues_card_le_nine
      _ _ heightteenRootCapacity
  have hsevenBound : (seven.card : Rat) <=
      (9 / 11025 : Rat) * N + 9 := by
    apply globalMixedBaseProgression_card_le_nine
      (residues := sevenResidues) (baseResidue := 7)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      have hthreshold := (Finset.mem_filter.mp
        (Finset.mem_inter.mp hpoint).1).2
      have hpointLow := (Finset.mem_inter.mp
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1).2
      exact globalMixedThreePivotAllThreeThreshold_residue
        hBout hvaluation hpivots hcard hpointLow
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        hthreshold
    · exact hsevenResidues
  have heightteenBound : (eighteen.card : Rat) <=
      (9 / 11025 : Rat) * N + 9 := by
    apply globalMixedBaseProgression_card_le_nine
      (residues := eighteenResidues) (baseResidue := 18)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      have hthreshold := (Finset.mem_filter.mp
        (Finset.mem_inter.mp hpoint).1).2
      have hpointLow := (Finset.mem_inter.mp
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1).2
      exact globalMixedThreePivotAllThreeThreshold_residue
        hBout hvaluation hpivots hcard hpointLow
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        hthreshold
    · exact heightteenResidues
  have hthresholdQ : (threshold.card : Rat) <=
      (seven.card : Rat) + (eighteen.card : Rat) := by
    exact_mod_cast hthresholdCard
  have hcount : (threshold.card : Rat) <=
      2 * ((9 / 11025 : Rat) * N + 9) := by
    linarith
  have hNpos : (0 : Rat) < N := by
    have hNposNat : 0 < N := by
      have hpivot : pivots.Nonempty := Finset.card_pos.mp (by omega)
      obtain ⟨pivot, hpivot⟩ := hpivot
      have hpivotPart := hpivots hpivot
      have hpivotResidual := fiveMillionValuationPart_subset_residual
        N B valuation hpivotPart
      have hpivotCompletion := (Finset.mem_sdiff.mp hpivotResidual).1
      have hpivotBounds := Finset.mem_Icc.mp
        (hallCompletion_subset_Icc hBout hpivotCompletion)
      omega
    exact_mod_cast hNposNat
  change (threshold.card : Rat) / N <= _
  calc
    (threshold.card : Rat) / N <=
        (2 * ((9 / 11025 : Rat) * N + 9)) / N :=
      div_le_div_of_nonneg_right hcount hNpos.le
    _ = 2 / 1225 + 18 / N := by
      field_simp [ne_of_gt hNpos]
      ring

noncomputable def globalMixedThreePivotAllFiniteIntersection
    (N : Nat) (B pivots : Finset Nat) : Finset Nat := by
  classical
  exact eventIntersection (hallBasePart N B)
    (finiteSquarePrimeEvent 7) pivots

theorem globalMixedEvenThreePivotAllFiniteIntersection_ratio_le
    {N : Nat} {B pivots : Finset Nat}
    {valuation : FiveMillionValuationClass}
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3)
    (hcapacity : ∀ residue : Fin 9,
      (pivots.filter fun pivot => pivot % 9 = residue.val).card <= 2) :
    ((globalMixedThreePivotAllFiniteIntersection N B pivots).card : Rat) / N <=
        2 / 1225 + 18 / N := by
  classical
  have hsubset : globalMixedThreePivotAllFiniteIntersection N B pivots ⊆
      (hallBasePart N B).filter fun point =>
        3 <= globalMixedThreePivotFiniteEventCount pivots point := by
    intro point hpoint
    change point ∈ eventIntersection (hallBasePart N B)
      (finiteSquarePrimeEvent 7) pivots at hpoint
    have hparts := Finset.mem_filter.mp hpoint
    apply Finset.mem_filter.mpr
    refine ⟨hparts.1, ?_⟩
    have hfilter : pivots.filter (fun pivot =>
        finiteSquarePrimeEvent 7 pivot point) = pivots := by
      apply Finset.filter_eq_self.mpr
      intro pivot hpivot
      exact hparts.2 pivot hpivot
    simp [globalMixedThreePivotFiniteEventCount, hfilter, hcard]
  have hcardLe := Finset.card_le_card hsubset
  have hNnonneg : (0 : Rat) <= N := by positivity
  exact (div_le_div_of_nonneg_right (by exact_mod_cast hcardLe) hNnonneg).trans
    (globalMixedEvenThreePivotAllFiniteThreshold_ratio_le
      hBout hvaluation hpivots hcard hcapacity)

/-- The literal even-valuation finite payment is bounded uniformly for every
`N ≥ 5,000,000`; no `N` interval is enumerated. -/
theorem globalMixedEvenThreePivotFinitePayment_ratio_le
    {N : ℕ} {B pivots : Finset ℕ}
    {valuation : FiveMillionValuationClass}
    (hLower : 5_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (hvaluation : IsGlobalMixedEvenValuationClass valuation)
    (hpivots : pivots ⊆ fiveMillionValuationPart N B valuation)
    (hcard : pivots.card = 3) :
    globalMixedBaseFiniteThresholdPayment N pivots 7 2 / N ≤
      2 / 25 * globalMixedThreePivotFinite7Envelope + 116 / N := by
  classical
  let threshold := (lowBaseSet N).filter fun point =>
    2 ≤ globalMixedThreePivotFiniteEventCount pivots point
  let seven := threshold ∩ OriginalA7 N
  let eighteen := threshold ∩ OriginalA18 N
  let sevenResidues := globalMixedThreePivotNatResidues
    (globalMixedThreePivotModNineRoot 7 pivots hcard)
    (globalMixedThreePivotModFortyNineRoot 7 pivots hcard)
  let eighteenResidues := globalMixedThreePivotNatResidues
    (globalMixedThreePivotModNineRoot 18 pivots hcard)
    (globalMixedThreePivotModFortyNineRoot 18 pivots hcard)
  have hthresholdSubset : threshold ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hbase := (Finset.mem_filter.mp hpoint).1
    rcases Finset.mem_union.mp hbase with hseven | heighteen
    · exact Finset.mem_union_left _
        (Finset.mem_inter.mpr ⟨hpoint, hseven⟩)
    · exact Finset.mem_union_right _
        (Finset.mem_inter.mpr ⟨hpoint, heighteen⟩)
  have hthresholdCard : threshold.card ≤ seven.card + eighteen.card :=
    (Finset.card_le_card hthresholdSubset).trans
      (Finset.card_union_le seven eighteen)
  have hsevenResidues : sevenResidues.card ≤ 58 := by
    exact globalMixedThreePivotNatResidues_card_le_fiftyEight _ _
  have heightteenResidues : eighteenResidues.card ≤ 58 := by
    exact globalMixedThreePivotNatResidues_card_le_fiftyEight _ _
  have hsevenBound : (seven.card : ℚ) ≤
      (58 / 11025 : ℚ) * N + 58 := by
    apply globalMixedBaseProgression_card_le_fiftyEight
      (residues := sevenResidues) (baseResidue := 7)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      have hthreshold := (Finset.mem_filter.mp
        (Finset.mem_inter.mp hpoint).1).2
      exact globalMixedThreePivotThreshold_residue
        hBout hvaluation hpivots hcard
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        hthreshold
    · exact hsevenResidues
  have heightteenBound : (eighteen.card : ℚ) ≤
      (58 / 11025 : ℚ) * N + 58 := by
    apply globalMixedBaseProgression_card_le_fiftyEight
      (residues := eighteenResidues) (baseResidue := 18)
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).1
    · intro point hpoint
      exact (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
    · intro point hpoint
      have hthreshold := (Finset.mem_filter.mp
        (Finset.mem_inter.mp hpoint).1).2
      exact globalMixedThreePivotThreshold_residue
        hBout hvaluation hpivots hcard
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).1).1
        (Finset.mem_filter.mp (Finset.mem_inter.mp hpoint).2).2
        hthreshold
    · exact heightteenResidues
  have hthresholdQ : (threshold.card : ℚ) ≤
      (seven.card : ℚ) + (eighteen.card : ℚ) := by
    exact_mod_cast hthresholdCard
  have hcount : (threshold.card : ℚ) ≤
      2 * ((58 / 11025 : ℚ) * N + 58) := by
    linarith
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : ℚ) < N := by exact_mod_cast hNposNat
  unfold globalMixedBaseFiniteThresholdPayment
  change (threshold.card : ℚ) / N ≤ _
  calc
    (threshold.card : ℚ) / N ≤
        (2 * ((58 / 11025 : ℚ) * N + 58)) / N :=
      div_le_div_of_nonneg_right hcount hNpos.le
    _ = 2 / 25 * globalMixedThreePivotFinite7Envelope + 116 / N := by
      rw [globalMixedThreePivotFinite7Envelope]
      field_simp
      ring

#print axioms globalMixedThreePivotFiniteEventForms_card
#print axioms globalMixedBaseProgression_card_le_fiftyEight
#print axioms globalMixedEvenThreePivotFinitePayment_ratio_le

end Erdos848
