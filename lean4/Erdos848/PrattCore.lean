import Mathlib.Data.Nat.Bits
import Mathlib.NumberTheory.LucasPrimality

namespace Erdos848

/-! ### A memory-bounded kernel range fold -/

/-- Check a consecutive natural-number interval without first allocating a
`List.range`. -/
def allNatRange (predicate : ℕ → Bool) (start : ℕ) : ℕ → Bool
  | 0 => true
  | count + 1 => predicate start && allNatRange predicate (start + 1) count

/-- Logical extraction rule for the structural range checker. -/
theorem allNatRange_eq_true_iff (predicate : ℕ → Bool) (start count : ℕ) :
    allNatRange predicate start count = true ↔
      ∀ index, start ≤ index → index < start + count → predicate index = true := by
  induction count generalizing start with
  | zero =>
      constructor
      · intro _ index hstart hstop
        omega
      · intro _
        rfl
  | succ count ih =>
      constructor
      · intro h index hstart hstop
        have hand := Bool.and_eq_true_iff.mp h
        by_cases hindex : index = start
        · simpa [hindex] using hand.1
        · exact (ih (start + 1)).mp hand.2 index (by omega) (by omega)
      · intro h
        apply Bool.and_eq_true_iff.mpr
        refine ⟨h start (Nat.le_refl start) (by omega), ?_⟩
        apply (ih (start + 1)).mpr
        intro index hstart hstop
        exact h index (by omega) (by omega)

/-- A balanced checker for an interval of length `2^depth`.  Its reduction
tree has logarithmic depth, which is essential for large kernel certificates. -/
def allNatBinary (predicate : ℕ → Bool) (start : ℕ) : ℕ → Bool
  | 0 => predicate start
  | depth + 1 =>
      allNatBinary predicate start depth &&
        allNatBinary predicate (start + 2 ^ depth) depth

/-- Logical extraction rule for the balanced checker. -/
theorem allNatBinary_eq_true_iff (predicate : ℕ → Bool)
    (start depth : ℕ) :
    allNatBinary predicate start depth = true ↔
      ∀ index, start ≤ index → index < start + 2 ^ depth →
        predicate index = true := by
  induction depth generalizing start with
  | zero =>
      constructor
      · intro h index hstart hstop
        have hindex : index = start := by omega
        simpa [allNatBinary, hindex] using h
      · intro h
        exact h start (Nat.le_refl start) (by norm_num)
  | succ depth ih =>
      have hpow : 2 ^ (depth + 1) = 2 ^ depth + 2 ^ depth := by
        rw [pow_succ]
        omega
      constructor
      · intro h index hstart hstop
        have hand := Bool.and_eq_true_iff.mp h
        by_cases hleft : index < start + 2 ^ depth
        · exact (ih start).mp hand.1 index hstart hleft
        · exact (ih (start + 2 ^ depth)).mp hand.2 index
            (Nat.le_of_not_gt hleft) (by omega)
      · intro h
        apply Bool.and_eq_true_iff.mpr
        constructor
        · apply (ih start).mpr
          intro index hstart hstop
          exact h index hstart (by omega)
        · apply (ih (start + 2 ^ depth)).mpr
          intro index hstart hstop
          exact h index (by omega) (by omega)

/-! ## Kernel-only arithmetic certificates for the finite prefix

The finite-prefix payload contains factorizations of every cross-product that
the online colouring uses.  Large prime factors are not discharged by
`native_decide`: they are proved through Lucas/Pratt certificates, whose
modular-power equalities are ordinary Lean proof terms.  This file contains
only the reusable soundness layer; generated numerical payload belongs in a
separate public certificate module.
-/

/-! ### Compact modular-power reflection -/

/-- Repeated-squaring evaluation over a least-significant-bit-first exponent.
The recursion is structural on the bit list, so concrete certificates reduce
in the kernel without `native_decide`. -/
def powModBits (a modulus : ℕ) : List Bool → ℕ
  | [] => 1 % modulus
  | bit :: bits =>
      let half := powModBits a modulus bits
      let square := half * half % modulus
      if bit then square * a % modulus else square

/-- Natural value of a least-significant-bit-first Boolean list. -/
def bitsValue : List Bool → ℕ
  | [] => 0
  | bit :: bits => bitsValue bits * 2 + if bit then 1 else 0

/-- `Nat.bits` and `bitsValue` are inverse in the direction needed by the
certificate checker. -/
theorem bitsValue_bits (n : ℕ) : bitsValue n.bits = n := by
  induction n using Nat.binaryRec' with
  | zero => simp [bitsValue]
  | bit bit n h ih =>
      rw [Nat.bits_append_bit n bit h]
      cases bit <;> simp [bitsValue, ih, Nat.bit, Nat.mul_comm]

/-- Kernel soundness of the compact repeated-squaring evaluator. -/
theorem powModBits_cast (a modulus : ℕ) (bits : List Bool) :
    (powModBits a modulus bits : ZMod modulus) =
      (a : ZMod modulus) ^ bitsValue bits := by
  induction bits with
  | nil => simp [powModBits, bitsValue, ZMod.natCast_mod]
  | cons bit bits ih =>
      cases bit
      · simp only [powModBits, bitsValue, Bool.false_eq_true, if_false,
          ZMod.natCast_mod, Nat.cast_mul, ih]
        rw [Nat.add_zero, pow_mul, pow_two]
      · simp only [powModBits, bitsValue, if_true, ZMod.natCast_mod,
          Nat.cast_mul, ih]
        rw [pow_add, pow_mul, pow_two, pow_one]

/-- The repeated-squaring result is reduced modulo a positive modulus. -/
theorem powModBits_lt (a modulus : ℕ) (hmodulus : 0 < modulus) :
  ∀ bits, powModBits a modulus bits < modulus
  | [] => Nat.mod_lt _ hmodulus
  | bit :: bits => by
      cases bit <;> simp only [powModBits] <;>
        exact Nat.mod_lt _ hmodulus

/-- Repeated-squaring modular exponentiation driven directly by Lean's binary
representation of a natural exponent. -/
def powMod (base exponent modulus : ℕ) : ℕ :=
  powModBits base modulus exponent.bits

/-- Kernel soundness of `powMod`. -/
theorem powMod_cast (base exponent modulus : ℕ) :
    (powMod base exponent modulus : ZMod modulus) =
      (base : ZMod modulus) ^ exponent := by
  rw [powMod, powModBits_cast, bitsValue_bits]

/-- A modular-power result is reduced modulo a positive modulus. -/
theorem powMod_lt (base exponent modulus : ℕ) (hmodulus : 0 < modulus) :
    powMod base exponent modulus < modulus :=
  powModBits_lt base modulus hmodulus exponent.bits

/-- A compact, kernel-reducible proof object for one concrete modular power. -/
structure ModularPowerCertificate
    (base exponent modulus result : ℕ) where
  result_eq : powMod base exponent modulus = result

/-- Soundness of a compact modular-power certificate. -/
theorem ModularPowerCertificate.zmod_eq
    {base exponent modulus result : ℕ}
    (certificate : ModularPowerCertificate base exponent modulus result) :
    (base : ZMod modulus) ^ exponent = (result : ZMod modulus) := by
  calc
    (base : ZMod modulus) ^ exponent = (powMod base exponent modulus : ℕ) :=
      (powMod_cast base exponent modulus).symm
    _ = (result : ℕ) := by rw [certificate.result_eq]

/-- A normalized modular-power computation equal to `1 mod modulus` proves the
corresponding equality in `ZMod modulus`. -/
theorem zmod_pow_eq_one_of_powMod_eq {base exponent modulus : ℕ}
    (h : powMod base exponent modulus = 1 % modulus) :
    (base : ZMod modulus) ^ exponent = 1 := by
  calc
    (base : ZMod modulus) ^ exponent =
        (powMod base exponent modulus : ℕ) :=
      (powMod_cast base exponent modulus).symm
    _ = ((1 % modulus : ℕ) : ZMod modulus) := by rw [h]
    _ = 1 := by
      simpa only [Nat.cast_one] using ZMod.natCast_mod 1 modulus

/-- A normalized modular-power computation different from `1 mod modulus`
proves the corresponding inequality in `ZMod modulus`. -/
theorem zmod_pow_ne_one_of_powMod_ne {base exponent modulus : ℕ}
    (hmodulus : 0 < modulus)
    (h : powMod base exponent modulus ≠ 1 % modulus) :
    (base : ZMod modulus) ^ exponent ≠ 1 := by
  intro heq
  have hzmod : (powMod base exponent modulus : ZMod modulus) = 1 :=
    (powMod_cast base exponent modulus).trans heq
  have hval := congrArg ZMod.val hzmod
  rw [ZMod.val_natCast_of_lt (powMod_lt base exponent modulus hmodulus),
    ZMod.val_one_eq_one_mod] at hval
  exact h hval

/-- A prime divisor of a product of primes occurs in the factor list. -/
theorem prime_mem_of_dvd_list_product {q : ℕ} (factors : List ℕ)
    (hq : Nat.Prime q) (hfactors : ∀ p ∈ factors, Nat.Prime p)
    (hdiv : q ∣ factors.prod) : q ∈ factors := by
  induction factors with
  | nil =>
      simp only [List.prod_nil] at hdiv
      exact (hq.not_dvd_one hdiv).elim
  | cons p factors ih =>
      rw [List.prod_cons] at hdiv
      rcases hq.dvd_mul.mp hdiv with hqp | hqtail
      · have hp := hfactors p (by simp)
        have hpeq : q = p :=
          (Nat.dvd_prime hp).mp hqp |>.resolve_left hq.ne_one
        simp [hpeq]
      · exact List.mem_cons_of_mem p <|
          ih (fun r hr => hfactors r (List.mem_cons_of_mem p hr)) hqtail

/-- A full Lucas/Pratt certificate for a concrete natural number.  Repeated
prime factors of `p - 1` may be retained in `factors`; `orders` is only used on
members, so generated payloads may share already-proved prime endpoints. -/
structure PrattCertificate (p : ℕ) where
  witness : ℕ
  factors : List ℕ
  factorization : factors.prod = p - 1
  factorPrimes : ∀ q ∈ factors, Nat.Prime q
  fermat : (witness : ZMod p) ^ (p - 1) = 1
  orders : ∀ q ∈ factors, (witness : ZMod p) ^ ((p - 1) / q) ≠ 1

/-- Soundness of the public Pratt-certificate format. -/
theorem PrattCertificate.prime {p : ℕ} (certificate : PrattCertificate p) :
    Nat.Prime p := by
  apply lucas_primality p (certificate.witness : ZMod p)
  · exact certificate.fermat
  · intro q hq hqdiv
    have hqdiv' : q ∣ certificate.factors.prod := by
      rw [certificate.factorization]
      exact hqdiv
    exact certificate.orders q <|
      prime_mem_of_dvd_list_product certificate.factors hq
        certificate.factorPrimes hqdiv'

/-! ### Shared Pratt tables

A generated table stores each prime once and refers to the already-checked
factors of `p - 1` by array index.  This keeps the public numerical payload
linear in the number of distinct primes.
-/

/-- One node of a topologically ordered shared Pratt table. -/
structure PrattTableNode where
  value : ℕ
  witness : ℕ
  factorIndices : List ℕ
deriving Inhabited

/-- Balanced random-access storage for a shared Pratt DAG. -/
inductive PrattNodeTree where
  | empty
  | leaf (data : PrattTableNode)
  | node (size : ℕ) (left right : PrattNodeTree)

namespace PrattNodeTree

def size : PrattNodeTree → ℕ
  | .empty => 0
  | .leaf _ => 1
  | .node totalSize _ _ => totalSize

def get : PrattNodeTree → ℕ → PrattTableNode
  | .empty, _ => default
  | .leaf data, 0 => data
  | .leaf _, _ + 1 => default
  | .node _ left right, index =>
      if index < left.size then left.get index
      else right.get (index - left.size)

end PrattNodeTree

/-- A shared table.  Entry zero is the seed prime `2`; every later factor
index must point to an earlier entry. -/
structure PrattTableData where
  nodes : PrattNodeTree

namespace PrattTableData

/-- Total tree lookup used by the executable checker.  Validity separately
ensures that every referenced index is in range. -/
def nodeAt (table : PrattTableData) (index : ℕ) : PrattTableNode :=
  table.nodes.get index

/-- Factor values referenced by one table node. -/
def factorValues (table : PrattTableData) (index : ℕ) : List ℕ :=
  (table.nodeAt index).factorIndices.map fun factorIndex =>
    (table.nodeAt factorIndex).value

/-- Kernel-checkable local validity of a non-seed Pratt node. -/
def NodeValid (table : PrattTableData) (index : ℕ) : Prop :=
  let node := table.nodeAt index
  let factors := table.factorValues index
  (node.factorIndices.all fun factorIndex => decide (factorIndex < index)) = true ∧
    1 < node.value ∧
    factors.prod = node.value - 1 ∧
    powMod node.witness (node.value - 1) node.value = 1 % node.value ∧
    (factors.all fun q => decide
      (powMod node.witness ((node.value - 1) / q) node.value ≠ 1 % node.value)) = true

instance nodeValidDecidable (table : PrattTableData) (index : ℕ) :
    Decidable (table.NodeValid index) := by
  unfold NodeValid
  infer_instance

/-- Kernel-checkable validity of a complete topologically ordered table. -/
def Valid (table : PrattTableData) : Prop :=
  0 < table.nodes.size ∧
    (table.nodeAt 0).value = 2 ∧
    allNatRange (fun index =>
      decide (index = 0 ∨ table.NodeValid index)) 0 table.nodes.size = true

instance validDecidable (table : PrattTableData) : Decidable table.Valid := by
  unfold Valid
  infer_instance

/-- Kernel-checkable validity of a half-open block of non-seed nodes. -/
def RangeValid (table : PrattTableData) (start stop : ℕ) : Prop :=
  allNatRange (fun index => decide (table.NodeValid index))
    start (stop - start) = true

instance rangeValidDecidable (table : PrattTableData) (start stop : ℕ) :
    Decidable (table.RangeValid start stop) := by
  unfold RangeValid
  infer_instance

/-- Extract a node proof from a checked half-open block. -/
theorem RangeValid.nodeValid {table : PrattTableData} {start stop index : ℕ}
    (hvalid : table.RangeValid start stop)
    (hstart : start ≤ index) (hstop : index < stop) :
    table.NodeValid index := by
  apply of_decide_eq_true
  exact (allNatRange_eq_true_iff _ _ _).mp hvalid index hstart (by omega)

/-- Adjacent checked blocks compose without rechecking their nodes. -/
theorem RangeValid.append {table : PrattTableData} {start middle stop : ℕ}
    (hleft : table.RangeValid start middle)
    (hright : table.RangeValid middle stop) :
    table.RangeValid start stop := by
  apply (allNatRange_eq_true_iff _ _ _).mpr
  intro index hindexStart hindexStop
  by_cases hmiddle : index < middle
  · exact decide_eq_true_eq.mpr <|
      hleft.nodeValid hindexStart hmiddle
  · exact decide_eq_true_eq.mpr <|
      hright.nodeValid (Nat.le_of_not_gt hmiddle) (by omega)

/-- A checked block `[1, table.nodes.size)` plus the seed establishes full
table validity. -/
theorem valid_of_range (table : PrattTableData)
    (hsize : 0 < table.nodes.size) (hseed : (table.nodeAt 0).value = 2)
    (hrange : table.RangeValid 1 table.nodes.size) : table.Valid := by
  refine ⟨hsize, hseed, (allNatRange_eq_true_iff _ _ _).mpr ?_⟩
  intro index _hindexNonnegative hindexLt
  have hindexLt' : index < table.nodes.size := by simpa using hindexLt
  by_cases hzero : index = 0
  · exact decide_eq_true_eq.mpr (.inl hzero)
  · exact decide_eq_true_eq.mpr <| .inr <|
      hrange.nodeValid (Nat.one_le_iff_ne_zero.mpr hzero) hindexLt'

/-- A locally valid node is prime when all referenced factor values are
already known to be prime. -/
theorem nodePrime {table : PrattTableData} {index : ℕ}
    (hvalid : table.NodeValid index)
    (hfactorPrimes : ∀ q ∈ table.factorValues index, Nat.Prime q) :
    Nat.Prime (table.nodeAt index).value := by
  let node := table.nodeAt index
  let factors := table.factorValues index
  rcases hvalid with ⟨_hrefs, hp, hfactorization, hfermat, horders⟩
  let certificate : PrattCertificate node.value :=
    { witness := node.witness
      factors := factors
      factorization := hfactorization
      factorPrimes := hfactorPrimes
      fermat := zmod_pow_eq_one_of_powMod_eq hfermat
      orders := fun q hq =>
        zmod_pow_ne_one_of_powMod_ne (Nat.zero_lt_of_lt hp) <|
          of_decide_eq_true ((List.all_eq_true.mp horders) q hq) }
  exact certificate.prime

/-- Soundness of a shared Pratt table: every in-range entry is prime. -/
theorem primeAt {table : PrattTableData} (hvalid : table.Valid) :
    ∀ {index}, index < table.nodes.size → Nat.Prime (table.nodeAt index).value := by
  intro index
  induction index using Nat.strong_induction_on with
  | h index ih =>
      intro hindex
      by_cases hzero : index = 0
      · subst index
        rw [hvalid.2.1]
        exact Nat.prime_two
      · have hnode : table.NodeValid index :=
          have hor : index = 0 ∨ table.NodeValid index := of_decide_eq_true <|
            (allNatRange_eq_true_iff _ _ _).mp hvalid.2.2 index
              (Nat.zero_le index) (by simpa using hindex)
          hor.resolve_left hzero
        apply nodePrime hnode
        intro q hq
        rcases List.mem_map.mp hq with ⟨factorIndex, hfactorIndex, rfl⟩
        have hfactorLt : factorIndex < index := of_decide_eq_true <|
          (List.all_eq_true.mp hnode.1) factorIndex hfactorIndex
        exact ih factorIndex hfactorLt (hfactorLt.trans hindex)

end PrattTableData

end Erdos848

