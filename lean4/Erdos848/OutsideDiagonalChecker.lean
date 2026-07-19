import Erdos848.IndexedDiagonalChecker
import Erdos848.DiagonalArithmeticCore

namespace Erdos848

/-!
Lightweight prime-root coverage for diagonal candidates outside the two base
progressions.  This file is deliberately independent of the asymptotic and
Hall layers so large generated finite certificates can compile without first
building `Asymptotic.olean`.
-/

def OutsideLowBase (x : ℕ) : Prop :=
  x % 25 ≠ 7 ∧ x % 25 ≠ 18

instance outsideLowBaseDecidable (x : ℕ) : Decidable (OutsideLowBase x) :=
  by unfold OutsideLowBase; infer_instance

lemma outside_not_dvd_25_sq_add_one (x : ℕ) (h : OutsideLowBase x) :
    ¬ 25 ∣ x ^ 2 + 1 := by
  intro h25
  have h0 : ((x ^ 2 + 1 : ℕ) : ZMod 25) = 0 :=
    (ZMod.natCast_eq_zero_iff (x ^ 2 + 1) 25).2 h25
  have hsq : (x : ZMod 25) ^ 2 = (-1 : ZMod 25) := by
    have : (x : ZMod 25) ^ 2 + 1 = 0 := by
      simpa [Nat.cast_add, Nat.cast_pow, Nat.cast_one] using h0
    simpa using (eq_neg_of_add_eq_zero_left this)
  have hfinite :
      ∀ y : ZMod 25, y ^ 2 = (-1 : ZMod 25) ↔
        y = (7 : ZMod 25) ∨ y = (18 : ZMod 25) := by
    decide
  rcases (hfinite (x : ZMod 25)).1 hsq with hseven | heighteen
  · apply h.1
    have hx : x % 25 = 7 % 25 :=
      (ZMod.natCast_eq_natCast_iff' x 7 25).1 hseven
    simpa using hx
  · apply h.2
    have hx : x % 25 = 18 % 25 :=
      (ZMod.natCast_eq_natCast_iff' x 18 25).1 heighteen
    simpa using hx

namespace IndexedMarkerData

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
    outside_not_dvd_25_sq_add_one x houtside
  obtain ⟨p, hp, hpSquare⟩ := finite_prime_square_exists hnsq
  have hpNeFive : p ≠ 5 := by
    intro hpFive
    subst p
    exact h25 (by simpa [pow_two] using hpSquare)
  have hpNeTwo : p ≠ 2 := by
    intro hpTwo
    subst p
    have hfour : 4 ∣ x ^ 2 + 1 := by simpa [pow_two] using hpSquare
    exact finite_not_dvd_four_sq_add_one x hfour
  have hpGtTwo : 2 < p := lt_of_le_of_ne hp.two_le (Ne.symm hpNeTwo)
  have hpModFour : p % 4 = 1 :=
    finite_prime_sq_divides_implies_one_mod_four p x hp hpGtTwo hpSquare
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

namespace IndexedMarkerData

/-! ## Sorted-marker and prefix-cardinality checker -/

inductive AdjacentIndexTree where
  | leaf
  | node (left right : AdjacentIndexTree)

namespace AdjacentIndexTree

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

end IndexedMarkerData

end Erdos848
