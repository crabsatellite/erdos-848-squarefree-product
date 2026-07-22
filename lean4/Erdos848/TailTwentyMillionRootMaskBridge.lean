import Erdos848.TailSupportScanChecker
import Erdos848.TailTwentyMillionRootCheckerCore
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticCertificate

namespace Erdos848

/-!
# Semantic bridge for the twenty-million root words

The generated files contain only word arrays and closed Boolean equalities.
This module turns those equalities into the reusable semantic certificates
consumed by the actual-support proof.
-/

set_option maxRecDepth 1000000

theorem twentyMillionRootMaskAllRange_eq_allNatRange
    (predicate : Nat → Bool) (start count : Nat) :
    globalMixedMaskAllRange predicate start count =
      allNatRange predicate start count := by
  induction count generalizing start with
  | zero => rfl
  | succ count ih =>
      simp only [globalMixedMaskAllRange, allNatRange]
      rw [ih]

theorem twentyMillionRootCompactMask_contains_square
    {normalLookup twistLookup : Nat → List Nat} {p m root : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hm : 1 ≤ m)
    (hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    twentyMillionRootCompactMaskTestBit
      normalLookup p (m - 1) = true := by
  have hnormal :
      twentyMillionRootNormalMaskPassesWith normalLookup p = true :=
    (Bool.and_eq_true_iff.mp hpass).1
  unfold twentyMillionRootNormalMaskPassesWith at hnormal
  have houter := Bool.and_eq_true_iff.mp hnormal
  have hinner := Bool.and_eq_true_iff.mp houter.1
  have hpPos : 0 < p := of_decide_eq_true hinner.1
  have hall :
      allNatRange
        (fun candidate => decide (
          candidate % p = 0 ∨
          twentyMillionRootArrayMaskTestBit
            (normalLookup p).toArray
            ((candidate * candidate + (p - 1)) % p) = true))
        1 (p - 1) = true := by
    simpa [twentyMillionRootMaskAllRange_eq_allNatRange] using houter.2
  let reducedRoot := root % p
  have hreducedRootLt : reducedRoot < p :=
    Nat.mod_lt _ hpPos
  have hreducedRootNe : reducedRoot ≠ 0 := by
    intro hzero
    have hrootSquareZero : root ^ 2 % p = 0 := by
      simp [Nat.pow_mod, reducedRoot, hzero]
    have hmZero : m % p = 0 := by
      have hsq : root ^ 2 % p = m % p := hsquare
      exact hsq.symm.trans hrootSquareZero
    exact hnotDvd (Nat.dvd_iff_mod_eq_zero.mpr hmZero)
  have hreducedRootPos : 1 ≤ reducedRoot :=
    Nat.one_le_iff_ne_zero.mpr hreducedRootNe
  have hsquareChecked := (allNatRange_eq_true_iff _ _ _).mp
    hall reducedRoot (by omega) (by omega)
  have hsquareCases :
      reducedRoot % p = 0 ∨
      twentyMillionRootArrayMaskTestBit
          (normalLookup p).toArray
          ((reducedRoot * reducedRoot + (p - 1)) % p) = true :=
    of_decide_eq_true hsquareChecked
  have hrootMod :
      (reducedRoot * reducedRoot) % p = (root ^ 2) % p := by
    simpa [reducedRoot, pow_two] using (Nat.mul_mod root root p).symm
  have hsquareMod : root ^ 2 % p = m % p := hsquare
  have hshift :
      (reducedRoot * reducedRoot + (p - 1)) % p =
        (m - 1) % p := by
    have hadd :
        (reducedRoot * reducedRoot + (p - 1)) % p =
          (m + (p - 1)) % p := by
      calc
        (reducedRoot * reducedRoot + (p - 1)) % p =
            ((reducedRoot * reducedRoot) % p + (p - 1) % p) % p :=
          Nat.add_mod _ _ _
        _ = (m % p + (p - 1) % p) % p := by
          rw [hrootMod, hsquareMod]
        _ = (m + (p - 1)) % p := (Nat.add_mod _ _ _).symm
    have hmShift : m + (p - 1) = (m - 1) + p := by omega
    have hperiodShift :
        ((m - 1) + p) % p = (m - 1) % p := by
      calc
        ((m - 1) + p) % p =
            ((m - 1) % p + p % p) % p := Nat.add_mod _ _ _
        _ = (m - 1) % p := by
          rw [Nat.mod_self, add_zero, Nat.mod_mod]
    exact hadd.trans
      ((congrArg (fun value => value % p) hmShift).trans hperiodShift)
  have hsquareBit :
      twentyMillionRootArrayMaskTestBit
          (normalLookup p).toArray
          ((reducedRoot * reducedRoot + (p - 1)) % p) = true := by
    rcases hsquareCases with hzero | hbit
    · exact (hreducedRootNe
        (by simpa [Nat.mod_eq_of_lt hreducedRootLt] using hzero)).elim
    · exact hbit
  simpa [twentyMillionRootCompactMaskTestBit, hshift,
    Nat.mod_mod] using hsquareBit

theorem twentyMillionRootNormalMask_testBit_eq_compact
    {normalLookup twistLookup : Nat → List Nat} {p index : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hindex : index < twentyMillionRootMaxBound) :
    wordMaskTestBit (normalLookup p) index =
      twentyMillionRootCompactMaskTestBit normalLookup p index := by
  have hnormal :
      twentyMillionRootNormalMaskPassesWith normalLookup p = true :=
    (Bool.and_eq_true_iff.mp hpass).1
  unfold twentyMillionRootNormalMaskPassesWith at hnormal
  have houter := Bool.and_eq_true_iff.mp hnormal
  have hinner := Bool.and_eq_true_iff.mp houter.1
  have hrelation :
      allNatRange
        (fun wordIndex =>
          (normalLookup p).toArray.getD wordIndex 0 ==
            twentyMillionRootPackWord
              (fun i =>
                twentyMillionRootArrayMaskTestBit
                  (normalLookup p).toArray (i % p))
              wordIndex)
        0 ((twentyMillionRootMaxBound + 63) / 64) = true := by
    simpa [twentyMillionRootMaskAllRange_eq_allNatRange] using hinner.2
  have hwordIndex :
      index / 64 < (twentyMillionRootMaxBound + 63) / 64 := by
    omega
  have hword := (allNatRange_eq_true_iff _ _ _).mp hrelation
    (index / 64) (by omega) hwordIndex
  have hwordEq := beq_iff_eq.mp hword
  have hdecomp := Nat.mod_add_div index 64
  have hindexDecomp :
      64 * (index / 64) + index % 64 = index := by
    omega
  have harray :
      twentyMillionRootArrayMaskTestBit
          (normalLookup p).toArray index =
        twentyMillionRootArrayMaskTestBit
          (normalLookup p).toArray (index % p) := by
    unfold twentyMillionRootArrayMaskTestBit
    rw [hwordEq, twentyMillionRootPackWord_testBit _ _ _
      (Nat.mod_lt _ (by norm_num)), hindexDecomp]
    rfl
  simpa [twentyMillionRootCompactMaskTestBit,
    twentyMillionRootArrayMaskTestBit_toArray,
    globalMixedMaskTestBit, wordMaskTestBit] using harray

theorem twentyMillionRootTwistMask_testBit_eq_derived
    {normalLookup twistLookup : Nat → List Nat} {p index : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hindex : index < twentyMillionRootMaxBound) :
    wordMaskTestBit (twistLookup p) index =
      twentyMillionRootTwistMaskTestBit normalLookup p index := by
  have htwist :
      twentyMillionRootTwistMaskPassesWith
        normalLookup twistLookup p = true :=
    (Bool.and_eq_true_iff.mp hpass).2
  unfold twentyMillionRootTwistMaskPassesWith at htwist
  have hparts := Bool.and_eq_true_iff.mp htwist
  have hrelation :
      allNatRange
        (fun wordIndex =>
          (twistLookup p).toArray.getD wordIndex 0 ==
            twentyMillionRootPackWord
              (twentyMillionRootTwistMaskTestBit normalLookup p)
              wordIndex)
        0 ((twentyMillionRootMaxBound + 63) / 64) = true := by
    simpa [twentyMillionRootMaskAllRange_eq_allNatRange] using hparts.2
  have hwordIndex :
      index / 64 < (twentyMillionRootMaxBound + 63) / 64 := by
    omega
  have hword := (allNatRange_eq_true_iff _ _ _).mp hrelation
    (index / 64) (by omega) hwordIndex
  have hwordEq := beq_iff_eq.mp hword
  have hdecomp := Nat.mod_add_div index 64
  have hindexDecomp :
      64 * (index / 64) + index % 64 = index := by
    omega
  have harray :
      twentyMillionRootArrayMaskTestBit
          (twistLookup p).toArray index =
        twentyMillionRootTwistMaskTestBit normalLookup p index := by
    unfold twentyMillionRootArrayMaskTestBit
      twentyMillionRootTwistMaskTestBit
    rw [hwordEq, twentyMillionRootPackWord_testBit _ _ _
      (Nat.mod_lt _ (by norm_num)), hindexDecomp]
    rfl
  simpa [twentyMillionRootArrayMaskTestBit_toArray,
    globalMixedMaskTestBit, wordMaskTestBit] using harray

theorem twentyMillionRootNormalMask_contains_square
    {normalLookup twistLookup : Nat → List Nat} {p m root : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hm : 1 ≤ m) (hmBound : m ≤ twentyMillionRootMaxBound)
    (hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    wordMaskTestBit (normalLookup p) (m - 1) = true := by
  rw [twentyMillionRootNormalMask_testBit_eq_compact
    hpass (by omega)]
  exact twentyMillionRootCompactMask_contains_square
    hpass hm hnotDvd hsquare

theorem twentyMillionRootTwistPredicate_contains_square
    {normalLookup twistLookup : Nat → List Nat} {p m root : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hpUpper : p ≤ twentyMillionRootNormalMaskBound)
    (hm : 1 ≤ m) (hmBound : m ≤ twentyMillionRootMaxBound)
    (hnotDvd : ¬ p ∣ 5 * m) (hsquare : root ^ 2 ≡ 5 * m [MOD p]) :
    twentyMillionRootTwistMaskTestBit
      normalLookup p (m - 1) = true := by
  have hpPos : 0 < p := by
    have hnormal :
        twentyMillionRootNormalMaskPassesWith normalLookup p = true :=
      (Bool.and_eq_true_iff.mp hpass).1
    unfold twentyMillionRootNormalMaskPassesWith at hnormal
    exact of_decide_eq_true
      (Bool.and_eq_true_iff.mp
        (Bool.and_eq_true_iff.mp hnormal).1).1
  let residue := (5 * m) % p
  have hresiduePos : 0 < residue := by
    apply Nat.pos_of_ne_zero
    intro hzero
    exact hnotDvd (Nat.dvd_iff_mod_eq_zero.mpr hzero)
  have hresidueUpper : residue ≤ twentyMillionRootNormalMaskBound := by
    exact (Nat.le_of_lt (Nat.mod_lt _ hpPos)).trans hpUpper
  have hresidueNotDvd : ¬ p ∣ residue := by
    intro hdvd
    have hzero := Nat.dvd_iff_mod_eq_zero.mp hdvd
    rw [Nat.mod_eq_of_lt (Nat.mod_lt _ hpPos)] at hzero
    omega
  have hsquareResidue : root ^ 2 ≡ residue [MOD p] := by
    exact hsquare.trans (by simp [Nat.ModEq, residue])
  have hnormalBit :
      twentyMillionRootCompactMaskTestBit
        normalLookup p (residue - 1) = true := by
    exact twentyMillionRootCompactMask_contains_square
      hpass hresiduePos hresidueNotDvd hsquareResidue
  have hindex : 5 * ((m - 1) + 1) = 5 * m := by omega
  unfold twentyMillionRootTwistMaskTestBit
  rw [hindex]
  simp [residue, hresiduePos.ne', hnormalBit]

theorem twentyMillionRootTwistMask_contains_square
    {normalLookup twistLookup : Nat → List Nat} {p m root : Nat}
    (hpass :
      twentyMillionRootMaskPassesWith normalLookup twistLookup p = true)
    (hpUpper : p ≤ twentyMillionRootNormalMaskBound)
    (hm : 1 ≤ m) (hmBound : m ≤ twentyMillionRootMaxBound)
    (hnotDvd : ¬ p ∣ 5 * m) (hsquare : root ^ 2 ≡ 5 * m [MOD p]) :
    wordMaskTestBit (twistLookup p) (m - 1) = true := by
  rw [twentyMillionRootTwistMask_testBit_eq_derived
    hpass (by omega)]
  exact twentyMillionRootTwistPredicate_contains_square
    hpass hpUpper hm hmBound hnotDvd hsquare

theorem twentyMillionRootBaseWords_testBit
    (row : TwentyMillionRootRow) (squareCoset : Bool)
    {index : Nat} (hindex : index < twentyMillionRootMaxBound) :
    wordMaskTestBit
        (GeneratedTailTwentyMillionRootCoverage.rootBaseWords
          row squareCoset) index =
      twentyMillionRootBaseAccepts row squareCoset (index + 1) := by
  have hpass :=
    GeneratedTailTwentyMillionRootCoverage.rootBaseWords_pass
      row squareCoset
  have hall :
      allNatRange
        (fun i =>
          globalMixedMaskTestBit
              (GeneratedTailTwentyMillionRootCoverage.rootBaseWords
                row squareCoset) i ==
            twentyMillionRootBaseAccepts row squareCoset (i + 1))
        0 twentyMillionRootMaxBound = true := by
    simpa [twentyMillionRootBaseWordsPassesWith,
      twentyMillionRootMaskAllRange_eq_allNatRange] using hpass
  have hbit := (allNatRange_eq_true_iff _ _ _).mp hall
    index (by omega) (by omega)
  simpa [globalMixedMaskTestBit, wordMaskTestBit] using
    (beq_iff_eq.mp hbit)

theorem twentyMillionRootBaseWords_testBit_of_row_bound
    (row : TwentyMillionRootRow) (squareCoset : Bool)
    {m : Nat} (hm : 1 ≤ m) (hmBound : m ≤ row.bound) :
    wordMaskTestBit
        (GeneratedTailTwentyMillionRootCoverage.rootBaseWords
          row squareCoset) (m - 1) =
      (row.quotientAccepts m && modFiveCosetAccepts squareCoset m) := by
  have hrowMax : row.bound ≤ twentyMillionRootMaxBound :=
    TwentyMillionRootRow.bound_le_max row
  have hindex : m - 1 < twentyMillionRootMaxBound := by omega
  rw [twentyMillionRootBaseWords_testBit row squareCoset hindex]
  simp [twentyMillionRootBaseAccepts, hmBound, show m - 1 + 1 = m by omega]

#print axioms twentyMillionRootNormalMask_contains_square
#print axioms twentyMillionRootTwistMask_contains_square
#print axioms twentyMillionRootBaseWords_testBit_of_row_bound

end Erdos848
