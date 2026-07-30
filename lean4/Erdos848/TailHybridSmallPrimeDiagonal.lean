import Erdos848.TailHybridSmallResidueCRT

namespace Erdos848

/-!
# Periodic payment for the small diagonal primes

The high-prime marker starts above `1000`.  For the finitely many smaller
primes, a selected root progression is intersected with the appropriate
periodic residue classes by CRT.  This replaces roughly fifty million
materialised progression events by a short exact sum.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem PaperDiagonalSelection.smallPeriod_pos
    (selection : PaperDiagonalSelection) :
    0 < selection.smallPeriod := by
  cases selection <;> norm_num [PaperDiagonalSelection.smallPeriod]

theorem PaperDiagonalSelection.smallPeriod_dvd_1800
    (selection : PaperDiagonalSelection) :
    selection.smallPeriod ∣ 1800 := by
  cases selection <;>
    norm_num [PaperDiagonalSelection.smallPeriod]

private theorem mod_mod_smallPeriod
    (selection : PaperDiagonalSelection) (x modulus : Nat)
    (hmodulus : modulus ∣ selection.smallPeriod) :
    x % selection.smallPeriod % modulus = x % modulus :=
  Nat.mod_mod_of_dvd x hmodulus

theorem PaperDiagonalSelection.outsideLowBase_mod_smallPeriod
    {selection : PaperDiagonalSelection} {x : Nat}
    (hx : OutsideLowBase x) :
    OutsideLowBase (x % selection.smallPeriod) := by
  have h25 : 25 ∣ selection.smallPeriod :=
    by
      cases selection <;>
        norm_num [PaperDiagonalSelection.smallPeriod]
  have hmod :=
    mod_mod_smallPeriod selection x 25 h25
  exact ⟨by
    intro hseven
    exact hx.1 (by simpa [hmod] using hseven), by
    intro heighteen
    exact hx.2 (by simpa [hmod] using heighteen)⟩

theorem PaperDiagonalSelection.mem_atoms_mod_smallPeriod
    {selection : PaperDiagonalSelection} {x : Nat}
    (hx : truncatedDiagonalAtomOf x ∈ selection.atoms) :
    truncatedDiagonalAtomOf (x % selection.smallPeriod) ∈
      selection.atoms := by
  cases selection with
  | unrestricted =>
      exact mem_paperDiagonalUnrestrictedAtoms _
  | concentrated residueClass cell =>
      have hm4 := mod_mod_smallPeriod
        (.concentrated residueClass cell) x 4 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      have hm9 := mod_mod_smallPeriod
        (.concentrated residueClass cell) x 9 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalConcentratedAtoms_iff] at hx ⊢
      omega
  | lowTwoAdic =>
      have hm8 := mod_mod_smallPeriod .lowTwoAdic x 8 (by
        norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalLowTwoAdicAtoms_iff] at hx ⊢
      omega
  | evenTwoCell cell =>
      have hm8 := mod_mod_smallPeriod
        (.evenTwoCell cell) x 8 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      have hm9 := mod_mod_smallPeriod
        (.evenTwoCell cell) x 9 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalEvenTwoCellAtoms_iff] at hx ⊢
      omega
  | oddUnion =>
      have hm4 := mod_mod_smallPeriod .oddUnion x 4 (by
        norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalOddUnionAtoms_iff] at hx ⊢
      omega
  | oddPlusCell parity cell =>
      have hm4 := mod_mod_smallPeriod
        (.oddPlusCell parity cell) x 4 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      have hm9 := mod_mod_smallPeriod
        (.oddPlusCell parity cell) x 9 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalOddPlusCellAtoms_iff] at hx ⊢
      omega
  | oneOdd parity =>
      have hm4 := mod_mod_smallPeriod
        (.oneOdd parity) x 4 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalOneOddAtoms_iff] at hx ⊢
      omega
  | oneOddCell parity cell =>
      have hm4 := mod_mod_smallPeriod
        (.oneOddCell parity cell) x 4 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      have hm9 := mod_mod_smallPeriod
        (.oneOddCell parity cell) x 9 (by
          norm_num [PaperDiagonalSelection.smallPeriod])
      rw [mem_paperDiagonalOneOddCellAtoms_iff] at hx ⊢
      omega

theorem PaperDiagonalSelection.mod_mem_smallResidues
    {selection : PaperDiagonalSelection} {x : Nat}
    (houtside : OutsideLowBase x)
    (hselection :
      truncatedDiagonalAtomOf x ∈ selection.atoms) :
    x % selection.smallPeriod ∈ selection.smallResidues := by
  rw [PaperDiagonalSelection.smallResidues, Finset.mem_filter]
  exact ⟨Finset.mem_range.mpr
      (Nat.mod_lt x selection.smallPeriod_pos),
    selection.outsideLowBase_mod_smallPeriod houtside,
    selection.mem_atoms_mod_smallPeriod hselection⟩

private theorem prime_ne_two_of_mod_four_one
    {p : Nat} (hmod : p % 4 = 1) : p ≠ 2 := by
  omega

private theorem prime_ne_three_of_mod_four_one
    {p : Nat} (hmod : p % 4 = 1) : p ≠ 3 := by
  omega

theorem primeSquare_coprime_smallPeriod
    {p : Nat} (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hpFive : p ≠ 5) (selection : PaperDiagonalSelection) :
    Nat.Coprime (p ^ 2) selection.smallPeriod := by
  have hpTwo : p ≠ 2 := prime_ne_two_of_mod_four_one hmod
  have hpThree : p ≠ 3 := prime_ne_three_of_mod_four_one hmod
  have hpNotDvd1800 : ¬ p ∣ 1800 := by
    intro hdiv
    have hfactor :
        p ∣ 2 ^ 3 ∨ p ∣ 3 ^ 2 ∨ p ∣ 5 ^ 2 := by
      have hrewrite : 1800 = 2 ^ 3 * 3 ^ 2 * 5 ^ 2 := by norm_num
      rw [hrewrite] at hdiv
      rcases hp.dvd_mul.mp hdiv with hleft | hfive
      · rcases hp.dvd_mul.mp hleft with htwo | hthree
        · exact Or.inl htwo
        · exact Or.inr (Or.inl hthree)
      · exact Or.inr (Or.inr hfive)
    rcases hfactor with htwo | hthree | hfive
    · have hpDvdTwo : p ∣ 2 := hp.dvd_of_dvd_pow htwo
      have hpEq : p = 2 :=
        (Nat.dvd_prime Nat.prime_two).mp hpDvdTwo |>.resolve_left hp.ne_one
      exact hpTwo hpEq
    · have hpDvdThree : p ∣ 3 := hp.dvd_of_dvd_pow hthree
      have hpEq : p = 3 :=
        (Nat.dvd_prime Nat.prime_three).mp hpDvdThree |>.resolve_left hp.ne_one
      exact hpThree hpEq
    · have hpDvdFive : p ∣ 5 := hp.dvd_of_dvd_pow hfive
      have hpEq : p = 5 :=
        (Nat.dvd_prime Nat.prime_five).mp hpDvdFive |>.resolve_left hp.ne_one
      exact hpFive hpEq
  have hpNotDvdPeriod : ¬ p ∣ selection.smallPeriod := by
    intro hdiv
    exact hpNotDvd1800
      (dvd_trans hdiv selection.smallPeriod_dvd_1800)
  exact (hp.coprime_iff_not_dvd.mpr hpNotDvdPeriod).pow_left 2

def paperCRTClass
    (N modulus root period residue : Nat) : Finset Nat :=
  (Finset.range (N + 1)).filter fun x =>
    x ≡ root [MOD modulus] ∧ x ≡ residue [MOD period]

theorem paperCRTClass_card_le
    {N modulus root period residue : Nat}
    (hcoprime : Nat.Coprime modulus period)
    (hmodulus : 0 < modulus) (hperiod : 0 < period) :
    (paperCRTClass N modulus root period residue).card ≤
      (N + 1) / (modulus * period) + 1 := by
  unfold paperCRTClass
  rw [card_filter_two_modEq_exact
    (N + 1) modulus period root residue
    hcoprime hmodulus hperiod]
  split <;> omega

def paperRootSelectionCover
    (N p root : Nat) (selection : PaperDiagonalSelection) :
    Finset Nat :=
  selection.smallResidues.biUnion fun residue =>
    paperCRTClass N (p ^ 2) root selection.smallPeriod residue

theorem mem_paperRootSelectionCover
    {N p root x : Nat} {selection : PaperDiagonalSelection}
    (hrootLt : root < p ^ 2)
    (hxLower : 1 ≤ x) (hxUpper : x ≤ N)
    (hroot : x % (p ^ 2) = root)
    (houtside : OutsideLowBase x)
    (hselection :
      truncatedDiagonalAtomOf x ∈ selection.atoms) :
    x ∈ paperRootSelectionCover N p root selection := by
  rw [paperRootSelectionCover, Finset.mem_biUnion]
  let residue := x % selection.smallPeriod
  have hresidue :
      residue ∈ selection.smallResidues :=
    selection.mod_mem_smallResidues houtside hselection
  refine ⟨residue, hresidue, ?_⟩
  rw [paperCRTClass, Finset.mem_filter]
  refine ⟨Finset.mem_range.mpr (by omega), ?_, ?_⟩
  · show x % (p ^ 2) = root % (p ^ 2)
    rw [hroot, Nat.mod_eq_of_lt hrootLt]
  · exact (Nat.mod_modEq x selection.smallPeriod).symm

theorem paperRootSelectionCover_card_le
    {N p root : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1) (hpFive : p ≠ 5) :
    (paperRootSelectionCover N p root selection).card ≤
      selection.smallResidues.card *
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
  have hcoprime :
      Nat.Coprime (p ^ 2) selection.smallPeriod :=
    primeSquare_coprime_smallPeriod hp hmod hpFive selection
  calc
    (paperRootSelectionCover N p root selection).card ≤
        ∑ residue ∈ selection.smallResidues,
          (paperCRTClass N (p ^ 2) root
            selection.smallPeriod residue).card := by
      exact Finset.card_biUnion_le
    _ ≤ ∑ _residue ∈ selection.smallResidues,
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
      exact Finset.sum_le_sum fun residue _ =>
        paperCRTClass_card_le hcoprime
          (pow_pos hp.pos 2) selection.smallPeriod_pos
    _ = selection.smallResidues.card *
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
      simp

def paperPrimeSelectedBad
    (N p : Nat) (selection : PaperDiagonalSelection) : Finset Nat :=
  (tailDiagonalBad N).filter fun x =>
    p ^ 2 ∣ x ^ 2 + 1 ∧
      truncatedDiagonalAtomOf x ∈ selection.atoms

theorem paperPrimeSelectedBad_card_le
    {N p : Nat} (selection : PaperDiagonalSelection)
    (hp : Nat.Prime p) (hmod : p % 4 = 1) (hpFive : p ≠ 5)
    (roots : DiagonalRootPairCertificate p) :
    (paperPrimeSelectedBad N p selection).card ≤
      2 * selection.smallResidues.card *
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
  let left := paperRootSelectionCover N p roots.root₁ selection
  let right := paperRootSelectionCover N p roots.root₂ selection
  have hsubset :
      paperPrimeSelectedBad N p selection ⊆ left ∪ right := by
    intro x hx
    have hxParts := Finset.mem_filter.mp hx
    have hxBounds := bounds_of_mem_tailDiagonalBad hxParts.1
    have hxOutside := outside_of_mem_tailDiagonalBad hxParts.1
    rcases roots.complete hp hmod hxParts.2.1 with hleft | hright
    · exact Finset.mem_union_left _ <|
        mem_paperRootSelectionCover roots.root₁_lt
          hxBounds.1 hxBounds.2 hleft hxOutside hxParts.2.2
    · exact Finset.mem_union_right _ <|
        mem_paperRootSelectionCover roots.root₂_lt
          hxBounds.1 hxBounds.2 hright hxOutside hxParts.2.2
  have hleft :
      left.card ≤ selection.smallResidues.card *
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
    exact paperRootSelectionCover_card_le selection hp hmod hpFive
  have hright :
      right.card ≤ selection.smallResidues.card *
        ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
    exact paperRootSelectionCover_card_le selection hp hmod hpFive
  calc
    (paperPrimeSelectedBad N p selection).card ≤
        (left ∪ right).card :=
      Finset.card_le_card hsubset
    _ ≤ left.card + right.card := Finset.card_union_le _ _
    _ ≤
        selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) +
          selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) :=
      Nat.add_le_add hleft hright
    _ = 2 * selection.smallResidues.card *
          ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
      simp [two_mul, Nat.add_mul]

def paperSmallPrimeSquareBadXValues (N : Nat) : Finset Nat :=
  (tailDiagonalBad N).filter fun x =>
    ∃ p ∈ Finset.range 1001,
      Nat.Prime p ∧ p ^ 2 ∣ x ^ 2 + 1

theorem paperSmallPrimeSquareFiltered_card_le
    (coverage : PrimeRootCoverageData)
    (hcoverage : coverage.TreeCovered)
    (hlimit : 1000 ≤ coverage.limit)
    (hrootArithmetic :
      ∀ index, index < coverage.roots.size →
        (coverage.rootAt index).Valid)
    (selection : PaperDiagonalSelection) (N : Nat) :
    ((paperSmallPrimeSquareBadXValues N).filter fun x =>
      truncatedDiagonalAtomOf x ∈ selection.atoms).card ≤
        paperSmallPrimePayment N selection := by
  let primes := paperSmallDiagonalPrimes
  have hsubset :
      (paperSmallPrimeSquareBadXValues N).filter (fun x =>
          truncatedDiagonalAtomOf x ∈ selection.atoms) ⊆
        primes.biUnion fun p => paperPrimeSelectedBad N p selection := by
    intro x hx
    have hxSelected := Finset.mem_filter.mp hx
    have hxSmall := Finset.mem_filter.mp hxSelected.1
    obtain ⟨p, hpRange, hp, hpSquare⟩ := hxSmall.2
    have hpCutoff : p ≤ 1000 := by
      simpa using Nat.le_of_lt_succ (Finset.mem_range.mp hpRange)
    have hpNeFive : p ≠ 5 := by
      intro hpFive
      subst p
      exact outside_not_dvd_25_sq_add_one x
        (outside_of_mem_tailDiagonalBad hxSmall.1)
        (by simpa [pow_two] using hpSquare)
    have hpNeTwo : p ≠ 2 := by
      intro hpTwo
      subst p
      exact finite_not_dvd_four_sq_add_one x
        (by simpa [pow_two] using hpSquare)
    have hpGtTwo : 2 < p :=
      lt_of_le_of_ne hp.two_le (Ne.symm hpNeTwo)
    have hpModFour : p % 4 = 1 :=
      finite_prime_sq_divides_implies_one_mod_four
        p x hp hpGtTwo hpSquare
    have hpMem : p ∈ primes := by
      simp [primes, paperSmallDiagonalPrimes, hpRange, hp,
        hpModFour, hpNeFive]
    rw [Finset.mem_biUnion]
    exact ⟨p, hpMem, Finset.mem_filter.mpr
      ⟨hxSmall.1, hpSquare, hxSelected.2⟩⟩
  calc
    ((paperSmallPrimeSquareBadXValues N).filter fun x =>
        truncatedDiagonalAtomOf x ∈ selection.atoms).card ≤
        (primes.biUnion fun p =>
          paperPrimeSelectedBad N p selection).card :=
      Finset.card_le_card hsubset
    _ ≤ ∑ p ∈ primes,
          (paperPrimeSelectedBad N p selection).card :=
      Finset.card_biUnion_le
    _ ≤ ∑ p ∈ primes,
          2 * selection.smallResidues.card *
            ((N + 1) / (p ^ 2 * selection.smallPeriod) + 1) := by
      apply Finset.sum_le_sum
      intro p hpMem
      have hpParts :
          Nat.Prime p ∧ p % 4 = 1 ∧ p ≠ 5 := by
        have hpMem' : p ∈ paperSmallDiagonalPrimes := by
          simpa [primes] using hpMem
        exact (Finset.mem_filter.mp hpMem').2
      have hpLimit : p ≤ coverage.limit := by
        have hpRange : p < 1001 := by
          simpa [primes, paperSmallDiagonalPrimes] using
            (Finset.mem_filter.mp hpMem).1
        omega
      obtain ⟨index, hindex, hprime⟩ :=
        coverage.rootPairAtPrime hcoverage hpParts.1 hpLimit hpParts.2.1
      let rootData := coverage.rootAt index
      have hprime' : rootData.prime = p := by
        simpa [rootData] using hprime
      have hvalid : rootData.Valid :=
        hrootArithmetic index hindex
      have roots : DiagonalRootPairCertificate p := by
        rw [← hprime']
        exact rootData.certificate hvalid
      exact paperPrimeSelectedBad_card_le selection
        hpParts.1 hpParts.2.1 hpParts.2.2 roots
    _ = paperSmallPrimePayment N selection := by
      rw [selection.smallResidues_card]
      simp [primes, paperSmallPrimePayment, Finset.mul_sum]

#print axioms PaperDiagonalSelection.smallResidues_card
#print axioms PaperDiagonalSelection.mod_mem_smallResidues
#print axioms primeSquare_coprime_smallPeriod
#print axioms paperCRTClass_card_le
#print axioms paperSmallPrimeSquareFiltered_card_le

end Erdos848
