import Erdos848.TailPureFiveMillionHigh

namespace Erdos848

/-!
# The literal five-million degree certificate

This file is the final semantic bridge from the three disjoint prime ranges
to the actual squarefree bipartite graph.  It proves that every non-edge lies
in the small, medium, or high bad-point set, pays those sets by their
kernel-checked bounds, and obtains degree strictly greater than half on both
sides of each opposite-parity block.
-/

private lemma pureFiveMillion_prime_mem_small
    {p : ℕ} (hp : Nat.Prime p) (hpTwo : p ≠ 2) (hpFive : p ≠ 5)
    (hpUpper : p ≤ 47) :
    p ∈ pureFiveMillionSmallPrimeFinset := by
  have hpPositive := hp.pos
  interval_cases p <;>
    norm_num at hp <;>
    simp_all [pureFiveMillionSmallPrimeFinset, pureSmallPrimes47]

private lemma pureFiveMillion_nonSquarefree_mem_bad_union
    {points : Finset ℕ} {pivot point : ℕ}
    (hpoint : point ∈ points)
    (hTwo : ¬ 2 ∣ pivot * point + 1)
    (hFive : ¬ 5 ∣ pivot * point + 1)
    (hnot : ¬ Squarefree (pivot * point + 1)) :
    point ∈
      (pureFiveMillionSmallBadPoints points pivot ∪
        pureFiveMillionMediumBadPoints points pivot) ∪
        pureFiveMillionHighBadPoints points pivot := by
  classical
  rw [Nat.squarefree_iff_prime_squarefree] at hnot
  push Not at hnot
  obtain ⟨p, hpPrime, hpSquare⟩ := hnot
  have hpDiv : p ^ 2 ∣ pivot * point + 1 := by
    simpa [pow_two] using hpSquare
  have hpTwo : p ≠ 2 := by
    intro hp
    subst p
    exact hTwo (dvd_trans (by norm_num : 2 ∣ 4) hpDiv)
  have hpFive : p ≠ 5 := by
    intro hp
    subst p
    exact hFive (dvd_trans (by norm_num : 5 ∣ 25) hpDiv)
  by_cases hpSmall : p ≤ 47
  · apply Finset.mem_union.mpr
    apply Or.inl
    apply Finset.mem_union.mpr
    apply Or.inl
    exact Finset.mem_filter.mpr
      ⟨hpoint, p, pureFiveMillion_prime_mem_small hpPrime hpTwo hpFive hpSmall,
        hpDiv⟩
  · by_cases hpMedium : p ≤ 192_307
    · apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inr
      rw [pureFiveMillionMediumBadPoints_def]
      have hpMem : p ∈ pureFiveMillionMediumPrimes := by
        rw [pureFiveMillionMediumPrimes_def]
        exact mem_tailIntermediatePrimes.mpr
          ⟨hpPrime, by omega, hpMedium⟩
      exact Finset.mem_filter.mpr ⟨hpoint, p, hpMem, hpDiv⟩
    · apply Finset.mem_union.mpr
      apply Or.inr
      rw [pureFiveMillionHighBadPoints_def]
      exact Finset.mem_filter.mpr
        ⟨hpoint, p, hpPrime, by omega, hpDiv⟩

private lemma pureFiveMillionA18A7_edge_not_two_five
    (parity : Bool)
    (pivot : ↥(pureA18ParityBlock 5_000_000 parity))
    (point : ↥(pureA7OppositeParityBlock 5_000_000 parity)) :
    ¬ 2 ∣ pivot.1 * point.1 + 1 ∧
      ¬ 5 ∣ pivot.1 * point.1 + 1 := by
  have hpivotParts := Finset.mem_filter.mp pivot.2
  have hpointParts := Finset.mem_filter.mp point.2
  have hmodTwo : (pivot.1 * point.1 + 1) % 2 = 1 := by
    cases parity with
    | false =>
        have hpivot : pivot.1 % 2 = 0 := by simpa using hpivotParts.2
        have hpoint : point.1 % 2 = 1 := by simpa using hpointParts.2
        norm_num [Nat.mul_mod, Nat.add_mod, hpivot, hpoint]
    | true =>
        have hpivot : pivot.1 % 2 = 1 := by simpa using hpivotParts.2
        have hpoint : point.1 % 2 = 0 := by simpa using hpointParts.2
        norm_num [Nat.mul_mod, Nat.add_mod, hpivot, hpoint]
  have hpivotMod50 := pureA18ParityBlock_residue
    5_000_000 parity pivot.2
  have hpointMod50 := pureA7OppositeParityBlock_residue
    5_000_000 parity point.2
  have hpivotModFive : pivot.1 % 5 = 3 := by
    have hmod := hpivotMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hpointModFive : point.1 % 5 = 2 := by
    have hmod := hpointMod50.of_dvd (by norm_num : 5 ∣ 50)
    cases parity <;> simpa [Nat.ModEq] using hmod
  have hmodFive : (pivot.1 * point.1 + 1) % 5 = 2 := by
    norm_num [Nat.mul_mod, Nat.add_mod, hpivotModFive, hpointModFive]
  constructor
  · intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    omega
  · intro hdiv
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdiv
    omega

private lemma pureFiveMillion_badSubtype_card_le_cover
    {points cover : Finset ℕ} (pivot : ℕ)
    (hcover : ∀ point ∈ points,
      ¬ Squarefree (pivot * point + 1) → point ∈ cover) :
    (Finset.univ.filter fun point : ↥points =>
      ¬ Squarefree (pivot * point.1 + 1)).card ≤ cover.card := by
  classical
  let bad := Finset.univ.filter fun point : ↥points =>
    ¬ Squarefree (pivot * point.1 + 1)
  have himage : bad.image Subtype.val ⊆ cover := by
    intro point hpoint
    obtain ⟨typedPoint, htypedPoint, rfl⟩ := Finset.mem_image.mp hpoint
    have hparts := Finset.mem_filter.mp htypedPoint
    exact hcover typedPoint.1 typedPoint.2 hparts.2
  have hcardImage : (bad.image Subtype.val).card = bad.card :=
    Finset.card_image_of_injective bad Subtype.val_injective
  change bad.card ≤ cover.card
  rw [← hcardImage]
  exact Finset.card_le_card himage

private theorem pureFiveMillionA7_bad_card_le
    (parity : Bool)
    (pivot : ↥(pureA18ParityBlock 5_000_000 parity)) :
    (Finset.univ.filter fun point :
      ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
        ¬ Squarefree (pivot.1 * point.1 + 1)).card ≤ 38_538 := by
  classical
  let small := pureFiveMillionSmallBadPoints
    (pureA7OppositeParityBlock 5_000_000 parity) pivot.1
  let medium := pureFiveMillionMediumBadPoints
    (pureA7OppositeParityBlock 5_000_000 parity) pivot.1
  let high := pureFiveMillionHighBadPoints
    (pureA7OppositeParityBlock 5_000_000 parity) pivot.1
  let cover := (small ∪ medium) ∪ high
  have hbad :
      (Finset.univ.filter fun point :
        ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
          ¬ Squarefree (pivot.1 * point.1 + 1)).card ≤ cover.card := by
    apply pureFiveMillion_badSubtype_card_le_cover pivot.1
    intro point hpoint hnot
    have hnotTwoFive := pureFiveMillionA18A7_edge_not_two_five parity pivot
      ⟨point, hpoint⟩
    simpa only [cover, small, medium, high] using
      pureFiveMillion_nonSquarefree_mem_bad_union hpoint
        hnotTwoFive.1 hnotTwoFive.2 hnot
  have hsmall : small.card ≤ 15_846 := by
    simpa only [small] using pureFiveMillionA7SmallBad_card_le pivot.1 parity
  have hmedium : medium.card ≤ 19_088 := by
    simpa only [medium] using pureFiveMillionA7MediumBad_card_le pivot.1 parity
  have hhigh : high.card ≤ 3_604 := by
    simpa only [high] using pureFiveMillionA7HighBad_card_le parity pivot
  have hcover : cover.card ≤ 38_538 := by
    calc
      cover.card ≤ (small ∪ medium).card + high.card := by
        simpa only [cover] using Finset.card_union_le (small ∪ medium) high
      _ ≤ (small.card + medium.card) + high.card := by
        exact Nat.add_le_add_right (Finset.card_union_le small medium) high.card
      _ ≤ 38_538 := by omega
  exact hbad.trans hcover

private theorem pureFiveMillionA18_bad_card_le
    (parity : Bool)
    (pivot : ↥(pureA7OppositeParityBlock 5_000_000 parity)) :
    (Finset.univ.filter fun point :
      ↥(pureA18ParityBlock 5_000_000 parity) =>
        ¬ Squarefree (point.1 * pivot.1 + 1)).card ≤ 38_538 := by
  classical
  let small := pureFiveMillionSmallBadPoints
    (pureA18ParityBlock 5_000_000 parity) pivot.1
  let medium := pureFiveMillionMediumBadPoints
    (pureA18ParityBlock 5_000_000 parity) pivot.1
  let high := pureFiveMillionHighBadPoints
    (pureA18ParityBlock 5_000_000 parity) pivot.1
  let cover := (small ∪ medium) ∪ high
  have hbad :
      (Finset.univ.filter fun point :
        ↥(pureA18ParityBlock 5_000_000 parity) =>
          ¬ Squarefree (point.1 * pivot.1 + 1)).card ≤ cover.card := by
    have hraw :
        (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            ¬ Squarefree (pivot.1 * point.1 + 1)).card ≤ cover.card := by
      apply pureFiveMillion_badSubtype_card_le_cover pivot.1
      intro point hpoint hnot
      have hnotTwoFive := pureFiveMillionA18A7_edge_not_two_five parity
        ⟨point, hpoint⟩ pivot
      simpa only [cover, small, medium, high] using
        pureFiveMillion_nonSquarefree_mem_bad_union hpoint
          (by simpa [mul_comm] using hnotTwoFive.1)
          (by simpa [mul_comm] using hnotTwoFive.2) hnot
    simpa only [mul_comm] using hraw
  have hsmall : small.card ≤ 15_846 := by
    simpa only [small] using pureFiveMillionA18SmallBad_card_le pivot.1 parity
  have hmedium : medium.card ≤ 19_088 := by
    simpa only [medium] using pureFiveMillionA18MediumBad_card_le pivot.1 parity
  have hhigh : high.card ≤ 3_604 := by
    simpa only [high] using pureFiveMillionA18HighBad_card_le parity pivot
  have hcover : cover.card ≤ 38_538 := by
    calc
      cover.card ≤ (small ∪ medium).card + high.card := by
        simpa only [cover] using Finset.card_union_le (small ∪ medium) high
      _ ≤ (small.card + medium.card) + high.card := by
        exact Nat.add_le_add_right (Finset.card_union_le small medium) high.card
      _ ≤ 38_538 := by omega
  exact hbad.trans hcover

/-- The actual two-sided degree certificate at the five-million endpoint. -/
def pureFiveMillionParityDegreeCertificate (parity : Bool) :
    PureOppositeParityDegreeCertificate 5_000_000 parity where
  left := by
    intro pivot
    have hbad := pureFiveMillionA7_bad_card_le parity pivot
    have hpartition := Finset.card_filter_add_card_filter_not
      (s := (Finset.univ :
        Finset ↥(pureA7OppositeParityBlock 5_000_000 parity)))
      (p := fun point => Squarefree (pivot.1 * point.1 + 1))
    have htotal :
        (Finset.univ :
          Finset ↥(pureA7OppositeParityBlock 5_000_000 parity)).card =
            100_000 := by
      simpa using pureFiveMillionA7Block_card parity
    have hsame :
        (Finset.univ.filter fun point :
          ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
            pureOppositeSquarefreeEdge pivot point).card =
        (Finset.univ.filter fun point :
          ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
            Squarefree (pivot.1 * point.1 + 1)).card := by
      apply congrArg Finset.card
      ext point
      simp [pureOppositeSquarefreeEdge]
    rw [htotal] at hpartition
    have hgood : 50_000 <
        (Finset.univ.filter fun point :
          ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
            Squarefree (pivot.1 * point.1 + 1)).card := by
      omega
    calc
      (pureA7OppositeParityBlock 5_000_000 parity).card / 2 = 50_000 := by
        rw [pureFiveMillionA7Block_card]
      _ < (Finset.univ.filter fun point :
          ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
            Squarefree (pivot.1 * point.1 + 1)).card := hgood
      _ = (Finset.univ.filter fun point :
          ↥(pureA7OppositeParityBlock 5_000_000 parity) =>
            pureOppositeSquarefreeEdge pivot point).card := hsame.symm
  right := by
    intro pivot
    have hbad := pureFiveMillionA18_bad_card_le parity pivot
    have hpartition := Finset.card_filter_add_card_filter_not
      (s := (Finset.univ :
        Finset ↥(pureA18ParityBlock 5_000_000 parity)))
      (p := fun point => Squarefree (point.1 * pivot.1 + 1))
    have htotal :
        (Finset.univ :
          Finset ↥(pureA18ParityBlock 5_000_000 parity)).card =
            100_000 := by
      simpa using pureFiveMillionA18Block_card parity
    have hsame :
        (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            pureOppositeSquarefreeEdge point pivot).card =
        (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            Squarefree (point.1 * pivot.1 + 1)).card := by
      apply congrArg Finset.card
      ext point
      simp [pureOppositeSquarefreeEdge]
    rw [htotal] at hpartition
    have hgood : 50_000 <
        (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            Squarefree (point.1 * pivot.1 + 1)).card := by
      omega
    calc
      (pureA18ParityBlock 5_000_000 parity).card / 2 = 50_000 := by
        rw [pureFiveMillionA18Block_card]
      _ < (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            Squarefree (point.1 * pivot.1 + 1)).card := hgood
      _ = (Finset.univ.filter fun point :
          ↥(pureA18ParityBlock 5_000_000 parity) =>
            pureOppositeSquarefreeEdge point pivot).card := hsame.symm

/-- The literal pure-branch matching at five million. -/
theorem pureFiveMillionOppositeBaseMatching :
    PureOppositeBaseMatching 5_000_000 :=
  pureOppositeBaseMatching_of_degree
    (pureFiveMillionParityDegreeCertificate false)
    (pureFiveMillionParityDegreeCertificate true)

#print axioms pureFiveMillionParityDegreeCertificate
#print axioms pureFiveMillionOppositeBaseMatching

end Erdos848
