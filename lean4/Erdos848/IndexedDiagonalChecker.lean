import Erdos848.FinitePrefixChecker

namespace Erdos848

/-- Balanced sequence storage for the exact sorted diagonal candidates. -/
inductive NatValueTree where
  | empty
  | leaf (value : ℕ)
  | node (size : ℕ) (left right : NatValueTree)

namespace NatValueTree

def size : NatValueTree → ℕ
  | .empty => 0
  | .leaf _ => 1
  | .node totalSize _ _ => totalSize

def get : NatValueTree → ℕ → ℕ
  | .empty, _ => 0
  | .leaf value, 0 => value
  | .leaf _, _ + 1 => 0
  | .node _ left right, index =>
      if index < left.size then left.get index
      else right.get (index - left.size)

end NatValueTree

structure IndexedMarkerData where
  limit : ℕ
  values : NatValueTree

namespace IndexedMarkerData

def Contains (data : IndexedMarkerData) (value : ℕ) : Prop :=
  ∃ index, index < data.values.size ∧ data.values.get index = value

/-- Compact numerical witnesses for consecutive members of one progression. -/
inductive ProgressionIndexTree where
  | leaf (markerIndex : ℕ)
  | node (left right : ProgressionIndexTree)

namespace ProgressionIndexTree

def size : ProgressionIndexTree → ℕ
  | .leaf _ => 1
  | .node left right => left.size + right.size

def check (tree : ProgressionIndexTree) (marker : IndexedMarkerData)
    (modulus residue start : ℕ) : Bool :=
  match tree with
  | .leaf markerIndex =>
      decide (markerIndex < marker.values.size ∧
        marker.values.get markerIndex = residue + modulus * start)
  | .node left right =>
      left.check marker modulus residue start &&
        right.check marker modulus residue (start + left.size)

def RangeCovered (marker : IndexedMarkerData) (modulus residue start stop : ℕ) :
    Prop :=
  ∀ k, start ≤ k → k < stop → marker.Contains (residue + modulus * k)

theorem range {tree : ProgressionIndexTree} {marker : IndexedMarkerData}
    {modulus residue start : ℕ}
    (hcheck : tree.check marker modulus residue start = true) :
    RangeCovered marker modulus residue start (start + tree.size) := by
  induction tree generalizing start with
  | leaf markerIndex =>
      intro k hstart hstop
      have hk : k = start := by simp [size] at hstop; omega
      have hvalue : markerIndex < marker.values.size ∧
          marker.values.get markerIndex = residue + modulus * start :=
        of_decide_eq_true (by simpa [check] using hcheck)
      refine ⟨markerIndex, hvalue.1, ?_⟩
      simpa [hk] using hvalue.2
  | node left right hleft hright =>
      have hchecks := Bool.and_eq_true_iff.mp (by simpa [check] using hcheck)
      intro k hstart hstop
      by_cases hk : k < start + left.size
      · exact hleft hchecks.1 k hstart hk
      · apply hright hchecks.2 k (Nat.le_of_not_gt hk)
        simpa [size, Nat.add_assoc] using hstop

end ProgressionIndexTree

theorem rangeCoveredAppend {marker : IndexedMarkerData}
    {modulus residue start middle stop : ℕ}
    (hleft : ProgressionIndexTree.RangeCovered marker modulus residue start middle)
    (hright : ProgressionIndexTree.RangeCovered marker modulus residue middle stop) :
    ProgressionIndexTree.RangeCovered marker modulus residue start stop := by
  intro k hstart hstop
  by_cases hk : k < middle
  · exact hleft k hstart hk
  · exact hright k (Nat.le_of_not_gt hk) hstop

def ResidueCovered (marker : IndexedMarkerData) (modulus residue : ℕ) : Prop :=
  if residue ≤ marker.limit then
    ∀ k, k < (marker.limit - residue) / modulus + 1 →
      marker.Contains (residue + modulus * k)
  else True

theorem residueCoveredOfRange {marker : IndexedMarkerData}
    {modulus residue : ℕ} (hresidue : residue ≤ marker.limit)
    (hvalid : ProgressionIndexTree.RangeCovered marker modulus residue 0
      ((marker.limit - residue) / modulus + 1)) :
    marker.ResidueCovered modulus residue := by
  rw [ResidueCovered, if_pos hresidue]
  intro k hk
  exact hvalid k (Nat.zero_le k) hk

theorem residueCoveredOfAboveLimit {marker : IndexedMarkerData}
    {modulus residue : ℕ} (hresidue : marker.limit < residue) :
    marker.ResidueCovered modulus residue := by
  simp [ResidueCovered, Nat.not_le.mpr hresidue]

theorem contains_of_mod_eq {marker : IndexedMarkerData} {modulus residue x : ℕ}
    (hmodulus : 0 < modulus) (_hresidue : residue < modulus)
    (hxLimit : x ≤ marker.limit) (hxmod : x % modulus = residue)
    (hcovered : marker.ResidueCovered modulus residue) :
    marker.Contains x := by
  have hresidueLimit : residue ≤ marker.limit := by
    rw [← hxmod]
    exact (Nat.mod_le x modulus).trans hxLimit
  rw [ResidueCovered, if_pos hresidueLimit] at hcovered
  have hxdecomp : x = residue + modulus * (x / modulus) := by
    calc
      x = x % modulus + modulus * (x / modulus) :=
        (Nat.mod_add_div x modulus).symm
      _ = residue + modulus * (x / modulus) := by rw [hxmod]
  have hmulLe : modulus * (x / modulus) ≤ marker.limit - residue := by omega
  have hquotLe : x / modulus ≤ (marker.limit - residue) / modulus :=
    (Nat.le_div_iff_mul_le hmodulus).2 <| by
      simpa [Nat.mul_comm] using hmulLe
  simpa [← hxdecomp] using hcovered (x / modulus) (Nat.lt_succ_of_le hquotLe)

end IndexedMarkerData

def IndexedRootRecordValid (marker : IndexedMarkerData)
    (rootData : DiagonalRootPairData) : Prop :=
  rootData.Valid ∧
    marker.ResidueCovered (rootData.prime ^ 2) rootData.root₁ ∧
    marker.ResidueCovered (rootData.prime ^ 2) rootData.root₂

namespace DiagonalRootTree

def IndexedValid (marker : IndexedMarkerData) : DiagonalRootTree → Prop
  | .empty => True
  | .leaf data => IndexedRootRecordValid marker data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.IndexedValid marker ∧ right.IndexedValid marker

theorem indexedValid_get {marker : IndexedMarkerData} {tree : DiagonalRootTree}
    (hvalid : tree.IndexedValid marker) {index : ℕ} (hindex : index < tree.size) :
    IndexedRootRecordValid marker (tree.get index) := by
  induction tree generalizing index with
  | empty => simp [size] at hindex
  | leaf data =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [IndexedValid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [IndexedValid] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        simpa [get, hinLeft] using hright hvalid.2.2 hinRight

end DiagonalRootTree

structure IndexedDiagonalCoverageCertificate where
  coverage : PrimeRootCoverageData
  marker : IndexedMarkerData
  coverageValid : coverage.TreeCovered
  sameLimit : marker.limit = coverage.limit
  rootsValid : coverage.roots.IndexedValid marker

theorem IndexedDiagonalCoverageCertificate.contains_of_not_squarefree
    (certificate : IndexedDiagonalCoverageCertificate) {x : ℕ}
    (hxPositive : 1 ≤ x) (hxLimit : x ≤ certificate.marker.limit)
    (hnsq : ¬ Squarefree (x ^ 2 + 1)) :
    certificate.marker.Contains x := by
  obtain ⟨p, hp, hpSquare⟩ := finite_prime_square_exists hnsq
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
  have hrecordValid : IndexedRootRecordValid certificate.marker rootData := by
    simpa [rootData] using
      DiagonalRootTree.indexedValid_get certificate.rootsValid hindex
  have hrootValid : rootData.Valid := hrecordValid.1
  have hpRoot : Nat.Prime rootData.prime := hprime' ▸ hp
  have hpRootMod : rootData.prime % 4 = 1 := hprime' ▸ hpModFour
  have hxRootDiv : rootData.prime ^ 2 ∣ x ^ 2 + 1 := hprime' ▸ hpSquare
  have hrootCases :=
    (rootData.certificate hrootValid).complete hpRoot hpRootMod hxRootDiv
  rcases hrootCases with hroot₁ | hroot₂
  · exact IndexedMarkerData.contains_of_mod_eq
      (pow_pos hpRoot.pos 2) hrootValid.1 hxLimit hroot₁ hrecordValid.2.1
  · exact IndexedMarkerData.contains_of_mod_eq
      (pow_pos hpRoot.pos 2) hrootValid.2.1 hxLimit hroot₂ hrecordValid.2.2

end Erdos848
