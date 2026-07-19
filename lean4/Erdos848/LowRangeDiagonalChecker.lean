import Erdos848.OutsideDiagonalChecker
import Erdos848.LowRangeCombinatorics

namespace Erdos848

/-!
Kernel checker for the low-range diagonal set.  Unlike the prefix marker, this
certificate deliberately omits the two base progressions `7, 18 (mod 25)`.
Those progressions are skipped inside each square-root progression and are
excluded mathematically before the prime-root coverage is consulted.
-/

/- Definitions through `LowRangeDiagonalCoverageCertificate` were moved to
`OutsideDiagonalChecker` so finite tail certificates do not inherit the heavy
asymptotic import chain.  The legacy source is retained inside this temporary
comment until the generated low-range modules have been re-audited. -/
/-
def OutsideLowBase (x : ℕ) : Prop :=
  x % 25 ≠ 7 ∧ x % 25 ≠ 18

instance outsideLowBaseDecidable (x : ℕ) : Decidable (OutsideLowBase x) :=
  by unfold OutsideLowBase; infer_instance

namespace IndexedMarkerData

/-- A progression proof may either point into the outside marker or certify
that the current term belongs to one of the two deliberately omitted base
residue classes. -/
inductive OutsideProgressionIndexTree where
  | skip
  | leaf (markerIndex : ℕ)
  | node (left right : OutsideProgressionIndexTree)

namespace OutsideProgressionIndexTree

def size : OutsideProgressionIndexTree → ℕ
  | .skip => 1
  | .leaf _ => 1
  | .node left right => left.size + right.size

def check (tree : OutsideProgressionIndexTree) (marker : IndexedMarkerData)
    (modulus residue start : ℕ) : Bool :=
  match tree with
  | .skip =>
      decide ((residue + modulus * start) % 25 = 7 ∨
        (residue + modulus * start) % 25 = 18)
  | .leaf markerIndex =>
      decide (markerIndex < marker.values.size ∧
        marker.values.get markerIndex = residue + modulus * start)
  | .node left right =>
      left.check marker modulus residue start &&
        right.check marker modulus residue (start + left.size)

def RangeCoveredOutside (marker : IndexedMarkerData)
    (modulus residue start stop : ℕ) : Prop :=
  ∀ k, start ≤ k → k < stop →
    OutsideLowBase (residue + modulus * k) →
    marker.Contains (residue + modulus * k)

theorem range {tree : OutsideProgressionIndexTree}
    {marker : IndexedMarkerData} {modulus residue start : ℕ}
    (hcheck : tree.check marker modulus residue start = true) :
    RangeCoveredOutside marker modulus residue start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro k hstart hstop houtside
      have hk : k = start := by simp [size] at hstop; omega
      subst k
      have hbase :
          (residue + modulus * start) % 25 = 7 ∨
            (residue + modulus * start) % 25 = 18 :=
        of_decide_eq_true (by simpa [check] using hcheck)
      rcases hbase with hseven | heighteen
      · exact False.elim (houtside.1 hseven)
      · exact False.elim (houtside.2 heighteen)
  | leaf markerIndex =>
      intro k hstart hstop _houtside
      have hk : k = start := by simp [size] at hstop; omega
      have hvalue : markerIndex < marker.values.size ∧
          marker.values.get markerIndex = residue + modulus * start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      refine ⟨markerIndex, hvalue.1, ?_⟩
      simpa [hk] using hvalue.2
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro k hstart hstop houtside
      by_cases hk : k < start + left.size
      · exact hleft hchecks.1 k hstart hk houtside
      · apply hright hchecks.2 k (Nat.le_of_not_gt hk)
          (by simpa [size, Nat.add_assoc] using hstop) houtside

end OutsideProgressionIndexTree

theorem rangeCoveredOutsideAppend {marker : IndexedMarkerData}
    {modulus residue start middle stop : ℕ}
    (hleft : OutsideProgressionIndexTree.RangeCoveredOutside marker
      modulus residue start middle)
    (hright : OutsideProgressionIndexTree.RangeCoveredOutside marker
      modulus residue middle stop) :
    OutsideProgressionIndexTree.RangeCoveredOutside marker
      modulus residue start stop := by
  intro k hstart hstop houtside
  by_cases hk : k < middle
  · exact hleft k hstart hk houtside
  · exact hright k (Nat.le_of_not_gt hk) hstop houtside

def ResidueCoveredOutside (marker : IndexedMarkerData)
    (modulus residue : ℕ) : Prop :=
  if residue ≤ marker.limit then
    ∀ k, k < (marker.limit - residue) / modulus + 1 →
      OutsideLowBase (residue + modulus * k) →
      marker.Contains (residue + modulus * k)
  else True

theorem residueCoveredOutsideOfRange {marker : IndexedMarkerData}
    {modulus residue : ℕ} (hresidue : residue ≤ marker.limit)
    (hvalid : OutsideProgressionIndexTree.RangeCoveredOutside marker
      modulus residue 0 ((marker.limit - residue) / modulus + 1)) :
    marker.ResidueCoveredOutside modulus residue := by
  rw [ResidueCoveredOutside, if_pos hresidue]
  intro k hk houtside
  exact hvalid k (Nat.zero_le k) hk houtside

theorem residueCoveredOutsideOfAboveLimit {marker : IndexedMarkerData}
    {modulus residue : ℕ} (hresidue : marker.limit < residue) :
    marker.ResidueCoveredOutside modulus residue := by
  simp [ResidueCoveredOutside, Nat.not_le.mpr hresidue]

theorem contains_of_mod_eq_outside {marker : IndexedMarkerData}
    {modulus residue x : ℕ}
    (hmodulus : 0 < modulus) (_hresidue : residue < modulus)
    (hxLimit : x ≤ marker.limit) (hxmod : x % modulus = residue)
    (houtside : OutsideLowBase x)
    (hcovered : marker.ResidueCoveredOutside modulus residue) :
    marker.Contains x := by
  have hresidueLimit : residue ≤ marker.limit := by
    rw [← hxmod]
    exact (Nat.mod_le x modulus).trans hxLimit
  rw [ResidueCoveredOutside, if_pos hresidueLimit] at hcovered
  have hxdecomp : x = residue + modulus * (x / modulus) := by
    calc
      x = x % modulus + modulus * (x / modulus) :=
        (Nat.mod_add_div x modulus).symm
      _ = residue + modulus * (x / modulus) := by rw [hxmod]
  have hmulLe : modulus * (x / modulus) ≤ marker.limit - residue := by omega
  have hquotLe : x / modulus ≤ (marker.limit - residue) / modulus :=
    (Nat.le_div_iff_mul_le hmodulus).2 <| by
      simpa [Nat.mul_comm] using hmulLe
  simpa [← hxdecomp] using hcovered (x / modulus)
    (Nat.lt_succ_of_le hquotLe) (by simpa [← hxdecomp] using houtside)

end IndexedMarkerData

def OutsideIndexedRootRecordValid (marker : IndexedMarkerData)
    (rootData : DiagonalRootPairData) : Prop :=
  rootData.Valid ∧
    (rootData.prime = 5 ∨
      (marker.ResidueCoveredOutside (rootData.prime ^ 2) rootData.root₁ ∧
        marker.ResidueCoveredOutside (rootData.prime ^ 2) rootData.root₂))

namespace DiagonalRootTree

def OutsideIndexedValid (marker : IndexedMarkerData) : DiagonalRootTree → Prop
  | .empty => True
  | .leaf data => OutsideIndexedRootRecordValid marker data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.OutsideIndexedValid marker ∧ right.OutsideIndexedValid marker

theorem outsideIndexedValid_get {marker : IndexedMarkerData}
    {tree : DiagonalRootTree} (hvalid : tree.OutsideIndexedValid marker)
    {index : ℕ} (hindex : index < tree.size) :
    OutsideIndexedRootRecordValid marker (tree.get index) := by
  induction tree generalizing index with
  | empty => simp [size] at hindex
  | leaf data =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [OutsideIndexedValid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [OutsideIndexedValid] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        simpa [get, hinLeft] using hright hvalid.2.2 hinRight

end DiagonalRootTree

structure LowRangeDiagonalCoverageCertificate where
  coverage : PrimeRootCoverageData
  marker : IndexedMarkerData
  coverageValid : coverage.TreeCovered
  sameLimit : marker.limit = coverage.limit
  rootsValid : coverage.roots.OutsideIndexedValid marker

theorem LowRangeDiagonalCoverageCertificate.contains_of_not_squarefree
    (certificate : LowRangeDiagonalCoverageCertificate) {x : ℕ}
    (hxPositive : 1 ≤ x) (hxLimit : x ≤ certificate.marker.limit)
    (houtside : OutsideLowBase x)
    (hnsq : ¬ Squarefree (x ^ 2 + 1)) :
    certificate.marker.Contains x := by
  have h25 : ¬ 25 ∣ x ^ 2 + 1 :=
    not_dvd_25_sq_add_one_of_mod_ne x houtside
  obtain ⟨p, hp, hpNeFive, hpSquare⟩ :=
    prime_square_exists_ne5 hnsq h25
  have hpNeTwo : p ≠ 2 := by
    intro hpTwo
    subst p
    have hfour : 4 ∣ x ^ 2 + 1 := by simpa [pow_two] using hpSquare
    exact not_dvd_four_sq_add_one x hfour
  have hpGtTwo : 2 < p := lt_of_le_of_ne hp.two_le (Ne.symm hpNeTwo)
  have hpModFour : p % 4 = 1 :=
    prime_sq_divides_implies_one_mod_four p x hp hpGtTwo hpSquare
  have hpSquareLe : p ^ 2 ≤ x ^ 2 + 1 :=
    Nat.le_of_dvd (by positivity) hpSquare
  have hpLeX : p ≤ x := by
    by_contra hpx
    have hxp : x + 1 ≤ p := by omega
    nlinarith
  have hpLimit : p ≤ certificate.coverage.limit := by
    rw [← certificate.sameLimit]
    exact hpLeX.trans hxLimit
  obtain ⟨index, hindex, hprime⟩ :=
    certificate.coverage.rootPairAtPrime certificate.coverageValid hp hpLimit
      hpModFour
  let rootData := certificate.coverage.rootAt index
  have hprime' : rootData.prime = p := by simpa [rootData] using hprime
  have hrecordValid :
      OutsideIndexedRootRecordValid certificate.marker rootData := by
    simpa [rootData] using
      DiagonalRootTree.outsideIndexedValid_get certificate.rootsValid hindex
  have hrootValid : rootData.Valid := hrecordValid.1
  have hrootNeFive : rootData.prime ≠ 5 := by
    rw [hprime']
    exact hpNeFive
  have hrootCovered :
      certificate.marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₁ ∧
        certificate.marker.ResidueCoveredOutside
          (rootData.prime ^ 2) rootData.root₂ :=
    hrecordValid.2.resolve_left hrootNeFive
  have hpRoot : Nat.Prime rootData.prime := hprime' ▸ hp
  have hpRootMod : rootData.prime % 4 = 1 := hprime' ▸ hpModFour
  have hxRootDiv : rootData.prime ^ 2 ∣ x ^ 2 + 1 := hprime' ▸ hpSquare
  have hrootCases :=
    (rootData.certificate hrootValid).complete hpRoot hpRootMod hxRootDiv
  rcases hrootCases with hroot₁ | hroot₂
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.1 hxLimit hroot₁ houtside
      hrootCovered.1
  · exact IndexedMarkerData.contains_of_mod_eq_outside
      (pow_pos hpRoot.pos 2) hrootValid.2.1 hxLimit hroot₂ houtside
      hrootCovered.2
-/

lemma outsideLowBase_of_mem_lowDiagonalBad {N x : ℕ}
    (hx : x ∈ lowDiagonalBad N) : OutsideLowBase x := by
  have hxFilter := Finset.mem_filter.mp hx
  have hxIcc : x ∈ Finset.Icc 1 N := (Finset.mem_sdiff.mp hxFilter.1).1
  have hxNotBase : x ∉ lowBaseSet N := (Finset.mem_sdiff.mp hxFilter.1).2
  constructor
  · intro hseven
    apply hxNotBase
    simp [lowBaseSet, OriginalA7, OriginalA18, hxIcc, hseven]
  · intro heighteen
    apply hxNotBase
    simp [lowBaseSet, OriginalA7, OriginalA18, hxIcc, heighteen]

theorem LowRangeDiagonalCoverageCertificate.contains_of_mem_lowDiagonalBad
    (certificate : LowRangeDiagonalCoverageCertificate) {N x : ℕ}
    (hNLimit : N ≤ certificate.marker.limit)
    (hx : x ∈ lowDiagonalBad N) : certificate.marker.Contains x := by
  have hxFilter := Finset.mem_filter.mp hx
  have hxIcc : x ∈ Finset.Icc 1 N := (Finset.mem_sdiff.mp hxFilter.1).1
  have hxBounds : 1 ≤ x ∧ x ≤ N := Finset.mem_Icc.mp hxIcc
  exact certificate.contains_of_not_squarefree hxBounds.1
    (hxBounds.2.trans hNLimit) (outsideLowBase_of_mem_lowDiagonalBad hx)
    (by simpa [pow_two] using hxFilter.2)

namespace IndexedMarkerData

/- The sorted-marker core now lives in `OutsideDiagonalChecker`. -/
/-
/-! ## Sorted-marker and prefix-cardinality checker -/

/-- A compact proof tree for every adjacent comparison in a sorted marker. -/
inductive AdjacentIndexTree where
  | leaf
  | node (left right : AdjacentIndexTree)

namespace AdjacentIndexTree

/-- Number of adjacent comparisons represented by the tree. -/
def size : AdjacentIndexTree → ℕ
  | .leaf => 1
  | .node left right => left.size + right.size

def check (tree : AdjacentIndexTree) (marker : IndexedMarkerData)
    (start : ℕ) : Bool :=
  match tree with
  | .leaf =>
      decide (start + 1 < marker.values.size ∧
        marker.values.get start < marker.values.get (start + 1))
  | .node left right =>
      left.check marker start && right.check marker (start + left.size)

def RangeOrdered (marker : IndexedMarkerData) (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index + 1 < stop →
    marker.values.get index < marker.values.get (index + 1)

theorem range {tree : AdjacentIndexTree} {marker : IndexedMarkerData}
    {start : ℕ} (hcheck : tree.check marker start = true) :
    RangeOrdered marker start (start + tree.size + 1) := by
  induction tree generalizing start with
  | leaf =>
      intro index hstart hstop
      have hindex : index = start := by simp [size] at hstop; omega
      have hvalid : start + 1 < marker.values.size ∧
          marker.values.get start < marker.values.get (start + 1) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      simpa [hindex] using hvalid.2
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop
      by_cases hindex : index < start + left.size
      · apply hleft hchecks.1 index hstart
        omega
      · apply hright hchecks.2 index (Nat.le_of_not_gt hindex)
        simpa [size, Nat.add_assoc] using hstop

end AdjacentIndexTree

def AdjacentOrdered (marker : IndexedMarkerData) : Prop :=
  ∀ index, index + 1 < marker.values.size →
    marker.values.get index < marker.values.get (index + 1)

theorem adjacentOrdered_of_range {marker : IndexedMarkerData}
    {comparisonCount : ℕ}
    (hsize : comparisonCount + 1 = marker.values.size)
    (hrange : AdjacentIndexTree.RangeOrdered marker 0
      (comparisonCount + 1)) :
    marker.AdjacentOrdered := by
  intro index hindex
  apply hrange index (Nat.zero_le index)
  simpa [hsize] using hindex

theorem adjacentRangeAppend {marker : IndexedMarkerData}
    {start middle stop : ℕ}
    (hleft : AdjacentIndexTree.RangeOrdered marker start (middle + 1))
    (hright : AdjacentIndexTree.RangeOrdered marker middle stop) :
    AdjacentIndexTree.RangeOrdered marker start stop := by
  intro index hstart hstop
  by_cases hindex : index < middle
  · exact hleft index hstart (by omega)
  · exact hright index (Nat.le_of_not_gt hindex) hstop

theorem get_lt_get_of_adjacentOrdered {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered) {i j : ℕ}
    (hij : i < j) (hj : j < marker.values.size) :
    marker.values.get i < marker.values.get j := by
  induction j generalizing i with
  | zero => omega
  | succ j ih =>
      by_cases hi : i = j
      · subst i
        exact hordered j (by simpa using hj)
      · have hij' : i < j := by omega
        exact lt_trans (ih hij' (by omega))
          (hordered j (by simpa using hj))

/-- `count` is a certified upper cutoff at value `upper`. -/
def Cutoff (marker : IndexedMarkerData) (upper count : ℕ) : Prop :=
  count ≤ marker.values.size ∧
    (count < marker.values.size → upper < marker.values.get count)

instance cutoffDecidable (marker : IndexedMarkerData) (upper count : ℕ) :
    Decidable (marker.Cutoff upper count) := by
  unfold Cutoff
  infer_instance

theorem index_lt_of_cutoff {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered) {upper count index : ℕ}
    (hcutoff : marker.Cutoff upper count)
    (hindex : index < marker.values.size)
    (hvalue : marker.values.get index ≤ upper) : index < count := by
  by_contra hnot
  have hcountIndex : count ≤ index := Nat.le_of_not_gt hnot
  have hcountSize : count < marker.values.size := hcountIndex.trans_lt hindex
  have hnext := hcutoff.2 hcountSize
  have hmono : marker.values.get count ≤ marker.values.get index := by
    rcases hcountIndex.eq_or_lt with heq | hlt
    · exact le_of_eq (congrArg marker.values.get heq)
    · exact le_of_lt (get_lt_get_of_adjacentOrdered hordered hlt hindex)
  omega

def prefixValues (marker : IndexedMarkerData) (count : ℕ) : Finset ℕ :=
  (Finset.range count).image marker.values.get

theorem mem_prefixValues_of_contains {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered) {upper count value : ℕ}
    (hcutoff : marker.Cutoff upper count)
    (hcontains : marker.Contains value) (hvalue : value ≤ upper) :
    value ∈ marker.prefixValues count := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  have hindexCount := index_lt_of_cutoff hordered hcutoff hindex (by
    simpa [hget] using hvalue)
  exact Finset.mem_image.mpr ⟨index, Finset.mem_range.mpr hindexCount, hget⟩

theorem card_le_cutoff {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered) {upper count : ℕ} {S : Finset ℕ}
    (hcutoff : marker.Cutoff upper count)
    (hcontains : ∀ x ∈ S, marker.Contains x)
    (hvalue : ∀ x ∈ S, x ≤ upper) : S.card ≤ count := by
  have hsubset : S ⊆ marker.prefixValues count := by
    intro x hx
    exact mem_prefixValues_of_contains hordered hcutoff
      (hcontains x hx) (hvalue x hx)
  exact (Finset.card_le_card hsubset).trans <| by
    simpa [prefixValues] using
      (Finset.card_image_le (s := Finset.range count)
        (f := marker.values.get))
-/

theorem card_cast_le_of_envelope {marker : IndexedMarkerData}
    (hordered : marker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ} {S : Finset ℕ}
    (hcutoff : marker.Cutoff upper count)
    (hcontains : ∀ x ∈ S, marker.Contains x)
    (hvalue : ∀ x ∈ S, x ≤ N)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((S.card : ℕ) : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  have hcard : S.card ≤ count := card_le_cutoff hordered hcutoff hcontains
    (fun x hx => (hvalue x hx).trans hNUpper)
  have hcardQ : ((S.card : ℕ) : ℚ) ≤ (count : ℚ) := by exact_mod_cast hcard
  have henvelopeQ : (count : ℚ) * 1_000_000 ≤
      (coefficient : ℚ) * lower := by exact_mod_cast henvelope
  have hNLowerQ : (lower : ℚ) ≤ N := by exact_mod_cast hNLower
  have hcoefficient : (0 : ℚ) ≤ coefficient := by positivity
  calc
    ((S.card : ℕ) : ℚ) ≤ count := hcardQ
    _ ≤ (coefficient / 1_000_000 : ℚ) * lower := by
      linarith
    _ ≤ (coefficient / 1_000_000 : ℚ) * N := by
      gcongr

/-! ## Category projections -/

inductive MarkerClass where
  | odd
  | modOne
  | modThree
  deriving DecidableEq

def MarkerClass.Accepts : MarkerClass → ℕ → Prop
  | .odd, x => x % 4 = 1 ∨ x % 4 = 3
  | .modOne, x => x % 4 = 1
  | .modThree, x => x % 4 = 3

instance markerClassAcceptsDecidable (kind : MarkerClass) (x : ℕ) :
    Decidable (kind.Accepts x) := by
  cases kind <;> simp [MarkerClass.Accepts] <;> infer_instance

/-- Proof tree for projecting a sorted source marker to one residue category. -/
inductive ProjectionIndexTree where
  | skip
  | leaf (targetIndex : ℕ)
  | node (left right : ProjectionIndexTree)

namespace ProjectionIndexTree

def size : ProjectionIndexTree → ℕ
  | .skip => 1
  | .leaf _ => 1
  | .node left right => left.size + right.size

def check (tree : ProjectionIndexTree) (source target : IndexedMarkerData)
    (kind : MarkerClass) (start : ℕ) : Bool :=
  match tree with
  | .skip =>
      decide (start < source.values.size ∧
        ¬ kind.Accepts (source.values.get start))
  | .leaf targetIndex =>
      decide (start < source.values.size ∧
        targetIndex < target.values.size ∧
        kind.Accepts (source.values.get start) ∧
        target.values.get targetIndex = source.values.get start)
  | .node left right =>
      left.check source target kind start &&
        right.check source target kind (start + left.size)

def RangeProjected (source target : IndexedMarkerData) (kind : MarkerClass)
    (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index < stop →
    kind.Accepts (source.values.get index) →
    target.Contains (source.values.get index)

theorem range {tree : ProjectionIndexTree}
    {source target : IndexedMarkerData} {kind : MarkerClass} {start : ℕ}
    (hcheck : tree.check source target kind start = true) :
    RangeProjected source target kind start (start + tree.size) := by
  induction tree generalizing start with
  | skip =>
      intro index hstart hstop haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          ¬ kind.Accepts (source.values.get start) :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact False.elim (hvalid.2 haccepts)
  | leaf targetIndex =>
      intro index hstart hstop _haccepts
      have hindex : index = start := by simp [size] at hstop; omega
      subst index
      have hvalid : start < source.values.size ∧
          targetIndex < target.values.size ∧
          kind.Accepts (source.values.get start) ∧
          target.values.get targetIndex = source.values.get start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      exact ⟨targetIndex, hvalid.2.1, hvalid.2.2.2⟩
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro index hstart hstop haccepts
      by_cases hindex : index < start + left.size
      · exact hleft hchecks.1 index hstart hindex haccepts
      · exact hright hchecks.2 index (Nat.le_of_not_gt hindex)
          (by simpa [size, Nat.add_assoc] using hstop) haccepts

end ProjectionIndexTree

def Projects (source target : IndexedMarkerData) (kind : MarkerClass) : Prop :=
  ∀ index, index < source.values.size →
    kind.Accepts (source.values.get index) →
    target.Contains (source.values.get index)

theorem projects_of_range {source target : IndexedMarkerData}
    {kind : MarkerClass}
    (hrange : ProjectionIndexTree.RangeProjected source target kind 0
      source.values.size) : source.Projects target kind := by
  intro index hindex haccepts
  exact hrange index (Nat.zero_le index) hindex haccepts

theorem projectionRangeAppend {source target : IndexedMarkerData}
    {kind : MarkerClass} {start middle stop : ℕ}
    (hleft : ProjectionIndexTree.RangeProjected source target kind
      start middle)
    (hright : ProjectionIndexTree.RangeProjected source target kind
      middle stop) :
    ProjectionIndexTree.RangeProjected source target kind start stop := by
  intro index hstart hstop haccepts
  by_cases hindex : index < middle
  · exact hleft index hstart hindex haccepts
  · exact hright index (Nat.le_of_not_gt hindex) hstop haccepts

theorem Projects.contains {source target : IndexedMarkerData}
    {kind : MarkerClass} (hprojects : source.Projects target kind)
    {value : ℕ} (hcontains : source.Contains value)
    (haccepts : kind.Accepts value) : target.Contains value := by
  obtain ⟨index, hindex, hget⟩ := hcontains
  exact hget ▸ hprojects index hindex (hget ▸ haccepts)

end IndexedMarkerData

lemma value_le_of_mem_lowDiagonalBad {N x : ℕ}
    (hx : x ∈ lowDiagonalBad N) : x ≤ N := by
  have hxFilter := Finset.mem_filter.mp hx
  exact (Finset.mem_Icc.mp (Finset.mem_sdiff.mp hxFilter.1).1).2

theorem lowDiagonalBad_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (hordered : certificate.marker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : certificate.marker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalBad N).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    exact certificate.contains_of_mem_lowDiagonalBad
      (hNUpper.trans hUpperLimit) hx
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad hx

theorem lowDiagonalOdd_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (oddMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects oddMarker .odd)
    (hordered : oddMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : oddMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalOdd N).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

theorem lowDiagonalModOne_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (modOneMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects modOneMarker .modOne)
    (hordered : modOneMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : modOneMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalMod4 N 1).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

theorem lowDiagonalModThree_card_cast_le_of_envelope
    (certificate : LowRangeDiagonalCoverageCertificate)
    (modThreeMarker : IndexedMarkerData)
    (hprojects : certificate.marker.Projects modThreeMarker .modThree)
    (hordered : modThreeMarker.AdjacentOrdered)
    {lower upper count coefficient N : ℕ}
    (hcutoff : modThreeMarker.Cutoff upper count)
    (hUpperLimit : upper ≤ certificate.marker.limit)
    (hNLower : lower ≤ N) (hNUpper : N ≤ upper)
    (henvelope : count * 1_000_000 ≤ coefficient * lower) :
    ((lowDiagonalMod4 N 3).card : ℚ) ≤
      (coefficient / 1_000_000 : ℚ) * N := by
  refine IndexedMarkerData.card_cast_le_of_envelope hordered hcutoff
    (lower := lower) ?_ ?_ hNLower hNUpper henvelope
  · intro x hx
    have hxFilter := Finset.mem_filter.mp hx
    exact hprojects.contains
      (certificate.contains_of_mem_lowDiagonalBad
        (hNUpper.trans hUpperLimit) hxFilter.1)
      hxFilter.2
  · intro x hx
    exact value_le_of_mem_lowDiagonalBad (Finset.mem_filter.mp hx).1

structure LowDiagonalEnvelopeBounds
    (N allCoefficient oddCoefficient classCoefficient : ℕ) : Prop where
  all : ((lowDiagonalBad N).card : ℚ) ≤
    (allCoefficient / 1_000_000 : ℚ) * N
  odd : ((lowDiagonalOdd N).card : ℚ) ≤
    (oddCoefficient / 1_000_000 : ℚ) * N
  modOne : ((lowDiagonalMod4 N 1).card : ℚ) ≤
    (classCoefficient / 1_000_000 : ℚ) * N
  modThree : ((lowDiagonalMod4 N 3).card : ℚ) ≤
    (classCoefficient / 1_000_000 : ℚ) * N

def LowDiagonalEnvelopeRange (start stop allCoefficient oddCoefficient
    classCoefficient : ℕ) : Prop :=
  ∀ N, start ≤ N → N < stop →
    LowDiagonalEnvelopeBounds N allCoefficient oddCoefficient classCoefficient

theorem lowDiagonalEnvelopeRangeAppend
    {start middle stop allCoefficient oddCoefficient classCoefficient : ℕ}
    (hleft : LowDiagonalEnvelopeRange start middle allCoefficient
      oddCoefficient classCoefficient)
    (hright : LowDiagonalEnvelopeRange middle stop allCoefficient
      oddCoefficient classCoefficient) :
    LowDiagonalEnvelopeRange start stop allCoefficient oddCoefficient
      classCoefficient := by
  intro N hstart hstop
  by_cases hN : N < middle
  · exact hleft N hstart hN
  · exact hright N (Nat.le_of_not_gt hN) hstop

end Erdos848
