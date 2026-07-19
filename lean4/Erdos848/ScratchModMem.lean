import Erdos848.TailFiniteSieve
import Erdos848.TailCRTCounting

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

#check Finset.card_eq_sum_card_fiberwise
#check Finset.mem_pi
#check Finset.card_biUnion
#check List.pairwise_iff_get
#check Finset.prod_attach

section

variable {ι : Type*} [DecidableEq ι]

theorem scratch_card_pi
    (s : Finset ι) (roots : ι → Finset Nat) :
    (s.pi roots).card = ∏ i ∈ s, (roots i).card := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
      rw [Finset.pi_insert ha, Finset.card_biUnion]
      · have himage : ∀ u,
            (Finset.image (Finset.Pi.cons s a u) (s.pi roots)).card =
              (s.pi roots).card := by
          intro u
          exact Finset.card_image_of_injective _
            (Finset.Pi.cons_injective ha)
        simp_rw [himage, ih]
        simp [Finset.prod_insert, ha]
      · intro x hx y hy hxy
        apply Finset.disjoint_left.mpr
        intro f hfx hfy
        simp only [Finset.mem_image] at hfx hfy
        rcases hfx with ⟨fx, _hfx, rfl⟩
        rcases hfy with ⟨fy, _hfy, hEq⟩
        have hsame := congr_fun (congr_fun hEq a) (Finset.mem_insert_self a s)
        simp only [Finset.Pi.cons_same] at hsame
        exact hxy hsame.symm

theorem scratch_pairwise_toList_of_allPairs
    (s : Finset ι) (relation : ι → ι → Prop)
    (hall : ∀ i ∈ s, ∀ j ∈ s, i ≠ j → relation i j) :
    s.toList.Pairwise relation := by
  rw [List.pairwise_iff_get]
  intro i j hij
  apply hall
  · exact Finset.mem_toList.mp (s.toList.get_mem i)
  · exact Finset.mem_toList.mp (s.toList.get_mem j)
  · intro heq
    have hindices := (Finset.nodup_toList s).get_inj_iff.mp heq
    omega

def scratchModMemPoints
    (length : Nat) (s : Finset ι) (modulus : ι → Nat)
    (roots : ι → Finset Nat) : Finset Nat :=
  (Finset.range length).filter fun q =>
    ∀ i ∈ s, q % modulus i ∈ roots i

def scratchResidueVector
    (s : Finset ι) (modulus : ι → Nat) (q : Nat) :
    ∀ i ∈ s, Nat :=
  fun i _hi => q % modulus i

theorem scratch_modMem_card_bounds
    (length : Nat) (s : Finset ι) (modulus : ι → Nat)
    (roots : ι → Finset Nat)
    (hpositive : ∀ i ∈ s, 0 < modulus i)
    (hcoprime : ∀ i ∈ s, ∀ j ∈ s, i ≠ j →
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ s, ∀ r ∈ roots i, r < modulus i) :
    let totalModulus := (s.toList.map modulus).prod
    let rootProduct := ∏ i ∈ s, (roots i).card
    rootProduct * (length / totalModulus) ≤
        (scratchModMemPoints length s modulus roots).card ∧
      (scratchModMemPoints length s modulus roots).card ≤
        rootProduct * (length / totalModulus + 1) := by
  classical
  dsimp only
  let points := scratchModMemPoints length s modulus roots
  let choices := s.pi roots
  let vector := scratchResidueVector s modulus
  have hmap : Set.MapsTo vector (points : Set Nat) choices := by
    intro q hq
    apply Finset.mem_pi.mpr
    intro i hi
    exact (Finset.mem_filter.mp hq).2 i hi
  have hpartition := Finset.card_eq_sum_card_fiberwise hmap
  have hcoprimeList : s.toList.Pairwise
      (Function.onFun Nat.Coprime modulus) :=
    scratch_pairwise_toList_of_allPairs s _ hcoprime
  have hfibre : ∀ choice ∈ choices,
      length / (s.toList.map modulus).prod ≤
          (points.filter fun q => vector q = choice).card ∧
        (points.filter fun q => vector q = choice).card ≤
          length / (s.toList.map modulus).prod + 1 := by
    intro choice hchoice
    let residue : ι → Nat := fun i =>
      if hi : i ∈ s then choice i hi else 0
    have hresidueBound : ∀ i ∈ s, residue i < modulus i := by
      intro i hi
      dsimp [residue]
      rw [dif_pos hi]
      exact hrootBound i hi _ (Finset.mem_pi.mp hchoice i hi)
    have hset :
        points.filter (fun q => vector q = choice) =
          (Finset.range length).filter fun q =>
            ∀ i ∈ s.toList, q ≡ residue i [MOD modulus i] := by
      ext q
      simp only [Finset.mem_filter, Finset.mem_range, points,
        scratchModMemPoints, vector, scratchResidueVector,
        List.mem_toFinset]
      constructor
      · rintro ⟨⟨hqLength, hqRoots⟩, hqVector⟩
        refine ⟨hqLength, ?_⟩
        intro i hi
        have his : i ∈ s := by simpa using hi
        have hcoord := congr_fun (congr_fun hqVector i) his
        change q % modulus i = residue i % modulus i
        dsimp [residue]
        rw [dif_pos his, Nat.mod_eq_of_lt
          (hrootBound i his _ (Finset.mem_pi.mp hchoice i his))]
        exact hcoord
      · rintro ⟨hqLength, hqMod⟩
        have hvector : vector q = choice := by
          funext i hi
          have hmod := hqMod i (by simpa using hi)
          change q % modulus i = residue i % modulus i at hmod
          dsimp [residue] at hmod
          rw [dif_pos hi, Nat.mod_eq_of_lt
            (hrootBound i hi _ (Finset.mem_pi.mp hchoice i hi))] at hmod
          exact hmod
        refine ⟨⟨hqLength, ?_⟩, hvector⟩
        intro i hi
        rw [show q % modulus i = choice i hi by
          exact congr_fun (congr_fun hvector i) hi]
        exact Finset.mem_pi.mp hchoice i hi
    have hpositiveList : ∀ i ∈ s.toList, 0 < modulus i := by
      intro i hi
      exact hpositive i (by simpa using hi)
    have hexact := card_filter_modEq_list_exact
      length residue modulus s.toList hcoprimeList hpositiveList
    rw [hset, hexact]
    dsimp only
    split <;> omega
  have hchoiceCard : choices.card = ∏ i ∈ s, (roots i).card := by
    simpa [choices] using scratch_card_pi s roots
  constructor
  · rw [hpartition]
    calc
      (∏ i ∈ s, (roots i).card) *
          (length / (s.toList.map modulus).prod) =
          ∑ _choice ∈ choices,
            length / (s.toList.map modulus).prod := by
        simp [hchoiceCard]
      _ ≤ ∑ choice ∈ choices,
          (points.filter fun q => vector q = choice).card := by
        exact Finset.sum_le_sum fun choice hchoice => (hfibre choice hchoice).1
  · rw [hpartition]
    calc
      ∑ choice ∈ choices,
          (points.filter fun q => vector q = choice).card ≤
          ∑ _choice ∈ choices,
            (length / (s.toList.map modulus).prod + 1) := by
        exact Finset.sum_le_sum fun choice hchoice => (hfibre choice hchoice).2
      _ = (∏ i ∈ s, (roots i).card) *
          (length / (s.toList.map modulus).prod + 1) := by
        simp [hchoiceCard]

theorem scratch_modMem_card_rat_bounds
    (length : Nat) (s : Finset ι) (modulus : ι → Nat)
    (roots : ι → Finset Nat)
    (hpositive : ∀ i ∈ s, 0 < modulus i)
    (hcoprime : ∀ i ∈ s, ∀ j ∈ s, i ≠ j →
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ s, ∀ r ∈ roots i, r < modulus i) :
    let totalModulus := (s.toList.map modulus).prod
    let rootProduct := ∏ i ∈ s, (roots i).card
    (rootProduct : Rat) / totalModulus * length - rootProduct ≤
        ((scratchModMemPoints length s modulus roots).card : Rat) ∧
      ((scratchModMemPoints length s modulus roots).card : Rat) ≤
        (rootProduct : Rat) / totalModulus * length + rootProduct := by
  classical
  dsimp only
  have hbounds := scratch_modMem_card_bounds
    length s modulus roots hpositive hcoprime hrootBound
  have htotalPos : 0 < (s.toList.map modulus).prod := by
    apply List.prod_pos
    intro m hm
    obtain ⟨i, hi, rfl⟩ := List.mem_map.mp hm
    exact hpositive i (by simpa using hi)
  have hfloorUpper :
      (((length / (s.toList.map modulus).prod : Nat) : Rat)) ≤
        (length : Rat) / (s.toList.map modulus).prod :=
    Nat.cast_div_le
  have hfloorLower :
      (length : Rat) / (s.toList.map modulus).prod - 1 ≤
        ((length / (s.toList.map modulus).prod : Nat) : Rat) := by
    have h := Nat.sub_one_lt_floor
      ((length : Rat) / (s.toList.map modulus).prod)
    rw [Nat.floor_div_eq_div] at h
    exact h.le
  have hrootNonneg : (0 : Rat) ≤
      ((∏ i ∈ s, (roots i).card : Nat) : Rat) := by positivity
  constructor
  · have hnat :
        (∏ i ∈ s, (roots i).card) *
            (length / (s.toList.map modulus).prod) ≤
          (scratchModMemPoints length s modulus roots).card := hbounds.1
    have hcast :
        (((∏ i ∈ s, (roots i).card) *
            (length / (s.toList.map modulus).prod) : Nat) : Rat) ≤
          ((scratchModMemPoints length s modulus roots).card : Rat) := by
      exact_mod_cast hnat
    calc
      ((∏ i ∈ s, (roots i).card : Nat) : Rat) /
            (s.toList.map modulus).prod * length -
          (∏ i ∈ s, (roots i).card : Nat) =
          ((∏ i ∈ s, (roots i).card : Nat) : Rat) *
            ((length : Rat) / (s.toList.map modulus).prod - 1) := by ring
      _ ≤ ((∏ i ∈ s, (roots i).card : Nat) : Rat) *
          ((length / (s.toList.map modulus).prod : Nat) : Rat) := by
        gcongr
      _ = (((∏ i ∈ s, (roots i).card) *
          (length / (s.toList.map modulus).prod) : Nat) : Rat) := by
        norm_num
      _ ≤ ((scratchModMemPoints length s modulus roots).card : Rat) := hcast
  · have hnat :
        (scratchModMemPoints length s modulus roots).card ≤
          (∏ i ∈ s, (roots i).card) *
            (length / (s.toList.map modulus).prod + 1) := hbounds.2
    have hcast :
        ((scratchModMemPoints length s modulus roots).card : Rat) ≤
          (((∏ i ∈ s, (roots i).card) *
            (length / (s.toList.map modulus).prod + 1) : Nat) : Rat) := by
      exact_mod_cast hnat
    calc
      ((scratchModMemPoints length s modulus roots).card : Rat) ≤
          (((∏ i ∈ s, (roots i).card) *
            (length / (s.toList.map modulus).prod + 1) : Nat) : Rat) := hcast
      _ = ((∏ i ∈ s, (roots i).card : Nat) : Rat) *
          (((length / (s.toList.map modulus).prod : Nat) : Rat) + 1) := by
        norm_num
      _ ≤ ((∏ i ∈ s, (roots i).card : Nat) : Rat) *
          ((length : Rat) / (s.toList.map modulus).prod + 1) := by
        gcongr
      _ = ((∏ i ∈ s, (roots i).card : Nat) : Rat) /
            (s.toList.map modulus).prod * length +
          (∏ i ∈ s, (roots i).card : Nat) := by ring

section BonferroniExpand

variable {α κ : Type*} [DecidableEq α] [DecidableEq κ]

example (points : Finset α) (indices : Finset κ) (event : κ → α → Prop)
    [DecidableRel event] :
    ((bonferroniIntersectionSum points indices event 3 : Int) : Rat) =
      (points.card : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection points event subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 2,
          ((eventIntersection points event subset).card : Rat)) -
        (∑ subset ∈ indices.powersetCard 3,
          ((eventIntersection points event subset).card : Rat)) := by
  norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
    eventIntersection]
  ring

example (points : Finset α) (indices : Finset κ) (event : κ → α → Prop)
    [DecidableRel event] :
    ((bonferroniIntersectionSum points indices event 4 : Int) : Rat) =
      (points.card : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection points event subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 2,
          ((eventIntersection points event subset).card : Rat)) -
        (∑ subset ∈ indices.powersetCard 3,
          ((eventIntersection points event subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 4,
          ((eventIntersection points event subset).card : Rat)) := by
  norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
    eventIntersection]
  ring

end BonferroniExpand

section ModMemBonferroni

variable {κ : Type*} [DecidableEq κ]

noncomputable def scratchRootDensity
    (modulus : κ → Nat) (roots : κ → Finset Nat)
    (subset : Finset κ) : Rat :=
  ((∏ i ∈ subset, (roots i).card : Nat) : Rat) /
    (subset.toList.map modulus).prod

def scratchRootEndpoint
    (roots : κ → Finset Nat) (subset : Finset κ) : Rat :=
  ((∏ i ∈ subset, (roots i).card : Nat) : Rat)

noncomputable def scratchRankDensity
    (indices : Finset κ) (modulus : κ → Nat)
    (roots : κ → Finset Nat) (rank : Nat) : Rat :=
  ∑ subset ∈ indices.powersetCard rank,
    scratchRootDensity modulus roots subset

def scratchRankEndpoint
    (indices : Finset κ) (roots : κ → Finset Nat)
    (rank : Nat) : Rat :=
  ∑ subset ∈ indices.powersetCard rank,
    scratchRootEndpoint roots subset

theorem scratch_intersection_rank_bounds
    (length : Nat) (indices : Finset κ) (modulus : κ → Nat)
    (roots : κ → Finset Nat) (rank : Nat)
    (hpositive : ∀ i ∈ indices, 0 < modulus i)
    (hcoprime : ∀ i ∈ indices, ∀ j ∈ indices, i ≠ j →
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ indices, ∀ r ∈ roots i, r < modulus i) :
    (length : Rat) * scratchRankDensity indices modulus roots rank -
        scratchRankEndpoint indices roots rank ≤
      ∑ subset ∈ indices.powersetCard rank,
        ((eventIntersection (Finset.range length)
          (fun i q => q % modulus i ∈ roots i) subset).card : Rat) ∧
    (∑ subset ∈ indices.powersetCard rank,
        ((eventIntersection (Finset.range length)
          (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) ≤
      (length : Rat) * scratchRankDensity indices modulus roots rank +
        scratchRankEndpoint indices roots rank := by
  classical
  have hper : ∀ subset ∈ indices.powersetCard rank,
      scratchRootDensity modulus roots subset * length -
          scratchRootEndpoint roots subset ≤
        ((eventIntersection (Finset.range length)
          (fun i q => q % modulus i ∈ roots i) subset).card : Rat) ∧
      ((eventIntersection (Finset.range length)
          (fun i q => q % modulus i ∈ roots i) subset).card : Rat) ≤
        scratchRootDensity modulus roots subset * length +
          scratchRootEndpoint roots subset := by
    intro subset hsubset
    have hsub : subset ⊆ indices := (Finset.mem_powersetCard.mp hsubset).1
    have hpositiveSub : ∀ i ∈ subset, 0 < modulus i := by
      intro i hi
      exact hpositive i (hsub hi)
    have hrootBoundSub : ∀ i ∈ subset, ∀ r ∈ roots i,
        r < modulus i := by
      intro i hi r hr
      exact hrootBound i (hsub hi) r hr
    have hcoprimeSub : ∀ i ∈ subset, ∀ j ∈ subset, i ≠ j →
        Nat.Coprime (modulus i) (modulus j) := by
      intro i hi j hj hij
      exact hcoprime i (hsub hi) j (hsub hj) hij
    have hraw := scratch_modMem_card_rat_bounds
      length subset modulus roots hpositiveSub hcoprimeSub hrootBoundSub
    have hset : eventIntersection (Finset.range length)
        (fun i q => q % modulus i ∈ roots i) subset =
          scratchModMemPoints length subset modulus roots := by
      ext q
      simp [eventIntersection, scratchModMemPoints]
    rw [hset]
    simpa [scratchRootDensity, scratchRootEndpoint, mul_comm] using hraw
  constructor
  · have hsum := Finset.sum_le_sum fun subset hsubset =>
      (hper subset hsubset).1
    dsimp [scratchRankDensity, scratchRankEndpoint]
    simpa [Finset.sum_sub_distrib, Finset.sum_mul, mul_comm] using hsum
  · have hsum := Finset.sum_le_sum fun subset hsubset =>
      (hper subset hsubset).2
    dsimp [scratchRankDensity, scratchRankEndpoint]
    simpa [Finset.sum_add_distrib, Finset.sum_mul, mul_comm] using hsum

theorem scratch_noEvent_lower_three
    (length : Nat) (indices : Finset κ) (modulus : κ → Nat)
    (roots : κ → Finset Nat)
    (hpositive : ∀ i ∈ indices, 0 < modulus i)
    (hcoprime : ∀ i ∈ indices, ∀ j ∈ indices, i ≠ j →
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ indices, ∀ r ∈ roots i, r < modulus i) :
    (length : Rat) *
          (1 - scratchRankDensity indices modulus roots 1 +
            scratchRankDensity indices modulus roots 2 -
            scratchRankDensity indices modulus roots 3) -
        (scratchRankEndpoint indices roots 1 +
          scratchRankEndpoint indices roots 2 +
          scratchRankEndpoint indices roots 3) ≤
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
  classical
  have hbonfInt := bonferroni_three_le_noEvent_card
    (Finset.range length) indices
      (fun i q => q % modulus i ∈ roots i)
  have hbonf :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 3 : Int) : Rat) ≤
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := scratch_intersection_rank_bounds
    length indices modulus roots 1 hpositive hcoprime hrootBound
  have h2 := scratch_intersection_rank_bounds
    length indices modulus roots 2 hpositive hcoprime hrootBound
  have h3 := scratch_intersection_rank_bounds
    length indices modulus roots 3 hpositive hcoprime hrootBound
  have hexpand :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 3 : Int) : Rat) =
      (length : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 2,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) -
        (∑ subset ∈ indices.powersetCard 3,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  linarith

theorem scratch_noEvent_upper_four
    (length : Nat) (indices : Finset κ) (modulus : κ → Nat)
    (roots : κ → Finset Nat)
    (hpositive : ∀ i ∈ indices, 0 < modulus i)
    (hcoprime : ∀ i ∈ indices, ∀ j ∈ indices, i ≠ j →
      Nat.Coprime (modulus i) (modulus j))
    (hrootBound : ∀ i ∈ indices, ∀ r ∈ roots i, r < modulus i) :
    ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) ≤
      (length : Rat) *
          (1 - scratchRankDensity indices modulus roots 1 +
            scratchRankDensity indices modulus roots 2 -
            scratchRankDensity indices modulus roots 3 +
            scratchRankDensity indices modulus roots 4) +
        (scratchRankEndpoint indices roots 1 +
          scratchRankEndpoint indices roots 2 +
          scratchRankEndpoint indices roots 3 +
          scratchRankEndpoint indices roots 4) := by
  classical
  have hbonfInt := noEvent_card_le_bonferroni_four
    (Finset.range length) indices
      (fun i q => q % modulus i ∈ roots i)
  have hbonf :
      ((noEventPoints (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i)).card : Rat) ≤
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 4 : Int) : Rat) := by
    exact_mod_cast hbonfInt
  have h1 := scratch_intersection_rank_bounds
    length indices modulus roots 1 hpositive hcoprime hrootBound
  have h2 := scratch_intersection_rank_bounds
    length indices modulus roots 2 hpositive hcoprime hrootBound
  have h3 := scratch_intersection_rank_bounds
    length indices modulus roots 3 hpositive hcoprime hrootBound
  have h4 := scratch_intersection_rank_bounds
    length indices modulus roots 4 hpositive hcoprime hrootBound
  have hexpand :
      ((bonferroniIntersectionSum (Finset.range length) indices
        (fun i q => q % modulus i ∈ roots i) 4 : Int) : Rat) =
      (length : Rat) -
        (∑ subset ∈ indices.powersetCard 1,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 2,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) -
        (∑ subset ∈ indices.powersetCard 3,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) +
        (∑ subset ∈ indices.powersetCard 4,
          ((eventIntersection (Finset.range length)
            (fun i q => q % modulus i ∈ roots i) subset).card : Rat)) := by
    norm_num [bonferroniIntersectionSum, Finset.sum_range_succ,
      eventIntersection]
    ring
  rw [hexpand] at hbonf
  linarith

end ModMemBonferroni

end


end Erdos848
