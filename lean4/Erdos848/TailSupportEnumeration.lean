import Erdos848.TailSupportScanChecker
import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportDomainCoverage.Certificate

namespace Erdos848

/-! ## Completeness of the pruned support-prefix enumerator -/

/-- In a nondecreasing ambient list, the product of the first as many entries
as a selected sublist has is no larger than the selected product.  This is the
exact inequality which justifies the pruning line in
`feasibleSupportPrefixes`. -/
theorem take_length_prod_le_of_sublist_of_pairwise
    {selected candidates : List ℕ}
    (hSublist : List.Sublist selected candidates)
    (hPairwise : candidates.Pairwise (· ≤ ·)) :
    (candidates.take selected.length).prod ≤ selected.prod := by
  induction selected generalizing candidates with
  | nil => simp
  | cons x selected ih =>
      cases candidates with
      | nil => simp at hSublist
      | cons y candidates =>
          have hPairwiseHead := (List.pairwise_cons.mp hPairwise).1
          have hPairwiseTail := (List.pairwise_cons.mp hPairwise).2
          have hyx : y ≤ x := by
            have hxMem : x ∈ y :: candidates :=
              hSublist.subset (by simp)
            rcases List.mem_cons.mp hxMem with hxy | hxMem
            · simpa [hxy]
            · exact hPairwiseHead x hxMem
          have hTailSublist : List.Sublist selected candidates := by
            rcases List.cons_sublist_cons'.mp hSublist with hSkip | ⟨_hxy, hRest⟩
            · exact ((List.Sublist.refl selected).cons x).trans hSkip
            · exact hRest
          have hTail := ih hTailSublist hPairwiseTail
          simpa using Nat.mul_le_mul hyx hTail

/-- The recursive prefix enumerator is complete.  A list of `need + 1`
ordered candidates with bounded product contributes its first `need` entries;
the last entry is used only as the required extension witness. -/
theorem feasibleSupportPrefixes_complete
    {bound need product : ℕ} {selected candidates : List ℕ}
    (hSublist : List.Sublist selected candidates)
    (hPairwise : candidates.Pairwise (· ≤ ·))
    (hLength : selected.length = need + 1)
    (hProduct : product * selected.prod ≤ bound) :
    selected.take need ∈
      feasibleSupportPrefixes bound need product candidates := by
  induction candidates generalizing need product selected with
  | nil =>
      have hSelected : selected = [] := by
        simpa using hSublist
      simp [hSelected] at hLength
  | cons p candidates ih =>
      have hPairwiseTail := (List.pairwise_cons.mp hPairwise).2
      cases need with
      | zero =>
          have hFirst := take_length_prod_le_of_sublist_of_pairwise
            hSublist hPairwise
          have hpLe : p ≤ selected.prod := by
            simpa [hLength] using hFirst
          have hpProduct : product * p ≤ bound :=
            (Nat.mul_le_mul_left product hpLe).trans hProduct
          simpa [feasibleSupportPrefixes, hpProduct]
      | succ need =>
          cases selected with
          | nil => simp at hLength
          | cons x selected =>
              have hFirst := take_length_prod_le_of_sublist_of_pairwise
                hSublist hPairwise
              have hSelectedLength : (x :: selected).length = need + 2 := by
                simp only [List.length_cons] at hLength ⊢
                omega
              have hTakeLength :
                  (p :: candidates).take (need + 2) =
                    (p :: candidates).take (x :: selected).length := by
                rw [hSelectedLength]
              have hLeast :
                  product * ((p :: candidates).take (need + 2)).prod ≤ bound := by
                calc
                  product * ((p :: candidates).take (need + 2)).prod =
                      product * ((p :: candidates).take
                        (x :: selected).length).prod := by rw [hTakeLength]
                  _ ≤ product * (x :: selected).prod :=
                    Nat.mul_le_mul_left product hFirst
                  _ ≤ bound := hProduct
              have hNotPruned :
                  ¬ bound < product * ((p :: candidates).take (need + 2)).prod := by
                omega
              simp only [feasibleSupportPrefixes]
              rw [if_neg hNotPruned]
              simp only [List.mem_append]
              rcases List.cons_sublist_cons'.mp hSublist with
                hSkip | ⟨hxp, hTailSublist⟩
              · exact Or.inr (ih hSkip hPairwiseTail hLength hProduct)
              · subst x
                have hTailLength : selected.length = need + 1 := by
                  simp at hLength
                  omega
                have hTailProduct :
                    (product * p) * selected.prod ≤ bound := by
                  simpa [Nat.mul_assoc] using hProduct
                have hTail := ih hTailSublist hPairwiseTail hTailLength hTailProduct
                exact Or.inl (by
                  apply List.mem_map.mpr
                  exact ⟨selected.take need, hTail, by simp⟩)

set_option maxRecDepth 1000000 in
theorem supportPrimes_pairwise_lt :
    GeneratedTailSupportCoverage.supportPrimes.Pairwise (· < ·) := by
  decide

/- Kernel-reduced audit that the generated prime table is exactly the odd,
non-five prime domain through the extension sentinel `3163`. -/
theorem supportPrimes_complete_through_3163
    (p : ℕ) (hp : p ∈ List.range 3164) :
    p ∈ GeneratedTailSupportCoverage.supportPrimes ↔
      FiveMillionSupportPrime p := by
  exact supportPrimeEntryPasses_sound
    ((List.all_eq_true.mp
      GeneratedTailSupportDomainCoverage.supportPrimeDomain_passes) p hp)

theorem mem_supportPrimes_of_supportPrime_le_3163
    {p : ℕ} (hp : FiveMillionSupportPrime p) (hpUpper : p ≤ 3163) :
    p ∈ GeneratedTailSupportCoverage.supportPrimes := by
  exact (supportPrimes_complete_through_3163 p (by simp; omega)).2 hp

/-- If `p < q` are two support primes whose product is at most ten million,
then `p` lies below the last genuine table prime.  The next prime `3163` is
therefore sufficient as the unique extension sentinel. -/
theorem supportPrime_left_le_3137
    {p q : ℕ} (hp : FiveMillionSupportPrime p) (hpq : p < q)
    (hProduct : p * q ≤ 10_000_000) :
    p ≤ 3137 := by
  have hpUpper : p ≤ 3162 := by
    by_contra h
    have hpLower : 3163 ≤ p := by omega
    have hqLower : 3164 ≤ q := by omega
    have hTooLarge : 3163 * 3164 ≤ p * q :=
      Nat.mul_le_mul hpLower hqLower
    norm_num at hTooLarge
    omega
  by_contra h
  have hpLower : 3138 ≤ p := by omega
  interval_cases p <;> norm_num [FiveMillionSupportPrime] at hp

#print axioms feasibleSupportPrefixes_complete
#print axioms supportPrimes_pairwise_lt
#print axioms supportPrimes_complete_through_3163
#print axioms supportPrime_left_le_3137

end Erdos848
