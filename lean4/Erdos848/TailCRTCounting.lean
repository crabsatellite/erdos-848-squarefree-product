import Mathlib
import Mathlib.Data.Nat.Periodic

namespace Erdos848

/-!
Exact residue-class and CRT-intersection counts for the direct mixed-tail
sieve.  In particular, the endpoint correction is computed by an exact
comparison of natural-number remainders; no floating-point envelope and no
uniform `+1` loss enters these statements.
-/

theorem card_filter_modEq_exact (N modulus residue : ℕ)
    (hmodulus : 0 < modulus) :
    ((Finset.range N).filter fun x => x ≡ residue [MOD modulus]).card =
      N / modulus + if residue % modulus < N % modulus then 1 else 0 := by
  rw [← Nat.count_eq_card_filter_range]
  exact Nat.count_modEq_card N hmodulus residue

theorem card_filter_two_modEq_exact
    (N m n a b : ℕ) (hcoprime : Nat.Coprime m n)
    (hm : 0 < m) (hn : 0 < n) :
    ((Finset.range N).filter fun x => x ≡ a [MOD m] ∧ x ≡ b [MOD n]).card =
      N / (m * n) +
        if (Nat.chineseRemainder hcoprime a b : ℕ) % (m * n) < N % (m * n)
        then 1 else 0 := by
  have hsets :
      (Finset.range N).filter (fun x => x ≡ a [MOD m] ∧ x ≡ b [MOD n]) =
        (Finset.range N).filter
          (fun x => x ≡ Nat.chineseRemainder hcoprime a b [MOD m * n]) := by
    ext x
    simp only [Finset.mem_filter, Finset.mem_range, and_congr_right_iff]
    intro _hx
    constructor
    · rintro ⟨hxm, hxn⟩
      exact Nat.chineseRemainder_modEq_unique hcoprime hxm hxn
    · intro hx
      exact ⟨hx.of_mul_right n |>.trans (Nat.chineseRemainder hcoprime a b).prop.1,
        hx.of_mul_left m |>.trans (Nat.chineseRemainder hcoprime a b).prop.2⟩
  rw [hsets, card_filter_modEq_exact]
  exact Nat.mul_pos hm hn

section ListCRT

variable {ι : Type*}

theorem card_filter_modEq_list_exact
    (N : ℕ) (residue modulus : ι → ℕ) (indices : List ι)
    (hcoprime : indices.Pairwise (Function.onFun Nat.Coprime modulus))
    (hpositive : ∀ i ∈ indices, 0 < modulus i) :
    ((Finset.range N).filter fun x =>
        ∀ i ∈ indices, x ≡ residue i [MOD modulus i]).card =
      let totalModulus := (indices.map modulus).prod
      let combined := Nat.chineseRemainderOfList residue modulus indices hcoprime
      N / totalModulus +
        if (combined : ℕ) % totalModulus < N % totalModulus then 1 else 0 := by
  let totalModulus := (indices.map modulus).prod
  let combined := Nat.chineseRemainderOfList residue modulus indices hcoprime
  have htotal : 0 < totalModulus := by
    dsimp [totalModulus]
    exact List.prod_pos fun x hx => by
      obtain ⟨i, hi, rfl⟩ := List.mem_map.mp hx
      exact hpositive i hi
  have hsets :
      (Finset.range N).filter
          (fun x => ∀ i ∈ indices, x ≡ residue i [MOD modulus i]) =
        (Finset.range N).filter
          (fun x => x ≡ (combined : ℕ) [MOD totalModulus]) := by
    ext x
    simp only [Finset.mem_filter, Finset.mem_range, and_congr_right_iff]
    intro _hx
    constructor
    · intro hx
      exact Nat.chineseRemainderOfList_modEq_unique
        residue modulus indices hcoprime hx
    · intro hx i hi
      have hcombined : (combined : ℕ) ≡ residue i [MOD modulus i] :=
        combined.prop i hi
      have hdivides : modulus i ∣ totalModulus := by
        dsimp [totalModulus]
        exact List.dvd_prod (List.mem_map.mpr ⟨i, hi, rfl⟩)
      exact (hx.of_dvd hdivides).trans hcombined
  dsimp only
  rw [hsets, card_filter_modEq_exact N totalModulus combined htotal]

end ListCRT

/-! ## Exact periodic-prefix payment -/

/-- The integer-scaled form of the sharp prefix-excess estimate used by the
periodic finite-event certificates.  If `C` selected points occur in a prefix
of length `t`, while there are `R` selected residues in a period of length
`M`, the excess is at most `R * (M - R) / M` after division by `M`.

Keeping the statement scaled makes the checker use only natural-number
arithmetic. -/
theorem periodicPrefixExcess_scaled
    {M R t C : ℕ} (hR : R ≤ M)
    (hCR : C ≤ R) (hCt : C ≤ t) :
    M * C ≤ R * t + R * (M - R) := by
  have hsplit : M = R + (M - R) := (Nat.add_sub_of_le hR).symm
  by_cases htr : t ≤ R
  · nlinarith
  · have hRt : R ≤ t := Nat.le_of_not_ge htr
    nlinarith

/-- Every prefix of a set of `R` residues in one period satisfies the sharp
scaled excess bound. -/
theorem finiteResiduePrefixExcess_scaled
    (residues : Finset ℕ) (M t : ℕ)
    (hresidues : residues ⊆ Finset.range M) :
    M * (residues.filter fun r => r < t).card ≤
      residues.card * t + residues.card * (M - residues.card) := by
  apply periodicPrefixExcess_scaled
  · simpa using Finset.card_le_card hresidues
  · exact Finset.card_filter_le _ _
  · have hsub : (residues.filter fun r => r < t) ⊆ Finset.range t := by
      intro r hr
      simpa using (Finset.mem_filter.mp hr).2
    simpa using Finset.card_le_card hsub

/-! ## Exact periodic residue counts -/

theorem count_mul_add_of_periodic
    (predicate : ℕ → Prop) [DecidablePred predicate]
    {period : ℕ} (hperiodic : Function.Periodic predicate period)
    (cycles remainder : ℕ) :
    Nat.count predicate (cycles * period + remainder) =
      cycles * Nat.count predicate period + Nat.count predicate remainder := by
  induction cycles with
  | zero => simp
  | succ cycles ih =>
      have harg : (cycles + 1) * period + remainder =
          period + (cycles * period + remainder) := by ring
      have hshiftCount : ∀ n,
          Nat.count (fun k => predicate (period + k)) n =
            Nat.count predicate n := by
        intro n
        induction n with
        | zero => simp
        | succ n ihn =>
            rw [Nat.count_succ, Nat.count_succ, ihn]
            have hevent : predicate (period + n) = predicate n := by
              rw [Nat.add_comm]
              exact hperiodic n
            simp only [hevent]
      rw [harg, Nat.count_add, hshiftCount, ih]
      ring

/-- Exact formula implemented by the archived `residue_count` routine.  A
periodic union of residue classes contributes full cycles plus the literal
selected residues in the final partial cycle. -/
theorem card_filter_residueSet_exact
    (residues : Finset ℕ) (period N : ℕ) (hperiod : 0 < period)
    (hresidues : residues ⊆ Finset.range period) :
    ((Finset.range N).filter fun x => x % period ∈ residues).card =
      (N / period) * residues.card +
        (residues.filter fun r => r < N % period).card := by
  let predicate : ℕ → Prop := fun x => x % period ∈ residues
  letI : DecidablePred predicate := fun x => inferInstanceAs
    (Decidable (x % period ∈ residues))
  have hperiodic : Function.Periodic predicate period :=
    (Nat.periodic_mod period).comp fun r => r ∈ residues
  have hbase : Nat.count predicate period = residues.card := by
    rw [Nat.count_eq_card_filter_range]
    congr 1
    ext x
    simp only [Finset.mem_filter, Finset.mem_range, predicate]
    constructor
    · rintro ⟨hx, hmem⟩
      simpa [Nat.mod_eq_of_lt hx] using hmem
    · intro hmem
      have hx : x < period := Finset.mem_range.mp (hresidues hmem)
      exact ⟨hx, by simpa [Nat.mod_eq_of_lt hx] using hmem⟩
  have hremLt : N % period < period := Nat.mod_lt N hperiod
  have hrem :
      Nat.count predicate (N % period) =
        (residues.filter fun r => r < N % period).card := by
    rw [Nat.count_eq_card_filter_range]
    congr 1
    ext x
    simp only [Finset.mem_filter, Finset.mem_range, predicate]
    constructor
    · rintro ⟨hx, hmem⟩
      have hxPeriod : x < period := lt_trans hx hremLt
      exact ⟨by simpa [Nat.mod_eq_of_lt hxPeriod] using hmem, hx⟩
    · rintro ⟨hmem, hx⟩
      have hxPeriod : x < period := Finset.mem_range.mp (hresidues hmem)
      exact ⟨hx, by simpa [Nat.mod_eq_of_lt hxPeriod] using hmem⟩
  rw [← Nat.count_eq_card_filter_range]
  calc
    Nat.count predicate N =
        Nat.count predicate ((N / period) * period + N % period) := by
          rw [Nat.div_add_mod']
    _ = (N / period) * Nat.count predicate period +
        Nat.count predicate (N % period) :=
          count_mul_add_of_periodic predicate hperiodic _ _
    _ = (N / period) * residues.card +
        (residues.filter fun r => r < N % period).card := by
          rw [hbase, hrem]

/-- Global scaled prefix bound for a periodic residue certificate.  This is
the exact natural-number inequality used by the five-million tail rows: it
combines the full cycles with the sharp `R * (M - R)` endpoint payment, so a
generated certificate never has to replace the last partial period by a
uniform `+1` per residue. -/
theorem finiteResidueCount_scaled_le
    (residues : Finset ℕ) (period N : ℕ) (hperiod : 0 < period)
    (hresidues : residues ⊆ Finset.range period) :
    period * ((Finset.range N).filter fun x => x % period ∈ residues).card ≤
      residues.card * N + residues.card * (period - residues.card) := by
  have hprefix := finiteResiduePrefixExcess_scaled
    residues period (N % period) hresidues
  have hcount := card_filter_residueSet_exact
    residues period N hperiod hresidues
  have hdecomposition : N / period * period + N % period = N := by
    simpa [Nat.mul_comm] using Nat.div_add_mod N period
  rw [hcount]
  nlinarith

end Erdos848
