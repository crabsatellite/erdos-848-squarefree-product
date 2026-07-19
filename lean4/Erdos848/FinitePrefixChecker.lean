import Erdos848.ProblemCore
import Erdos848.PrattCore
import Erdos848.DiagonalArithmeticCore

namespace Erdos848

/-! ### Exact diagonal-root certificates

The finite producer enumerates the nonsquarefree diagonal values through the
two roots of `X² + 1` modulo `p²`.  The next interface is deliberately
stronger than a check that the two advertised residues are roots: its
soundness theorem proves that they exhaust *every* root.  Thus a generated
root table cannot silently omit a third progression.
-/

/-- Any two distinct roots supplied for `X² = -1 (mod p²)` are the complete
root pair.  Completeness is inherited from the theorem that there are exactly
two roots; the finite certificate only has to exhibit and distinguish its
two concrete residues. -/
theorem diagonal_root_pair_complete {p : ℕ} (hp : Nat.Prime p)
    (hmod : p % 4 = 1) {root₁ root₂ : ZMod (p ^ 2)}
    (hne : root₁ ≠ root₂) (hroot₁ : root₁ ^ 2 = -1)
    (hroot₂ : root₂ ^ 2 = -1) :
    ∀ root : ZMod (p ^ 2), root ^ 2 = -1 →
      root = root₁ ∨ root = root₂ := by
  obtain ⟨canonical₁, canonical₂, _hcanonicalNe, _hcanonical₁,
      _hcanonical₂, hcanonical⟩ := finite_two_roots_mod_p_squared p hp hmod
  have hroot₁Canonical := hcanonical root₁ hroot₁
  have hroot₂Canonical := hcanonical root₂ hroot₂
  intro root hroot
  have hrootCanonical := hcanonical root hroot
  rcases hroot₁Canonical with h₁₁ | h₁₂ <;>
    rcases hroot₂Canonical with h₂₁ | h₂₂ <;>
    rcases hrootCanonical with hr₁ | hr₂
  all_goals aesop

/-- Two concrete least residues witnessing all roots of `X² = -1 (mod p²)`.
The fields are plain natural-number equalities, so generated instances reduce
in the kernel with `by decide`. -/
structure DiagonalRootPairCertificate (p : ℕ) where
  root₁ : ℕ
  root₂ : ℕ
  root₁_lt : root₁ < p ^ 2
  root₂_lt : root₂ < p ^ 2
  distinct : root₁ ≠ root₂
  root₁_dvd : p ^ 2 ∣ root₁ ^ 2 + 1
  root₂_dvd : p ^ 2 ∣ root₂ ^ 2 + 1

/-- Soundness of a concrete diagonal-root pair: every natural solution is in
one of the two advertised residue classes. -/
theorem DiagonalRootPairCertificate.complete {p x : ℕ}
    (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (certificate : DiagonalRootPairCertificate p)
    (hx : p ^ 2 ∣ x ^ 2 + 1) :
    x % (p ^ 2) = certificate.root₁ ∨
      x % (p ^ 2) = certificate.root₂ := by
  letI : Fact p.Prime := ⟨hp⟩
  have root_eq_neg_one {n : ℕ} (hdiv : p ^ 2 ∣ n ^ 2 + 1) :
      (n : ZMod (p ^ 2)) ^ 2 = -1 := by
    have hzero : ((n ^ 2 + 1 : ℕ) : ZMod (p ^ 2)) = 0 :=
      (ZMod.natCast_eq_zero_iff (n ^ 2 + 1) (p ^ 2)).2 hdiv
    have hsum : (n : ZMod (p ^ 2)) ^ 2 + 1 = 0 := by
      simpa [Nat.cast_add, Nat.cast_pow, Nat.cast_one] using hzero
    simpa using (eq_neg_of_add_eq_zero_left hsum)
  have hroot₁ : (certificate.root₁ : ZMod (p ^ 2)) ^ 2 = -1 :=
    root_eq_neg_one certificate.root₁_dvd
  have hroot₂ : (certificate.root₂ : ZMod (p ^ 2)) ^ 2 = -1 :=
    root_eq_neg_one certificate.root₂_dvd
  have hne :
      (certificate.root₁ : ZMod (p ^ 2)) ≠
        (certificate.root₂ : ZMod (p ^ 2)) := by
    intro heq
    have hmodEq : certificate.root₁ % (p ^ 2) =
        certificate.root₂ % (p ^ 2) :=
      (ZMod.natCast_eq_natCast_iff' certificate.root₁ certificate.root₂
        (p ^ 2)).1 heq
    rw [Nat.mod_eq_of_lt certificate.root₁_lt,
      Nat.mod_eq_of_lt certificate.root₂_lt] at hmodEq
    exact certificate.distinct hmodEq
  have hcases := diagonal_root_pair_complete hp hmod hne hroot₁ hroot₂
    (x : ZMod (p ^ 2)) (root_eq_neg_one hx)
  rcases hcases with h₁ | h₂
  · left
    have hmodEq :=
      (ZMod.natCast_eq_natCast_iff' x certificate.root₁ (p ^ 2)).1 h₁
    simpa [Nat.mod_eq_of_lt certificate.root₁_lt] using hmodEq
  · right
    have hmodEq :=
      (ZMod.natCast_eq_natCast_iff' x certificate.root₂ (p ^ 2)).1 h₂
    simpa [Nat.mod_eq_of_lt certificate.root₂_lt] using hmodEq

/-- Numerical payload for one concrete pair of diagonal roots. -/
structure DiagonalRootPairData where
  prime : ℕ
  root₁ : ℕ
  root₂ : ℕ
  quotient₁ : ℕ
  quotient₂ : ℕ
deriving Inhabited

namespace DiagonalRootPairData

/-- All local checks needed to turn numerical root data into a proof object. -/
def Valid (data : DiagonalRootPairData) : Prop :=
  data.root₁ < data.prime ^ 2 ∧
    data.root₂ < data.prime ^ 2 ∧
    data.root₁ ≠ data.root₂ ∧
    data.root₁ ^ 2 + 1 = data.prime ^ 2 * data.quotient₁ ∧
    data.root₂ ^ 2 + 1 = data.prime ^ 2 * data.quotient₂

instance validDecidable (data : DiagonalRootPairData) :
    Decidable data.Valid := by
  unfold Valid
  infer_instance

/-- Promote checked numerical root data to the proof-bearing interface. -/
def certificate (data : DiagonalRootPairData) (hvalid : data.Valid) :
    DiagonalRootPairCertificate data.prime where
  root₁ := data.root₁
  root₂ := data.root₂
  root₁_lt := hvalid.1
  root₂_lt := hvalid.2.1
  distinct := hvalid.2.2.1
  root₁_dvd := ⟨data.quotient₁, hvalid.2.2.2.1⟩
  root₂_dvd := ⟨data.quotient₂, hvalid.2.2.2.2⟩

end DiagonalRootPairData

/-- Balanced random-access tree for concrete root records.  Lookup unfolds
only one logarithmic path instead of replaying an array literal. -/
inductive DiagonalRootTree where
  | empty
  | leaf (data : DiagonalRootPairData)
  | node (size : ℕ) (left right : DiagonalRootTree)

namespace DiagonalRootTree

def size : DiagonalRootTree → ℕ
  | .empty => 0
  | .leaf _ => 1
  | .node totalSize _ _ => totalSize

def get : DiagonalRootTree → ℕ → DiagonalRootPairData
  | .empty, _ => default
  | .leaf data, 0 => data
  | .leaf _, _ + 1 => default
  | .node _ left right, index =>
      if index < left.size then left.get index
      else right.get (index - left.size)

end DiagonalRootTree

/-- A large natural-number array represented by independently compiled
chunks.  `size` is the logical length; all soundness theorems use total lookup
and the surrounding validity checks, so missing or malformed chunks fail
closed by returning zero. -/
structure ChunkedNatData where
  blockSize : ℕ
  size : ℕ
  blocks : Array (Array ℕ)

namespace ChunkedNatData

def get (data : ChunkedNatData) (index : ℕ) : ℕ :=
  let block := (data.blocks[index / data.blockSize]?).getD #[]
  (block[index % data.blockSize]?).getD 0

end ChunkedNatData

/-- Chunked storage for sparse diagonal-root records. -/
structure ChunkedDiagonalRootData where
  blockSize : ℕ
  size : ℕ
  blocks : Array (Array DiagonalRootPairData)

namespace ChunkedDiagonalRootData

def get (data : ChunkedDiagonalRootData) (index : ℕ) :
    DiagonalRootPairData :=
  let block := (data.blocks[index / data.blockSize]?).getD #[]
  (block[index % data.blockSize]?).getD default

end ChunkedDiagonalRootData

/-! #### Complete prime/root coverage

The coverage array has one natural-number code at every `n ≤ limit`.

* an even code `2*d` certifies that `d` is a proper divisor of `n`;
* an odd code at `n ≡ 1 (mod 4)` points (after division by two) to a checked
  diagonal-root pair whose prime field is exactly `n`;
* odd codes at the other residue classes need no root data.

Consequently a genuine prime congruent to one modulo four cannot take the
even branch and must have a complete root pair.  Notice that this argument
does not trust a producer-side primality test.
-/

/-- Composite witnesses at the only possible prime positions `4*k+1`, plus
sparse diagonal-root pairs. -/
structure PrimeRootCoverageData where
  limit : ℕ
  divisors : ChunkedNatData
  payloads : ChunkedNatData
  roots : DiagonalRootTree

namespace PrimeRootCoverageData

def divisorAt (data : PrimeRootCoverageData) (index : ℕ) : ℕ :=
  data.divisors.get index

/-- At a composite entry this is the exact quotient.  At a prime entry it is
one plus the sparse root index. -/
def payloadAt (data : PrimeRootCoverageData) (index : ℕ) : ℕ :=
  data.payloads.get index

def rootAt (data : PrimeRootCoverageData) (index : ℕ) :
    DiagonalRootPairData :=
  data.roots.get index

/-- Local validity from explicit divisor/payload values at index `k`. -/
def EntryValuesValid (data : PrimeRootCoverageData) (index divisor payload : ℕ) :
    Prop :=
  let n := 4 * index + 1
  if index = 0 then divisor = 0 ∧ payload = 0
  else if divisor = 0 then
    0 < payload ∧
      payload - 1 < data.roots.size ∧
      (data.rootAt (payload - 1)).prime = n
  else
    1 < divisor ∧ divisor < n ∧ divisor * payload = n

instance entryValuesValidDecidable (data : PrimeRootCoverageData)
    (index divisor payload : ℕ) :
    Decidable (data.EntryValuesValid index divisor payload) := by
  unfold EntryValuesValid
  infer_instance

/-! #### Proof-tree coverage

Unlike a random-access array, a proof tree consumes each numerical leaf
exactly once during kernel reduction. -/

inductive PrimeCoverageTree where
  | leaf (divisor payload : ℕ)
  | node (size : ℕ) (left right : PrimeCoverageTree)

namespace PrimeCoverageTree

def size : PrimeCoverageTree → ℕ
  | .leaf _ _ => 1
  | .node totalSize _ _ => totalSize

def check (data : PrimeRootCoverageData) (start : ℕ) :
    PrimeCoverageTree → Bool
  | .leaf divisor payload =>
      decide (data.EntryValuesValid start divisor payload)
  | .node totalSize left right =>
      decide (totalSize = left.size + right.size) &&
        (left.check data start && right.check data (start + left.size))

/-- A checked tree supplies a valid explicit entry at every represented
offset. -/
theorem entry {data : PrimeRootCoverageData} {start : ℕ}
    {tree : PrimeCoverageTree} (hcheck : tree.check data start = true) :
    ∀ offset, offset < tree.size →
      ∃ divisor payload,
        data.EntryValuesValid (start + offset) divisor payload := by
  induction tree generalizing start with
  | leaf divisor payload =>
      intro offset hoffset
      have hoffsetZero : offset = 0 := by simpa [size] using hoffset
      subst offset
      exact ⟨divisor, payload, by
        simpa [check] using of_decide_eq_true hcheck⟩
  | node totalSize left right ihLeft ihRight =>
      have hnode := Bool.and_eq_true_iff.mp hcheck
      have hsize : totalSize = left.size + right.size :=
        of_decide_eq_true hnode.1
      have hand := Bool.and_eq_true_iff.mp hnode.2
      intro offset hoffset
      by_cases hleft : offset < left.size
      · obtain ⟨divisor, payload, hentry⟩ :=
          ihLeft hand.1 offset hleft
        exact ⟨divisor, payload, hentry⟩
      · let rightOffset := offset - left.size
        have hrightOffset : rightOffset < right.size := by
          simp only [size] at hoffset
          rw [hsize] at hoffset
          omega
        obtain ⟨divisor, payload, hentry⟩ :=
          ihRight hand.2 rightOffset hrightOffset
        refine ⟨divisor, payload, ?_⟩
        simpa [rightOffset, Nat.add_assoc, Nat.add_sub_of_le
          (Nat.le_of_not_gt hleft)] using hentry

end PrimeCoverageTree

/-- Every index in one half-open interval has explicit valid entry values. -/
def PrimeCoverageRange (data : PrimeRootCoverageData)
    (start stop : ℕ) : Prop :=
  ∀ index, start ≤ index → index < stop →
    ∃ divisor payload, data.EntryValuesValid index divisor payload

/-- A checked proof tree establishes coverage of its exact interval. -/
theorem PrimeCoverageTree.range {data : PrimeRootCoverageData} {start : ℕ}
    {tree : PrimeCoverageTree} (hcheck : tree.check data start = true) :
    PrimeCoverageRange data start (start + tree.size) := by
  intro index hstart hstop
  let offset := index - start
  have hoffset : offset < tree.size := by omega
  obtain ⟨divisor, payload, hentry⟩ := tree.entry hcheck offset hoffset
  refine ⟨divisor, payload, ?_⟩
  simpa [offset, Nat.add_sub_of_le hstart] using hentry

theorem PrimeCoverageRange.append {data : PrimeRootCoverageData}
    {start middle stop : ℕ}
    (hleft : PrimeCoverageRange data start middle)
    (hright : PrimeCoverageRange data middle stop) :
    PrimeCoverageRange data start stop := by
  intro index hstart hstop
  by_cases hmiddle : index < middle
  · exact hleft index hstart hmiddle
  · exact hright index (Nat.le_of_not_gt hmiddle) hstop

/-- Complete tree coverage of every possible `4*k+1` witness. -/
def TreeCovered (data : PrimeRootCoverageData) : Prop :=
  PrimeCoverageRange data 0 ((data.limit + 3) / 4)

/-- Local validity at index `k`, using the global chunked arrays. -/
def EntryValid (data : PrimeRootCoverageData) (index : ℕ) : Prop :=
  data.EntryValuesValid index (data.divisorAt index) (data.payloadAt index)

instance entryValidDecidable (data : PrimeRootCoverageData) (n : ℕ) :
    Decidable (data.EntryValid n) := by
  unfold EntryValid
  infer_instance

/-- Total natural lookup into one local generated array. -/
def localNatAt (values : Array ℕ) (index : ℕ) : ℕ :=
  (values[index]?).getD 0

/-- Balanced reflection over a local data chunk.  `chunkBase + localIndex` is
the represented global coverage index. -/
def LocalBinaryRangeValid (data : PrimeRootCoverageData) (chunkBase : ℕ)
    (divisors payloads : Array ℕ) (localStart depth : ℕ) : Prop :=
  allNatBinary (fun localIndex => decide <|
    data.EntryValuesValid (chunkBase + localIndex)
      (localNatAt divisors localIndex) (localNatAt payloads localIndex))
    localStart depth = true

instance localBinaryRangeValidDecidable (data : PrimeRootCoverageData)
    (chunkBase : ℕ) (divisors payloads : Array ℕ)
    (localStart depth : ℕ) :
    Decidable (data.LocalBinaryRangeValid chunkBase divisors payloads
      localStart depth) := by
  unfold LocalBinaryRangeValid
  infer_instance

/-- Kernel-checkable validity on a half-open interval of dense entries. -/
def RangeValid (data : PrimeRootCoverageData) (start stop : ℕ) : Prop :=
  allNatRange (fun n => decide (data.EntryValid n))
    start (stop - start) = true

instance rangeValidDecidable (data : PrimeRootCoverageData)
    (start stop : ℕ) : Decidable (data.RangeValid start stop) := by
  unfold RangeValid
  infer_instance

/-- Balanced kernel-reflection block of length `2^depth`. -/
def BinaryRangeValid (data : PrimeRootCoverageData)
    (start depth : ℕ) : Prop :=
  allNatBinary (fun index => decide (data.EntryValid index)) start depth = true

instance binaryRangeValidDecidable (data : PrimeRootCoverageData)
    (start depth : ℕ) : Decidable (data.BinaryRangeValid start depth) := by
  unfold BinaryRangeValid
  infer_instance

/-- Convert a balanced reflected block into the composable range interface. -/
theorem BinaryRangeValid.toRange {data : PrimeRootCoverageData}
    {start depth : ℕ} (hvalid : data.BinaryRangeValid start depth) :
    data.RangeValid start (start + 2 ^ depth) := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hstart hstop
  exact (allNatBinary_eq_true_iff _ _ _).mp hvalid index hstart (by omega)

/-- Soundness bridge from a locally reflected generated chunk to the global
chunked table.  The two lookup premises are algebraic index equalities; they
do not re-run the numerical certificate. -/
theorem LocalBinaryRangeValid.toRange
    {data : PrimeRootCoverageData} {chunkBase : ℕ}
    {divisors payloads : Array ℕ} {localStart depth : ℕ}
    (hvalid : data.LocalBinaryRangeValid chunkBase divisors payloads
      localStart depth)
    (hdivisor : ∀ localIndex,
      localStart ≤ localIndex → localIndex < localStart + 2 ^ depth →
      data.divisorAt (chunkBase + localIndex) = localNatAt divisors localIndex)
    (hpayload : ∀ localIndex,
      localStart ≤ localIndex → localIndex < localStart + 2 ^ depth →
      data.payloadAt (chunkBase + localIndex) = localNatAt payloads localIndex) :
    data.RangeValid (chunkBase + localStart)
      (chunkBase + localStart + 2 ^ depth) := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hstart hstop
  have hchunkBase : chunkBase ≤ index := by omega
  let localIndex := index - chunkBase
  have hlocalStart : localStart ≤ localIndex := by omega
  have hlocalStop : localIndex < localStart + 2 ^ depth := by omega
  have hraw := (allNatBinary_eq_true_iff _ _ _).mp hvalid localIndex
    hlocalStart hlocalStop
  have hindex : chunkBase + localIndex = index :=
    Nat.add_sub_of_le hchunkBase
  have hd := hdivisor localIndex hlocalStart hlocalStop
  have hq := hpayload localIndex hlocalStart hlocalStop
  rw [hindex] at hd hq
  have hrawProp := of_decide_eq_true hraw
  simp only [hindex] at hrawProp
  rw [← hd, ← hq] at hrawProp
  apply decide_eq_true_eq.mpr
  simpa [EntryValid] using hrawProp

/-- The dense array covers exactly the declared interval. -/
def Valid (data : PrimeRootCoverageData) : Prop :=
  data.divisors.size = (data.limit + 3) / 4 ∧
    data.payloads.size = data.divisors.size ∧
    data.RangeValid 0 data.divisors.size

instance validDecidable (data : PrimeRootCoverageData) :
    Decidable data.Valid := by
  unfold Valid
  infer_instance

theorem RangeValid.entryValid {data : PrimeRootCoverageData}
    {start stop n : ℕ} (hvalid : data.RangeValid start stop)
    (hstart : start ≤ n) (hstop : n < stop) : data.EntryValid n := by
  apply of_decide_eq_true
  exact (allNatRange_eq_true_iff _ _ _).mp hvalid n hstart (by omega)

theorem RangeValid.append {data : PrimeRootCoverageData}
    {start middle stop : ℕ}
    (hleft : data.RangeValid start middle)
    (hright : data.RangeValid middle stop) :
    data.RangeValid start stop := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hindexStart hindexStop
  by_cases hmiddle : index < middle
  · exact decide_eq_true_eq.mpr <|
      hleft.entryValid hindexStart hmiddle
  · exact decide_eq_true_eq.mpr <|
      hright.entryValid (Nat.le_of_not_gt hmiddle) (by omega)

/-- Extract the checked root pair belonging to any actual prime in the
covered interval.  The contradiction in the composite branch is purely the
definition of primality: a prime has no proper divisor. -/
theorem rootPairAtPrimeFromArray {data : PrimeRootCoverageData} (hvalid : data.Valid)
    {p : ℕ} (hp : Nat.Prime p) (hpLimit : p ≤ data.limit)
    (hmod : p % 4 = 1) :
    ∃ index : ℕ,
      index < data.roots.size ∧
      (data.rootAt index).prime = p := by
  have hpIndexSize : p / 4 < data.divisors.size := by
    rw [hvalid.1]
    have hpDecomp : p = 4 * (p / 4) + 1 := by
      have := Nat.mod_add_div p 4
      omega
    have hmul : (p / 4 + 1) * 4 ≤ data.limit + 3 := by omega
    have hquot : p / 4 + 1 ≤ (data.limit + 3) / 4 :=
      (Nat.le_div_iff_mul_le (by norm_num : 0 < 4)).2 hmul
    omega
  have hpDecomp : p = 4 * (p / 4) + 1 := by
    have := Nat.mod_add_div p 4
    omega
  have hindexNe : p / 4 ≠ 0 := by
    intro hzero
    have : p = 1 := by omega
    exact hp.ne_one this
  have hentry : data.EntryValid (p / 4) :=
    hvalid.2.2.entryValid (Nat.zero_le (p / 4)) hpIndexSize
  let divisor := data.divisorAt (p / 4)
  let payload := data.payloadAt (p / 4)
  by_cases hcomposite : divisor ≠ 0
  · have hfactor :
        1 < divisor ∧ divisor < p ∧ divisor * payload = p := by
      simpa [EntryValid, divisor, payload, hindexNe, hcomposite,
        EntryValuesValid, ← hpDecomp] using hentry
    have hdivisorDvd : divisor ∣ p := ⟨payload, hfactor.2.2.symm⟩
    rcases (Nat.dvd_prime hp).mp hdivisorDvd with hone | hself
    · omega
    · omega
  · refine ⟨payload - 1, ?_⟩
    have hzero : divisor = 0 := Classical.not_not.mp hcomposite
    have hprimeEntry :
        0 < payload ∧ payload - 1 < data.roots.size ∧
          (data.rootAt (payload - 1)).prime = p := by
      simpa [EntryValid, divisor, payload, hindexNe,
        EntryValuesValid, hzero, ← hpDecomp] using hentry
    exact hprimeEntry.2

/-- Extract the root pair from proof-tree coverage, without trusting or
evaluating a global random-access composite table. -/
theorem rootPairAtPrime {data : PrimeRootCoverageData}
    (hcovered : data.TreeCovered)
    {p : ℕ} (hp : Nat.Prime p) (hpLimit : p ≤ data.limit)
    (hmod : p % 4 = 1) :
    ∃ index : ℕ,
      index < data.roots.size ∧
      (data.rootAt index).prime = p := by
  have hpDecomp : p = 4 * (p / 4) + 1 := by
    have := Nat.mod_add_div p 4
    omega
  have hpIndexLimit : p / 4 < (data.limit + 3) / 4 := by
    have hmul : (p / 4 + 1) * 4 ≤ data.limit + 3 := by omega
    have hquot : p / 4 + 1 ≤ (data.limit + 3) / 4 :=
      (Nat.le_div_iff_mul_le (by norm_num : 0 < 4)).2 hmul
    omega
  have hindexNe : p / 4 ≠ 0 := by
    intro hzero
    have : p = 1 := by omega
    exact hp.ne_one this
  obtain ⟨divisor, payload, hentry⟩ :=
    hcovered (p / 4) (Nat.zero_le (p / 4)) hpIndexLimit
  by_cases hzero : divisor = 0
  · have hprimeEntry :
        0 < payload ∧ payload - 1 < data.roots.size ∧
          (data.rootAt (payload - 1)).prime = p := by
      simpa [EntryValuesValid, hindexNe, hzero, ← hpDecomp] using hentry
    exact ⟨payload - 1, hprimeEntry.2⟩
  · have hfactor :
        1 < divisor ∧ divisor < p ∧ divisor * payload = p := by
      simpa [EntryValuesValid, hindexNe, hzero, ← hpDecomp] using hentry
    have hdivisorDvd : divisor ∣ p := ⟨payload, hfactor.2.2.symm⟩
    rcases (Nat.dvd_prime hp).mp hdivisorDvd with hone | hself
    · omega
    · omega

end PrimeRootCoverageData

/-! #### Marking every root progression

The dense marker is allowed to contain extra vertices.  Soundness only needs
the one-sided statement that every nonsquarefree diagonal vertex is marked;
extra marked vertices merely make the colouring certificate stronger.  Root
progressions are checked in their compact arithmetic-progression form, so the
work is proportional to the actual number of hits rather than
`limit × numberOfPrimes`.
-/

/-! A balanced search tree avoids repeatedly unfolding a large dense array
when the small-prime progressions make many membership queries. -/

inductive NatSetTree where
  | empty
  | node (value : ℕ) (left right : NatSetTree)

namespace NatSetTree

def contains (tree : NatSetTree) (n : ℕ) : Bool :=
  match tree with
  | .empty => false
  | .node value left right =>
      if n < value then left.contains n
      else if n = value then true
      else right.contains n

end NatSetTree

/-- Independently compiled search-tree chunks, routed by split keys.  This
keeps a full-prefix marker from becoming one monolithic Lean declaration. -/
inductive NatSetForest where
  | empty
  | leaf (values : NatSetTree)
  | node (split : ℕ) (left right : NatSetForest)

namespace NatSetForest

def contains (forest : NatSetForest) (n : ℕ) : Bool :=
  match forest with
  | .empty => false
  | .leaf values => values.contains n
  | .node split left right =>
      if n < split then left.contains n else right.contains n

end NatSetForest

/-- Search-tree marker for the vertices replayed by the prefix trace. -/
structure DiagonalMarkerData where
  limit : ℕ
  values : NatSetForest

namespace DiagonalMarkerData

def marked (data : DiagonalMarkerData) (n : ℕ) : Bool :=
  data.values.contains n

def Valid (_data : DiagonalMarkerData) : Prop :=
  True

instance validDecidable (data : DiagonalMarkerData) :
    Decidable data.Valid := by
  unfold Valid
  infer_instance

/-- Every in-range member of one residue progression is marked. -/
def ResidueMarked (data : DiagonalMarkerData) (modulus residue : ℕ) : Prop :=
  if residue ≤ data.limit then
    ((List.range ((data.limit - residue) / modulus + 1)).all fun k =>
      data.marked (residue + modulus * k)) = true
  else True

instance residueMarkedDecidable (data : DiagonalMarkerData)
    (modulus residue : ℕ) : Decidable (data.ResidueMarked modulus residue) := by
  unfold ResidueMarked
  infer_instance

/-- Arithmetic soundness of the compact progression check. -/
theorem marked_of_mod_eq {data : DiagonalMarkerData} {modulus residue x : ℕ}
    (hmodulus : 0 < modulus) (_hresidue : residue < modulus)
    (hxLimit : x ≤ data.limit) (hxmod : x % modulus = residue)
    (hmarked : data.ResidueMarked modulus residue) :
    data.marked x = true := by
  have hresidueLimit : residue ≤ data.limit := by
    rw [← hxmod]
    exact (Nat.mod_le x modulus).trans hxLimit
  rw [ResidueMarked, if_pos hresidueLimit] at hmarked
  have hxdecomp : x = residue + modulus * (x / modulus) := by
    calc
      x = x % modulus + modulus * (x / modulus) :=
        (Nat.mod_add_div x modulus).symm
      _ = residue + modulus * (x / modulus) := by rw [hxmod]
  have hmulLe : modulus * (x / modulus) ≤ data.limit - residue := by
    omega
  have hquotLe : x / modulus ≤ (data.limit - residue) / modulus :=
    (Nat.le_div_iff_mul_le hmodulus).2 <| by
      simpa [Nat.mul_comm] using hmulLe
  have hquotMem : x / modulus ∈
      List.range ((data.limit - residue) / modulus + 1) :=
    List.mem_range.mpr (Nat.lt_succ_of_le hquotLe)
  have hchecked := (List.all_eq_true.mp hmarked) (x / modulus) hquotMem
  calc
    data.marked x =
        data.marked (residue + modulus * (x / modulus)) :=
      congrArg data.marked hxdecomp
    _ = true := hchecked

/-- Both progressions belonging to one concrete root pair are marked. -/
def RootPairMarked (marker : DiagonalMarkerData)
    (rootData : DiagonalRootPairData) : Prop :=
  marker.ResidueMarked (rootData.prime ^ 2) rootData.root₁ ∧
    marker.ResidueMarked (rootData.prime ^ 2) rootData.root₂

instance rootPairMarkedDecidable (marker : DiagonalMarkerData)
    (rootData : DiagonalRootPairData) :
    Decidable (marker.RootPairMarked rootData) := by
  unfold RootPairMarked
  infer_instance

end DiagonalMarkerData

/-- The sparse root block checks each large root-square divisibility exactly
once, together with the two compact progression scans. -/
def RootRecordValid (marker : DiagonalMarkerData)
    (rootData : DiagonalRootPairData) : Prop :=
  rootData.Valid ∧ marker.RootPairMarked rootData

instance rootRecordValidDecidable (marker : DiagonalMarkerData)
    (rootData : DiagonalRootPairData) :
    Decidable (RootRecordValid marker rootData) := by
  unfold RootRecordValid
  infer_instance

namespace DiagonalRootTree

/-- Structural validity consumes each root record exactly once.  In
particular it never performs repeated random access into a global payload. -/
def Valid (marker : DiagonalMarkerData) : DiagonalRootTree → Prop
  | .empty => True
  | .leaf data => RootRecordValid marker data
  | .node totalSize left right =>
      totalSize = left.size + right.size ∧
        left.Valid marker ∧ right.Valid marker

instance validDecidable (marker : DiagonalMarkerData) :
    (tree : DiagonalRootTree) → Decidable (tree.Valid marker)
  | .empty => isTrue trivial
  | .leaf data => rootRecordValidDecidable marker data
  | .node totalSize left right =>
      match validDecidable marker left, validDecidable marker right with
      | isTrue hleft, isTrue hright =>
          if hsize : totalSize = left.size + right.size then
            isTrue ⟨hsize, hleft, hright⟩
          else
            isFalse fun hvalid => hsize hvalid.1
      | isFalse hleft, _ => isFalse fun hvalid => hleft hvalid.2.1
      | _, isFalse hright => isFalse fun hvalid => hright hvalid.2.2

/-- Structural validity is sound for logarithmic tree lookup. -/
theorem valid_get {marker : DiagonalMarkerData} {tree : DiagonalRootTree}
    (hvalid : tree.Valid marker) {index : ℕ} (hindex : index < tree.size) :
    RootRecordValid marker (tree.get index) := by
  induction tree generalizing index with
  | empty => simp [size] at hindex
  | leaf data =>
      have hzero : index = 0 := by simpa [size] using hindex
      subst index
      simpa [Valid, get] using hvalid
  | node totalSize left right hleft hright =>
      simp only [Valid] at hvalid
      change index < totalSize at hindex
      rw [hvalid.1] at hindex
      by_cases hinLeft : index < left.size
      · simpa [get, hinLeft] using hleft hvalid.2.1 hinLeft
      · have hinRight : index - left.size < right.size := by omega
        simpa [get, hinLeft] using hright hvalid.2.2 hinRight

end DiagonalRootTree

/-- All sparse root records have checked roots and marked progressions. -/
def RootProgressionsValid (coverage : PrimeRootCoverageData)
    (marker : DiagonalMarkerData) : Prop :=
  coverage.roots.Valid marker

instance rootProgressionsValidDecidable (coverage : PrimeRootCoverageData)
    (marker : DiagonalMarkerData) :
    Decidable (RootProgressionsValid coverage marker) := by
  unfold RootProgressionsValid
  infer_instance

theorem rootRecordValidAt {coverage : PrimeRootCoverageData}
    {marker : DiagonalMarkerData}
    (hvalid : RootProgressionsValid coverage marker) {index : ℕ}
    (hindex : index < coverage.roots.size) :
    RootRecordValid marker (coverage.rootAt index) := by
  exact DiagonalRootTree.valid_get hvalid hindex

/-- Complete one-sided diagonal coverage used by the trace checker. -/
structure DiagonalCoverageCertificate where
  coverage : PrimeRootCoverageData
  marker : DiagonalMarkerData
  coverageValid : coverage.TreeCovered
  markerValid : marker.Valid
  sameLimit : marker.limit = coverage.limit
  progressionsValid : RootProgressionsValid coverage marker

/-- The root-table and progression checks imply that every nonsquarefree
diagonal vertex in the covered interval is marked. -/
theorem DiagonalCoverageCertificate.marked_of_not_squarefree
    (certificate : DiagonalCoverageCertificate) {x : ℕ}
    (hxPositive : 1 ≤ x) (hxLimit : x ≤ certificate.marker.limit)
    (hnsq : ¬ Squarefree (x ^ 2 + 1)) :
    certificate.marker.marked x = true := by
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
  have hrecordValid : RootRecordValid certificate.marker rootData := by
    simpa [rootData] using
      rootRecordValidAt certificate.progressionsValid hindex
  have hrootValid' : rootData.Valid := hrecordValid.1
  have hpairMarked : certificate.marker.RootPairMarked rootData :=
    hrecordValid.2
  have hpRoot : Nat.Prime rootData.prime := hprime' ▸ hp
  have hpRootMod : rootData.prime % 4 = 1 := hprime' ▸ hpModFour
  have hxRootDiv : rootData.prime ^ 2 ∣ x ^ 2 + 1 := hprime' ▸ hpSquare
  have hrootCases :=
    (rootData.certificate hrootValid').complete hpRoot hpRootMod hxRootDiv
  rcases hrootCases with hroot₁ | hroot₂
  · exact DiagonalMarkerData.marked_of_mod_eq
      (pow_pos hpRoot.pos 2) hrootValid'.1 hxLimit hroot₁ hpairMarked.1
  · exact DiagonalMarkerData.marked_of_mod_eq
      (pow_pos hpRoot.pos 2) hrootValid'.2.1 hxLimit hroot₂ hpairMarked.2

/-- A product of distinct primes is squarefree. -/
theorem squarefree_list_prod_of_prime_nodup (factors : List ℕ)
    (hprimes : ∀ p ∈ factors, Nat.Prime p) (hnodup : factors.Nodup) :
    Squarefree factors.prod := by
  induction factors with
  | nil => simp
  | cons p factors ih =>
      have hp : Nat.Prime p := hprimes p (by simp)
      have htailPrimes : ∀ q ∈ factors, Nat.Prime q :=
        fun q hq => hprimes q (List.mem_cons_of_mem p hq)
      have hnotmem : p ∉ factors := (List.nodup_cons.mp hnodup).1
      have htailNodup : factors.Nodup := (List.nodup_cons.mp hnodup).2
      have hcoprime : p.Coprime factors.prod :=
        Nat.coprime_list_prod_right_iff.mpr fun q hq =>
          hp.coprime_iff_not_dvd.mpr fun hpd => by
            have hpq : p = q :=
              (Nat.dvd_prime (htailPrimes q hq)).mp hpd |>.resolve_left hp.ne_one
            exact hnotmem (hpq ▸ hq)
      rw [List.prod_cons]
      exact (Nat.squarefree_mul hcoprime).2
        ⟨hp.squarefree, ih htailPrimes htailNodup⟩

/-- Numerical factorization data referring to the shared Pratt table. -/
structure SquarefreeFactorData where
  value : ℕ
  factorIndices : List ℕ
deriving Inhabited

namespace SquarefreeFactorData

def factors (data : SquarefreeFactorData) (table : PrattTableData) : List ℕ :=
  data.factorIndices.map fun index => (table.nodeAt index).value

def Valid (data : SquarefreeFactorData) (table : PrattTableData) : Prop :=
  (data.factorIndices.all fun index => decide (index < table.nodes.size)) = true ∧
    (data.factors table).prod = data.value ∧
    (data.factors table).Nodup

instance validDecidable (data : SquarefreeFactorData) (table : PrattTableData) :
    Decidable (data.Valid table) := by
  unfold Valid
  infer_instance

end SquarefreeFactorData

/-- A factorization payload for one cross-product used by the colouring. -/
structure SquarefreeFactorCertificate (n : ℕ) where
  factors : List ℕ
  product_eq : factors.prod = n
  factorPrimes : ∀ p ∈ factors, Nat.Prime p
  nodup : factors.Nodup

/-- Soundness of a cross-product factorization payload. -/
theorem SquarefreeFactorCertificate.squarefree {n : ℕ}
    (certificate : SquarefreeFactorCertificate n) : Squarefree n := by
  rw [← certificate.product_eq]
  exact squarefree_list_prod_of_prime_nodup certificate.factors
    certificate.factorPrimes certificate.nodup

/-- Convert untrusted numerical factor data using the checked shared Pratt
table. -/
def SquarefreeFactorData.certificate (data : SquarefreeFactorData)
    (table : PrattTableData) (htable : table.Valid) (hvalid : data.Valid table) :
    SquarefreeFactorCertificate data.value where
  factors := data.factors table
  product_eq := hvalid.2.1
  factorPrimes := by
    intro p hp
    rcases List.mem_map.mp hp with ⟨index, hindex, rfl⟩
    apply table.primeAt htable
    exact of_decide_eq_true <| (List.all_eq_true.mp hvalid.1) index hindex
  nodup := hvalid.2.2

/-- Balanced search tree for unique factorization records. -/
inductive SquarefreeFactorTree where
  | empty
  | node (data : SquarefreeFactorData)
      (left right : SquarefreeFactorTree)

namespace SquarefreeFactorTree

def find : SquarefreeFactorTree → ℕ → Option SquarefreeFactorData
  | .empty, _ => none
  | .node data left right, value =>
      if value < data.value then left.find value
      else if value = data.value then some data
      else right.find value

def Valid (table : PrattTableData) : SquarefreeFactorTree → Prop
  | .empty => True
  | .node data left right =>
      data.Valid table ∧ left.Valid table ∧ right.Valid table

instance validDecidable (table : PrattTableData) :
    (tree : SquarefreeFactorTree) → Decidable (tree.Valid table)
  | .empty => isTrue trivial
  | .node data left right =>
      match SquarefreeFactorData.validDecidable data table,
          validDecidable table left, validDecidable table right with
      | isTrue hdata, isTrue hleft, isTrue hright =>
          isTrue ⟨hdata, hleft, hright⟩
      | isFalse hdata, _, _ => isFalse fun hvalid => hdata hvalid.1
      | _, isFalse hleft, _ => isFalse fun hvalid => hleft hvalid.2.1
      | _, _, isFalse hright => isFalse fun hvalid => hright hvalid.2.2

theorem valid_of_find {table : PrattTableData} {tree : SquarefreeFactorTree}
    (hvalid : tree.Valid table) {value : ℕ} {data : SquarefreeFactorData}
    (hfind : tree.find value = some data) : data.Valid table := by
  induction tree with
  | empty => simp [find] at hfind
  | node current left right hleft hright =>
      simp only [Valid] at hvalid
      by_cases hlt : value < current.value
      · exact hleft hvalid.2.1 (by simpa [find, hlt] using hfind)
      · by_cases heq : value = current.value
        · have hcurrent : current = data := by
            simpa [find, hlt, heq] using hfind
          exact hcurrent ▸ hvalid.1
        · exact hright hvalid.2.2 (by simpa [find, hlt, heq] using hfind)

end SquarefreeFactorTree

/-- Independently compiled factor-map chunks routed by their first keys. -/
inductive SquarefreeFactorForest where
  | empty
  | leaf (tree : SquarefreeFactorTree)
  | node (split : ℕ) (left right : SquarefreeFactorForest)

namespace SquarefreeFactorForest

def find : SquarefreeFactorForest → ℕ → Option SquarefreeFactorData
  | .empty, _ => none
  | .leaf tree, value => tree.find value
  | .node split left right, value =>
      if value < split then left.find value else right.find value

def Valid (table : PrattTableData) : SquarefreeFactorForest → Prop
  | .empty => True
  | .leaf tree => tree.Valid table
  | .node _ left right => left.Valid table ∧ right.Valid table

instance validDecidable (table : PrattTableData) :
    (forest : SquarefreeFactorForest) → Decidable (forest.Valid table)
  | .empty => isTrue trivial
  | .leaf tree => SquarefreeFactorTree.validDecidable table tree
  | .node _ left right =>
      match validDecidable table left, validDecidable table right with
      | isTrue hleft, isTrue hright => isTrue ⟨hleft, hright⟩
      | isFalse hleft, _ => isFalse fun hvalid => hleft hvalid.1
      | _, isFalse hright => isFalse fun hvalid => hright hvalid.2

theorem valid_of_find {table : PrattTableData}
    {forest : SquarefreeFactorForest} (hvalid : forest.Valid table)
    {value : ℕ} {data : SquarefreeFactorData}
    (hfind : forest.find value = some data) : data.Valid table := by
  induction forest with
  | empty => simp [find] at hfind
  | leaf tree =>
      exact SquarefreeFactorTree.valid_of_find hvalid (by simpa [find] using hfind)
  | node split left right hleft hright =>
      simp only [Valid] at hvalid
      by_cases hlt : value < split
      · exact hleft hvalid.1 (by simpa [find, hlt] using hfind)
      · exact hright hvalid.2 (by simpa [find, hlt] using hfind)

end SquarefreeFactorForest

end Erdos848
