import Erdos848.TailHybridPaperRootChecker

namespace Erdos848

/-! # Lightweight semantic checker for five-twist root masks -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def hybridPaperTwistDerivedBit
    (normalWords : List Nat) (p index : Nat) : Bool :=
  let residue := (5 * (index + 1)) % p
  decide (residue ≠ 0) &&
    wordMaskTestBit normalWords (residue - 1)

def hybridPaperTwistDerivedArrayBit
    (normalWords : Array Nat) (p index : Nat) : Bool :=
  let residue := (5 * (index + 1)) % p
  decide (residue ≠ 0) &&
    twentyMillionRootArrayMaskTestBit normalWords (residue - 1)

@[simp] theorem hybridPaperTwistDerivedArrayBit_toArray
    (normalWords : List Nat) (p index : Nat) :
    hybridPaperTwistDerivedArrayBit normalWords.toArray p index =
      hybridPaperTwistDerivedBit normalWords p index := by
  simp [hybridPaperTwistDerivedArrayBit, hybridPaperTwistDerivedBit,
    twentyMillionRootArrayMaskTestBit_toArray,
    globalMixedMaskTestBit, wordMaskTestBit]

theorem hybridPaperTwistDerivedArrayBit_mod
    (normalWords : Array Nat) (p index : Nat) :
    hybridPaperTwistDerivedArrayBit normalWords p (index % p) =
      hybridPaperTwistDerivedArrayBit normalWords p index := by
  have hadd :
      (index % p + 1) % p = (index + 1) % p := by
    calc
      _ = ((index % p) % p + 1 % p) % p :=
        Nat.add_mod ..
      _ = (index % p + 1 % p) % p := by
        rw [Nat.mod_mod]
      _ = _ := (Nat.add_mod ..).symm
  have hresidue :
      (5 * (index % p + 1)) % p = (5 * (index + 1)) % p := by
    calc
      _ = ((5 % p) * ((index % p + 1) % p)) % p :=
        Nat.mul_mod ..
      _ = ((5 % p) * ((index + 1) % p)) % p := by
        rw [hadd]
      _ = _ := (Nat.mul_mod ..).symm
  simp [hybridPaperTwistDerivedArrayBit, hresidue]

/-!
Check the materialized twist table in two kernel-visible stages.  First verify
all `M` bits are periodic modulo `p`; then compare one complete period with the
normal-table-derived five-twist predicate.  The second, more expensive stage
therefore evaluates at most `p` derived bits instead of all `M` bits.
-/
def hybridPaperTwistWordMaskPasses
    (M p : Nat) (normalWords twistWords : List Nat) : Bool :=
  let normalArray := normalWords.toArray
  let twistArray := twistWords.toArray
  allNatRange
    (fun wordIndex =>
      twistArray.getD wordIndex 0 ==
        twentyMillionRootPackWord
          (fun index =>
            decide (index < M) &&
              twentyMillionRootArrayMaskTestBit
                twistArray (index % p))
          wordIndex)
    0 ((M + 63) / 64) &&
  allNatRange
    (fun index =>
      twentyMillionRootArrayMaskTestBit twistArray index ==
        hybridPaperTwistDerivedArrayBit normalArray p index)
    0 p

structure HybridPaperTwistWordMaskKernelCertificate
    (M p : Nat) (normalWords twistWords : List Nat) where
  positive : 0 < p
  checked :
    hybridPaperTwistWordMaskPasses
      M p normalWords twistWords = true

theorem HybridPaperTwistWordMaskKernelCertificate.arrayBit_eq_mod
    {M p index : Nat} {normalWords twistWords : List Nat}
    (certificate :
      HybridPaperTwistWordMaskKernelCertificate
        M p normalWords twistWords)
    (hindex : index < M) :
    twentyMillionRootArrayMaskTestBit twistWords.toArray index =
      twentyMillionRootArrayMaskTestBit
        twistWords.toArray (index % p) := by
  have hwordIndex : index / 64 < (M + 63) / 64 := by
    omega
  have hpasses := certificate.checked
  unfold hybridPaperTwistWordMaskPasses at hpasses
  have hperiod := (Bool.and_eq_true_iff.mp hpasses).1
  have hchecked :=
    (allNatRange_eq_true_iff _ _ _).mp hperiod
      (index / 64) (by omega) (by simpa using hwordIndex)
  have hwordEq := beq_iff_eq.mp hchecked
  have hbitEq :=
    congrArg (fun word => word.testBit (index % 64)) hwordEq
  have hindexDecomp :
      64 * (index / 64) + index % 64 = index := by
    omega
  change
    (twistWords.toArray.getD (index / 64) 0).testBit
        (index % 64) =
      (twentyMillionRootPackWord
        (fun bitIndex =>
          decide (bitIndex < M) &&
            twentyMillionRootArrayMaskTestBit
              twistWords.toArray (bitIndex % p))
        (index / 64)).testBit (index % 64) at hbitEq
  rw [twentyMillionRootPackWord_testBit _ _ _
        (Nat.mod_lt _ (by norm_num)),
      hindexDecomp] at hbitEq
  simpa [hindex, twentyMillionRootArrayMaskTestBit] using hbitEq

theorem HybridPaperTwistWordMaskKernelCertificate.arrayBit_eq_derived_of_lt
    {M p index : Nat} {normalWords twistWords : List Nat}
    (certificate :
      HybridPaperTwistWordMaskKernelCertificate
        M p normalWords twistWords)
    (hindex : index < p) :
    twentyMillionRootArrayMaskTestBit twistWords.toArray index =
      hybridPaperTwistDerivedArrayBit
        normalWords.toArray p index := by
  have hpasses := certificate.checked
  unfold hybridPaperTwistWordMaskPasses at hpasses
  have hsemantic := (Bool.and_eq_true_iff.mp hpasses).2
  exact beq_iff_eq.mp <|
    (allNatRange_eq_true_iff _ _ _).mp hsemantic
      index (by omega) (by simpa using hindex)

structure HybridPaperTwistWordMaskCertificate
    (M p : Nat) (normalWords twistWords : List Nat) where
  positive : 0 < p
  semanticChecked :
    ∀ index, index < M →
      wordMaskTestBit twistWords index =
        hybridPaperTwistDerivedBit normalWords p index

def HybridPaperTwistWordMaskKernelCertificate.toSemanticCertificate
    {M p : Nat} {normalWords twistWords : List Nat}
    (certificate :
      HybridPaperTwistWordMaskKernelCertificate
        M p normalWords twistWords) :
    HybridPaperTwistWordMaskCertificate
      M p normalWords twistWords :=
  ⟨certificate.positive, by
    intro index hindex
    have hmod : index % p < p :=
      Nat.mod_lt _ certificate.positive
    have harray :
        twentyMillionRootArrayMaskTestBit twistWords.toArray index =
          hybridPaperTwistDerivedArrayBit normalWords.toArray p index := by
      calc
        _ = twentyMillionRootArrayMaskTestBit
              twistWords.toArray (index % p) :=
          certificate.arrayBit_eq_mod hindex
        _ = hybridPaperTwistDerivedArrayBit
              normalWords.toArray p (index % p) :=
          certificate.arrayBit_eq_derived_of_lt hmod
        _ = hybridPaperTwistDerivedArrayBit
              normalWords.toArray p index :=
          hybridPaperTwistDerivedArrayBit_mod
            normalWords.toArray p index
    simpa [twentyMillionRootArrayMaskTestBit_toArray,
      globalMixedMaskTestBit, wordMaskTestBit] using harray⟩

theorem HybridPaperTwistWordMaskCertificate.testBit_eq_derived
    {M p index : Nat} {normalWords twistWords : List Nat}
    (certificate :
      HybridPaperTwistWordMaskCertificate
        M p normalWords twistWords)
    (hindex : index < M) :
    wordMaskTestBit twistWords index =
      hybridPaperTwistDerivedBit normalWords p index := by
  exact certificate.semanticChecked index hindex

/-- A checked five-twist word contains every actual nonzero square `5*m`.
The ordinary QR table is queried only at the reduced residue, so no bound on
`5*m` is required. -/
theorem HybridPaperTwistWordMaskCertificate.testBit_eq_true_of_modEq_square
    {M p m root : Nat} {normalWords twistWords : List Nat}
    (twistCertificate :
      HybridPaperTwistWordMaskCertificate
        M p normalWords twistWords)
    (normalCertificate :
      SquareWordMaskCertificate M p normalWords)
    (hpM : p ≤ M)
    (hm : 1 ≤ m) (hmM : m ≤ M)
    (hnotDvd : ¬ p ∣ 5 * m)
    (hsquare : root ^ 2 ≡ 5 * m [MOD p]) :
    wordMaskTestBit twistWords (m - 1) = true := by
  let residue := (5 * m) % p
  have hresidueLt : residue < p :=
    Nat.mod_lt _ twistCertificate.positive
  have hresidueNe : residue ≠ 0 := by
    intro hzero
    apply hnotDvd
    exact Nat.dvd_iff_mod_eq_zero.mpr hzero
  have hresiduePos : 1 ≤ residue :=
    Nat.one_le_iff_ne_zero.mpr hresidueNe
  have hresidueM : residue ≤ M :=
    (Nat.le_of_lt hresidueLt).trans hpM
  have hresidueNotDvd : ¬ p ∣ residue := by
    intro hdvd
    have hpLe : p ≤ residue := Nat.le_of_dvd hresiduePos hdvd
    omega
  have hsquareResidue : root ^ 2 ≡ residue [MOD p] := by
    show root ^ 2 % p = residue % p
    rw [Nat.mod_eq_of_lt hresidueLt]
    simpa [residue] using hsquare
  have hnormalBit :
      wordMaskTestBit normalWords (residue - 1) = true :=
    normalCertificate.testBit_eq_true_of_modEq_square
      hresiduePos hresidueM hresidueNotDvd hsquareResidue
  have hindex : m - 1 < M := by omega
  rw [twistCertificate.testBit_eq_derived hindex]
  have hmBack : m - 1 + 1 = m := by omega
  simp [hybridPaperTwistDerivedBit, hmBack, residue,
    hresidueNe, hnormalBit]

#print axioms
  HybridPaperTwistWordMaskCertificate.testBit_eq_true_of_modEq_square

end Erdos848
