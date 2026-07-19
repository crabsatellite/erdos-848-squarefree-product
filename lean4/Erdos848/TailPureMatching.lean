import Erdos848.TailCombinatorics
import Erdos848.TailMixedHall

namespace Erdos848

/-!
# Pure opposite-base matching

The archived paper proves the pure `18 mod 25` branch by a degree/codegree
argument.  The actual one-form degree bounds are stronger than that argument
needs: in each opposite-parity block both directional degrees exceed half of
the relevant block.  This file records the shorter Hall mechanism and the
literal conversion from a matching to the Problem 848 Hall inequality.

No interval-specific numerical estimate is assumed or asserted here.
-/

/-- A finite bipartite graph has a left-saturating matching if both
directional minimum degrees are strictly greater than half of the opposite
side and the left side is no larger than the right side. -/
theorem dense_bipartite_matching
    {L R : Type*} [Fintype L] [Fintype R]
    [DecidableEq L] [DecidableEq R]
    (edge : L → R → Prop) [DecidableRel edge]
    (hcard : Fintype.card L ≤ Fintype.card R)
    (hleft : ∀ l,
      Fintype.card R / 2 <
        (Finset.univ.filter fun r => edge l r).card)
    (hright : ∀ r,
      Fintype.card L / 2 <
        (Finset.univ.filter fun l => edge l r).card) :
    ∃ f : L → R, Function.Injective f ∧ ∀ l, edge l (f l) := by
  classical
  apply (Fintype.all_card_le_filter_rel_iff_exists_injective edge).mp
  intro Y
  let neighbours : Finset R :=
    Finset.univ.filter fun r => ∃ l ∈ Y, edge l r
  by_cases hY : Y = ∅
  · simp [hY]
  obtain ⟨chosen, hchosen⟩ := Finset.nonempty_iff_ne_empty.mpr hY
  have hchosenSubset :
      (Finset.univ.filter fun r => edge chosen r) ⊆ neighbours := by
    intro r hr
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_univ r, chosen, hchosen, (Finset.mem_filter.mp hr).2⟩
  have hneighbourLower : Fintype.card R / 2 < neighbours.card :=
    (hleft chosen).trans_le (Finset.card_le_card hchosenSubset)
  by_cases hsmall : Y.card ≤ Fintype.card R / 2
  · change Y.card ≤ neighbours.card
    omega
  have hlargeLeft : Fintype.card L / 2 < Y.card := by
    have hYlarge : Fintype.card R / 2 < Y.card := Nat.lt_of_not_ge hsmall
    omega
  have hall : neighbours = Finset.univ := by
    ext r
    simp only [Finset.mem_univ, iff_true]
    by_contra hr
    have hreverseSubset :
        (Finset.univ.filter fun l => edge l r) ⊆
          Finset.univ \ Y := by
      intro l hl
      apply Finset.mem_sdiff.mpr
      refine ⟨Finset.mem_univ l, ?_⟩
      intro hlY
      apply hr
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_univ r, l, hlY, (Finset.mem_filter.mp hl).2⟩
    have hreverseCard := Finset.card_le_card hreverseSubset
    have hcomplementCard :
        (Finset.univ \ Y).card = Fintype.card L - Y.card := by
      simp [Finset.card_sdiff]
    rw [hcomplementCard] at hreverseCard
    have hcomplementSmall :
        Fintype.card L - Y.card ≤ Fintype.card L / 2 := by
      omega
    have hrDegree := hright r
    omega
  change Y.card ≤ neighbours.card
  rw [hall]
  simpa using (Finset.card_le_univ Y).trans hcard

/-- A literal squarefree-edge matching from the second sharp construction
into the first. -/
def PureOppositeBaseMatching (N : ℕ) : Prop :=
  ∃ f : (↥(OriginalA18 N)) → (↥(OriginalA7 N)),
    Function.Injective f ∧
      ∀ x, Squarefree (x.1 * (f x).1 + 1)

/-- Restricting a pure opposite-base matching to any compatible
`B ⊆ OriginalA18 N` proves the exact Hall inequality. -/
theorem hall_bound_of_pure_opposite_matching
    {N : ℕ} (matching : PureOppositeBaseMatching N)
    {B : Finset ℕ} (hBsub : B ⊆ OriginalA18 N) :
    B.card + (hallNonNeighbours N B).card ≤
      (OriginalA7 N).card := by
  classical
  obtain ⟨f, hfInjective, hfEdge⟩ := matching
  let restricted : B → ↥(OriginalA7 N) := fun b =>
    f ⟨b.1, hBsub b.2⟩
  have hrestrictedInjective : Function.Injective restricted := by
    intro x y hxy
    apply Subtype.ext
    have hsource : (⟨x.1, hBsub x.2⟩ : OriginalA18 N) =
        ⟨y.1, hBsub y.2⟩ := hfInjective hxy
    exact congrArg (fun z : ↥(OriginalA18 N) => (z : ℕ)) hsource
  let image : Finset ℕ :=
    Finset.univ.image fun b : B => (restricted b).1
  have hrestrictedValInjective :
      Function.Injective (fun b : B => (restricted b).1) := by
    intro x y hxy
    apply hrestrictedInjective
    exact Subtype.ext hxy
  have himageCard : image.card = B.card := by
    rw [Finset.card_image_of_injective _ hrestrictedValInjective]
    simp
  have himageSubset : image ⊆ OriginalA7 N := by
    intro a ha
    obtain ⟨b, _hb, rfl⟩ := Finset.mem_image.mp ha
    exact (restricted b).2
  have hdisjoint : Disjoint image (hallNonNeighbours N B) := by
    rw [Finset.disjoint_left]
    intro a haImage haNon
    obtain ⟨b, _hb, hba⟩ := Finset.mem_image.mp haImage
    have hnotSquarefree :=
      (mem_hallNonNeighbours_iff.mp haNon).2 b.1 b.2
    have hedge := hfEdge (⟨b.1, hBsub b.2⟩ : OriginalA18 N)
    apply hnotSquarefree
    subst a
    simpa [restricted, mul_comm] using hedge
  have hunionSubset : image ∪ hallNonNeighbours N B ⊆ OriginalA7 N := by
    intro a ha
    rcases Finset.mem_union.mp ha with haImage | haNon
    · exact himageSubset haImage
    · exact hallNonNeighbours_subset_originalA7 N B haNon
  have hunionCard := Finset.card_le_card hunionSubset
  rw [Finset.card_union_of_disjoint hdisjoint, himageCard] at hunionCard
  exact hunionCard

/-- A pure matching rules out the pure branch of any strict Hall defect. -/
theorem hallMixedResidual_nonempty_of_defect
    {N : ℕ} (matching : PureOppositeBaseMatching N)
    {B : Finset ℕ}
    (hdefect : (OriginalA7 N).card <
      B.card + (hallNonNeighbours N B).card) :
    (hallMixedResidual N B).Nonempty := by
  by_contra hnone
  have hempty : hallMixedResidual N B = ∅ :=
    Finset.not_nonempty_iff_eq_empty.mp hnone
  have hBsub : B ⊆ OriginalA18 N := by
    intro b hb
    by_contra hb18
    have : b ∈ hallMixedResidual N B :=
      Finset.mem_sdiff.mpr ⟨hb, hb18⟩
    simpa [hempty] using this
  have hHall := hall_bound_of_pure_opposite_matching matching hBsub
  omega

/-! ## The two literal opposite-parity blocks -/

/-- `parity = false` is the even part of `OriginalA18`; `true` is its odd
part. -/
def pureA18ParityBlock (N : ℕ) (parity : Bool) : Finset ℕ :=
  (OriginalA18 N).filter fun x =>
    x % 2 = if parity then 1 else 0

/-- The target block has the opposite parity, so the square prime `2` is
inactive on every edge. -/
def pureA7OppositeParityBlock (N : ℕ) (parity : Bool) : Finset ℕ :=
  (OriginalA7 N).filter fun x =>
    x % 2 = if parity then 0 else 1

lemma pureA18ParityBlock_subset (N : ℕ) (parity : Bool) :
    pureA18ParityBlock N parity ⊆ OriginalA18 N :=
  Finset.filter_subset _ _

lemma pureA7OppositeParityBlock_subset (N : ℕ) (parity : Bool) :
    pureA7OppositeParityBlock N parity ⊆ OriginalA7 N :=
  Finset.filter_subset _ _

/-- Subtracting eleven maps `18 mod 25` into `7 mod 25` and reverses parity.
It gives the exact size comparison needed by the dense Hall lemma without a
floor or endpoint estimate. -/
theorem pureA18ParityBlock_card_le_pureA7OppositeParityBlock
    (N : ℕ) (parity : Bool) :
    (pureA18ParityBlock N parity).card ≤
      (pureA7OppositeParityBlock N parity).card := by
  let shift : ℕ → ℕ := fun x => x - 11
  have hmap : Set.MapsTo shift
      (pureA18ParityBlock N parity : Set ℕ)
      (pureA7OppositeParityBlock N parity : Set ℕ) := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    have hx18 := Finset.mem_filter.mp hxParts.1
    have hxBounds := Finset.mem_Icc.mp hx18.1
    have hxDecomp25 := Nat.mod_add_div x 25
    have hxDecomp2 := Nat.mod_add_div x 2
    have hxLower : 18 ≤ x := by omega
    have hx25 : x = 25 * (x / 25) + 18 := by omega
    have hshift25 : x - 11 = 25 * (x / 25) + 7 := by omega
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨?_, ?_⟩, ?_⟩, ?_⟩
    · dsimp [shift]
      omega
    · dsimp [shift]
      omega
    · dsimp [shift]
      rw [hshift25]
      norm_num [Nat.add_mod, Nat.mul_mod]
    · dsimp [shift]
      cases parity
      · simp only [Bool.false_eq_true, ↓reduceIte] at hxParts ⊢
        have hx2 : x = 2 * (x / 2) := by omega
        have hshift2 : x - 11 = 2 * (x / 2 - 6) + 1 := by omega
        rw [hshift2]
        norm_num [Nat.add_mod, Nat.mul_mod]
      · simp only [↓reduceIte] at hxParts ⊢
        have hx2 : x = 2 * (x / 2) + 1 := by omega
        have hshift2 : x - 11 = 2 * (x / 2 - 5) := by omega
        rw [hshift2]
        norm_num [Nat.mul_mod]
  have hinjective : Set.InjOn shift
      (pureA18ParityBlock N parity : Set ℕ) := by
    intro x hx y hy hxy
    have hx18 := Finset.mem_filter.mp (Finset.mem_filter.mp hx).1
    have hy18 := Finset.mem_filter.mp (Finset.mem_filter.mp hy).1
    have hxBounds := Finset.mem_Icc.mp hx18.1
    have hyBounds := Finset.mem_Icc.mp hy18.1
    dsimp [shift] at hxy
    omega
  exact Finset.card_le_card_of_injOn shift hmap hinjective

def pureOppositeSquarefreeEdge
    {N : ℕ} {parity : Bool} :
    ↥(pureA18ParityBlock N parity) →
      ↥(pureA7OppositeParityBlock N parity) → Prop :=
  fun left right => Squarefree (left.1 * right.1 + 1)

noncomputable instance pureOppositeSquarefreeEdge_decidable
    {N : ℕ} {parity : Bool} :
    DecidableRel (pureOppositeSquarefreeEdge (N := N) (parity := parity)) :=
  fun _ _ => Classical.propDecidable _

/-- The two actual directional degree statements consumed by the pure
matching close.  Numerical producers prove this structure; the Hall
allocation and the sharp-set conversion are unconditional below. -/
structure PureOppositeParityDegreeCertificate
    (N : ℕ) (parity : Bool) : Prop where
  left : ∀ x : ↥(pureA18ParityBlock N parity),
    (pureA7OppositeParityBlock N parity).card / 2 <
      (Finset.univ.filter fun y :
        ↥(pureA7OppositeParityBlock N parity) =>
          pureOppositeSquarefreeEdge x y).card
  right : ∀ y : ↥(pureA7OppositeParityBlock N parity),
    (pureA18ParityBlock N parity).card / 2 <
      (Finset.univ.filter fun x :
        ↥(pureA18ParityBlock N parity) =>
          pureOppositeSquarefreeEdge x y).card

theorem pureOppositeParity_matching_of_degree
    {N : ℕ} {parity : Bool}
    (certificate : PureOppositeParityDegreeCertificate N parity) :
    ∃ f : ↥(pureA18ParityBlock N parity) →
        ↥(pureA7OppositeParityBlock N parity),
      Function.Injective f ∧
        ∀ x, pureOppositeSquarefreeEdge x (f x) := by
  apply dense_bipartite_matching pureOppositeSquarefreeEdge
  · simpa using
      pureA18ParityBlock_card_le_pureA7OppositeParityBlock N parity
  · simpa using certificate.left
  · simpa using certificate.right

/-- Two opposite-parity block matchings combine into the literal matching of
the complete `18 mod 25` class. -/
noncomputable def pureOppositeBaseMatching_of_parity_matchings
    {N : ℕ}
    (evenMatching :
      ∃ f : ↥(pureA18ParityBlock N false) →
          ↥(pureA7OppositeParityBlock N false),
        Function.Injective f ∧
          ∀ x, pureOppositeSquarefreeEdge x (f x))
    (oddMatching :
      ∃ f : ↥(pureA18ParityBlock N true) →
          ↥(pureA7OppositeParityBlock N true),
        Function.Injective f ∧
          ∀ x, pureOppositeSquarefreeEdge x (f x)) :
    PureOppositeBaseMatching N := by
  classical
  obtain ⟨evenMap, evenInjective, evenEdge⟩ := evenMatching
  obtain ⟨oddMap, oddInjective, oddEdge⟩ := oddMatching
  let combined : ↥(OriginalA18 N) → ↥(OriginalA7 N) := fun x =>
    if hx : x.1 % 2 = 0 then
      let source : ↥(pureA18ParityBlock N false) :=
        ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by simpa using hx⟩⟩
      ⟨(evenMap source).1,
        pureA7OppositeParityBlock_subset N false (evenMap source).2⟩
    else
      let source : ↥(pureA18ParityBlock N true) :=
        ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by
          have hmod := Nat.mod_lt x.1 (by norm_num : 0 < 2)
          simp
          omega⟩⟩
      ⟨(oddMap source).1,
        pureA7OppositeParityBlock_subset N true (oddMap source).2⟩
  refine ⟨combined, ?_, ?_⟩
  · intro x y hxy
    by_cases hx : x.1 % 2 = 0
    · by_cases hy : y.1 % 2 = 0
      · have hmaps :
          evenMap ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by simpa using hx⟩⟩ =
            evenMap ⟨y.1, Finset.mem_filter.mpr ⟨y.2, by simpa using hy⟩⟩ := by
          apply Subtype.ext
          have hval := congrArg
            (fun z : ↥(OriginalA7 N) => z.1) hxy
          simpa [combined, hx, hy] using hval
        have hsources := evenInjective hmaps
        apply Subtype.ext
        exact congrArg
          (fun z : ↥(pureA18ParityBlock N false) => z.1) hsources
      · have hleftParity : (combined x).1 % 2 = 1 := by
          have htarget := (Finset.mem_filter.mp
            (evenMap ⟨x.1, Finset.mem_filter.mpr
              ⟨x.2, by simpa using hx⟩⟩).2).2
          simpa [combined, hx] using htarget
        have hrightParity : (combined y).1 % 2 = 0 := by
          have htarget := (Finset.mem_filter.mp
            (oddMap ⟨y.1, Finset.mem_filter.mpr ⟨y.2, by
              have hmod := Nat.mod_lt y.1 (by norm_num : 0 < 2)
              simp
              omega⟩⟩).2).2
          simpa [combined, hy] using htarget
        have hparityEq :=
          congrArg (fun z : ↥(OriginalA7 N) => z.1 % 2) hxy
        change (combined x).1 % 2 = (combined y).1 % 2 at hparityEq
        rw [hleftParity, hrightParity] at hparityEq
        omega
    · by_cases hy : y.1 % 2 = 0
      · have hleftParity : (combined x).1 % 2 = 0 := by
          have htarget := (Finset.mem_filter.mp
            (oddMap ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by
              have hmod := Nat.mod_lt x.1 (by norm_num : 0 < 2)
              simp
              omega⟩⟩).2).2
          simpa [combined, hx] using htarget
        have hrightParity : (combined y).1 % 2 = 1 := by
          have htarget := (Finset.mem_filter.mp
            (evenMap ⟨y.1, Finset.mem_filter.mpr
              ⟨y.2, by simpa using hy⟩⟩).2).2
          simpa [combined, hy] using htarget
        have hparityEq :=
          congrArg (fun z : ↥(OriginalA7 N) => z.1 % 2) hxy
        change (combined x).1 % 2 = (combined y).1 % 2 at hparityEq
        rw [hleftParity, hrightParity] at hparityEq
        omega
      · have hmaps :
          oddMap ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by
            have hmod := Nat.mod_lt x.1 (by norm_num : 0 < 2)
            simp
            omega⟩⟩ =
            oddMap ⟨y.1, Finset.mem_filter.mpr ⟨y.2, by
              have hmod := Nat.mod_lt y.1 (by norm_num : 0 < 2)
              simp
              omega⟩⟩ := by
          apply Subtype.ext
          have hval := congrArg
            (fun z : ↥(OriginalA7 N) => z.1) hxy
          simpa [combined, hx, hy] using hval
        have hsources := oddInjective hmaps
        apply Subtype.ext
        exact congrArg
          (fun z : ↥(pureA18ParityBlock N true) => z.1) hsources
  · intro x
    by_cases hx : x.1 % 2 = 0
    · simpa [combined, hx, pureOppositeSquarefreeEdge] using
        evenEdge ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by simpa using hx⟩⟩
    · simpa [combined, hx, pureOppositeSquarefreeEdge] using
        oddEdge ⟨x.1, Finset.mem_filter.mpr ⟨x.2, by
          have hmod := Nat.mod_lt x.1 (by norm_num : 0 < 2)
          simp
          omega⟩⟩

/-- Direct pure-branch endpoint from the two actual degree certificates. -/
theorem pureOppositeBaseMatching_of_degree
    {N : ℕ}
    (even : PureOppositeParityDegreeCertificate N false)
    (odd : PureOppositeParityDegreeCertificate N true) :
    PureOppositeBaseMatching N :=
  pureOppositeBaseMatching_of_parity_matchings
    (pureOppositeParity_matching_of_degree even)
    (pureOppositeParity_matching_of_degree odd)

#print axioms dense_bipartite_matching
#print axioms hall_bound_of_pure_opposite_matching
#print axioms hallMixedResidual_nonempty_of_defect
#print axioms pureA18ParityBlock_card_le_pureA7OppositeParityBlock
#print axioms pureOppositeParity_matching_of_degree
#print axioms pureOppositeBaseMatching_of_degree

end Erdos848
