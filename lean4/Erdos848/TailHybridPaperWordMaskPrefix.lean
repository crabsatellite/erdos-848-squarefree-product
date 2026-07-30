import Erdos848.TailHybridPaperRootChecker
import Erdos848.TailHybridPaperTwistMaskChecker

namespace Erdos848

/-!
# Reusing a checked word mask on a shorter paper block

The four paper blocks use the same periodic quadratic-residue masks, truncated
at different bit lengths.  The largest block therefore performs the expensive
semantic check once.  A shorter block supplies only a closed bit-prefix check;
the theorems below transfer both the ordinary and five-twist certificates.

The prefix object deliberately compares bits rather than trusting a producer
claim about list layout.  Generated lower-block tables may use any packing as
long as the kernel verifies the visible prefix.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure WordMaskPrefixCertificate
    (M : Nat) (shortWords longWords : List Nat) where
  checked :
    allNatRange
      (fun index =>
        wordMaskTestBit shortWords index ==
          wordMaskTestBit longWords index)
      0 M = true

theorem WordMaskPrefixCertificate.testBit_eq
    {M index : Nat} {shortWords longWords : List Nat}
    (certificate :
      WordMaskPrefixCertificate M shortWords longWords)
    (hindex : index < M) :
    wordMaskTestBit shortWords index =
      wordMaskTestBit longWords index := by
  have hchecked :=
    (allNatRange_eq_true_iff _ _ _).mp certificate.checked
      index (by omega) (by simpa using hindex)
  exact beq_iff_eq.mp hchecked

structure WordMaskPrefixTableCertificate
    (M : Nat) (primes : List Nat)
    (shortLookup longLookup : Nat → List Nat) where
  checked :
    primes.all (fun p =>
      allNatRange
        (fun index =>
          wordMaskTestBit (shortLookup p) index ==
            wordMaskTestBit (longLookup p) index)
        0 M) = true

theorem WordMaskPrefixTableCertificate.entry
    {M p : Nat} {primes : List Nat}
    {shortLookup longLookup : Nat → List Nat}
    (certificate :
      WordMaskPrefixTableCertificate
        M primes shortLookup longLookup)
    (hp : p ∈ primes) :
    WordMaskPrefixCertificate M
      (shortLookup p) (longLookup p) := by
  exact
    ⟨(List.all_eq_true.mp certificate.checked) p hp⟩

/-- Reuse the same full-word mask on a shorter checked interval. -/
theorem FullWordMaskCertificate.restrictBound
    {smallM largeM : Nat} {words : List Nat}
    (hM : smallM ≤ largeM)
    (large : FullWordMaskCertificate largeM words) :
    FullWordMaskCertificate smallM words := by
  refine ⟨(allNatRange_eq_true_iff _ _ _).mpr ?_⟩
  intro index hzero hindex
  exact (allNatRange_eq_true_iff _ _ _).mp large.checked
    index hzero (by omega)

/-- Reuse one periodic square mask without materializing a shorter copy. -/
theorem SquareWordMaskCertificate.restrictBound
    {smallM largeM p : Nat} {words : List Nat}
    (hM : smallM ≤ largeM)
    (large : SquareWordMaskCertificate largeM p words) :
    SquareWordMaskCertificate smallM p words := by
  refine ⟨large.positive, ?_, ?_⟩
  · apply (allNatRange_eq_true_iff _ _ _).mpr
    intro index hzero hindex
    exact (allNatRange_eq_true_iff _ _ _).mp large.periodChecked
      index hzero (by omega)
  · apply (allNatRange_eq_true_iff _ _ _).mpr
    intro root hrootLower hrootUpper
    have hlarge :=
      of_decide_eq_true <|
        (allNatRange_eq_true_iff _ _ _).mp large.squareChecked
          root hrootLower hrootUpper
    rcases hlarge with hzero | hlargeResidue | hbit
    · exact decide_eq_true <| Or.inl hzero
    · exact decide_eq_true <| Or.inr <| Or.inl (hM.trans hlargeResidue)
    · exact decide_eq_true <| Or.inr <| Or.inr hbit

/-- Reuse one five-twist mask without materializing a shorter copy. -/
theorem HybridPaperTwistWordMaskCertificate.restrictBound
    {smallM largeM p : Nat} {normalWords twistWords : List Nat}
    (hM : smallM ≤ largeM)
    (large :
      HybridPaperTwistWordMaskCertificate
        largeM p normalWords twistWords) :
    HybridPaperTwistWordMaskCertificate
      smallM p normalWords twistWords := by
  refine ⟨large.positive, ?_⟩
  intro index hindex
  exact large.testBit_eq_derived (hindex.trans_le hM)

theorem SquareWordMaskCertificate.restrictPrefix
    {smallM largeM p : Nat}
    {shortWords longWords : List Nat}
    (hMLarge : smallM ≤ largeM)
    (hpM : p ≤ smallM)
    (maskPrefix :
      WordMaskPrefixCertificate smallM shortWords longWords)
    (large :
      SquareWordMaskCertificate largeM p longWords) :
    SquareWordMaskCertificate smallM p shortWords := by
  refine ⟨large.positive, ?_, ?_⟩
  · apply (allNatRange_eq_true_iff _ _ _).mpr
    intro index _hzero hindex
    have hlarge :=
      beq_iff_eq.mp <|
        (allNatRange_eq_true_iff _ _ _).mp large.periodChecked
          index (by omega) (by omega)
    have hmod : index % p < smallM :=
      (Nat.mod_lt index large.positive).trans_le hpM
    exact beq_iff_eq.mpr <| by
      rw [maskPrefix.testBit_eq (by simpa using hindex),
        maskPrefix.testBit_eq hmod]
      exact hlarge
  · apply (allNatRange_eq_true_iff _ _ _).mpr
    intro root hrootLower hrootUpper
    let residue := (root * root + (p - 1)) % p
    by_cases hresidue : smallM ≤ residue
    · exact decide_eq_true <| Or.inr <| Or.inl hresidue
    · have hlarge :=
        of_decide_eq_true <|
          (allNatRange_eq_true_iff _ _ _).mp large.squareChecked
            root hrootLower hrootUpper
      rcases hlarge with hzero | hlargeResidue | hbit
      · exact decide_eq_true <| Or.inl hzero
      · exfalso
        omega
      · have hresidueSmall : residue < smallM := Nat.lt_of_not_ge hresidue
        exact decide_eq_true <| Or.inr <| Or.inr <| by
          rw [maskPrefix.testBit_eq hresidueSmall]
          exact hbit

theorem HybridPaperTwistWordMaskCertificate.restrictPrefix
    {smallM largeM p : Nat}
    {shortNormal longNormal shortTwist longTwist : List Nat}
    (hMLarge : smallM ≤ largeM)
    (hpM : p ≤ smallM)
    (normalPrefix :
      WordMaskPrefixCertificate smallM shortNormal longNormal)
    (twistPrefix :
      WordMaskPrefixCertificate smallM shortTwist longTwist)
    (large :
      HybridPaperTwistWordMaskCertificate
        largeM p longNormal longTwist) :
    HybridPaperTwistWordMaskCertificate
      smallM p shortNormal shortTwist := by
  refine ⟨large.positive, ?_⟩
  intro index hindex
  rw [twistPrefix.testBit_eq hindex]
  rw [large.testBit_eq_derived (hindex.trans_le hMLarge)]
  unfold hybridPaperTwistDerivedBit
  let residue := (5 * (index + 1)) % p
  by_cases hresidue : residue = 0
  · simp [residue, hresidue]
  · have hresidueLt : residue < p :=
      Nat.mod_lt _ large.positive
    have hprefixIndex : residue - 1 < smallM := by
      omega
    have hdecide : decide (residue ≠ 0) = true :=
      decide_eq_true hresidue
    change
      (decide (residue ≠ 0) &&
          wordMaskTestBit longNormal (residue - 1)) =
        (decide (residue ≠ 0) &&
          wordMaskTestBit shortNormal (residue - 1))
    simp [hdecide, normalPrefix.testBit_eq hprefixIndex]

#print axioms SquareWordMaskCertificate.restrictPrefix
#print axioms HybridPaperTwistWordMaskCertificate.restrictPrefix

end Erdos848
