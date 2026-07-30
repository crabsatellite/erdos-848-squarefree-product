import Erdos848.TailTwentyMillionOddFinite19Partition
import Erdos848.TailTwentyMillionOddFinite19Bounds
import Erdos848.TailModFourPartitionCore
import Erdos848.TailCRTCounting

namespace Erdos848

local notation "mod4Part" => tailMod4Part
local notation "mod4_four_card_sum" => tailMod4_four_card_sum

/-!
# Prefix bounds matching the odd cutoff-19 certificate

Prime two partitions the quotient prefix into four exact fibres.  In the
one-class row one fibre is automatic and the other three use the odd-prime
two-of-three bound.  In the two-class row the four fibres are respectively
automatic, pair-union, and two copies of the odd-prime bound.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

private theorem twentyMillionOddFinite19RootFour_lt
    (roots : TwentyMillionOddFinite19PivotRootFamily) (i : Fin 3) :
    twentyMillionOddFinite19RootNat roots i 0 < 4 := by
  simpa [twentyMillionOddFinite19RootNat,
    twentyMillionOddFinite19Modulus] using (roots i 0).isLt

theorem twentyMillionOddFinite19FixedFiber_card_rat_le
    (length rootFour : Nat) (hrootFour : rootFour < 4) :
    ((twentyMillionOddFinite19FixedFiber
        length rootFour).card : Rat) ≤
      (length : Rat) / 4 + 1 := by
  have hexact := card_filter_modEq_exact length 4 rootFour (by norm_num)
  have hrootMod : rootFour % 4 = rootFour :=
    Nat.mod_eq_of_lt hrootFour
  simp [twentyMillionOddFinite19FixedFiber, Nat.ModEq,
    hrootMod] at hexact
  have hcard' :
      (twentyMillionOddFinite19FixedFiber length rootFour).card ≤
        length / 4 + 1 := by
    unfold twentyMillionOddFinite19FixedFiber
    rw [hexact]
    split <;> omega
  have hcardRat :
      ((twentyMillionOddFinite19FixedFiber
          length rootFour).card : Rat) ≤
        ((length / 4 + 1 : Nat) : Rat) := by
    exact Nat.cast_le.mpr hcard'
  have hdiv :
      (((length / 4 : Nat) : Rat)) ≤ (length : Rat) / 4 :=
    Nat.cast_div_le
  calc
    ((twentyMillionOddFinite19FixedFiber
        length rootFour).card : Rat) ≤
        ((length / 4 + 1 : Nat) : Rat) := hcardRat
    _ = ((length / 4 : Nat) : Rat) + 1 := by norm_num
    _ ≤ (length : Rat) / 4 + 1 := by
      simpa [add_comm] using add_le_add_right hdiv 1

theorem twentyMillionOddFinite19RootAllThreePrefix_card_rat_le
    (length : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily) :
    (((Finset.range length).filter fun q =>
        e1FiniteAllThreeBad
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) ≤
      (length : Rat) * twentyMillionOddFinite19AllThreeDensityRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) +
      twentyMillionOddFinite19AllThreeEndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) :=
  twentyMillionOddFinite19RootAllThree_card_rat_le length roots

theorem twentyMillionOddFinite19RootTwoPrefix_card_rat_le_allEqual
    (length : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 = .allEqual) :
    (((Finset.range length).filter fun q =>
        2 ≤ e1FiniteBadCount
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) ≤
      (length : Rat) *
        ((1 : Rat) / 4 +
          3 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 4)) +
        5 +
        3 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  classical
  let source := (Finset.range length).filter fun q =>
    2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19RootBad roots) q
  let common :=
    twentyMillionOddFinite19RootNat roots 0 0
  have hcommonLt : common < 4 :=
    twentyMillionOddFinite19RootFour_lt roots 0
  have hall :=
    (e1FiniteRootPatternOf_eq_allEqual_iff
      (twentyMillionOddFinite19RootNat roots 0 0)
      (twentyMillionOddFinite19RootNat roots 1 0)
      (twentyMillionOddFinite19RootNat roots 2 0)).1 hpattern
  have hroot (i : Fin 3) :
      twentyMillionOddFinite19RootNat roots i 0 = common := by
    fin_cases i
    · rfl
    · exact hall.1.symm
    · exact hall.2.symm
  have hpart (r : Nat) (hr : r < 4) :
      ((mod4Part source r).card : Rat) ≤
        if r = common then
          (length : Rat) / 4 + 1
        else
          (length : Rat) *
              (twentyMillionOddFinite19OddTwoOfThreeDensityRat
                (twentyMillionOddFinite19RootPatternAt roots 1)
                (twentyMillionOddFinite19RootPatternAt roots 2)
                (twentyMillionOddFinite19RootPatternAt roots 3)
                (twentyMillionOddFinite19RootPatternAt roots 4)
                (twentyMillionOddFinite19RootPatternAt roots 5)
                (twentyMillionOddFinite19RootPatternAt roots 6) / 4) +
            twentyMillionOddFinite19OddTwoOfThreeEndpointRat
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6) := by
    by_cases hrc : r = common
    · subst r
      have hsubset :
          mod4Part source common ⊆
            twentyMillionOddFinite19FixedFiber length common := by
        intro q hq
        have hparts := Finset.mem_filter.mp hq
        have hsource := Finset.mem_filter.mp hparts.1
        exact Finset.mem_filter.mpr ⟨hsource.1, hparts.2⟩
      have hcard :
          ((mod4Part source common).card : Rat) ≤
            ((twentyMillionOddFinite19FixedFiber
              length common).card : Rat) := by
        exact_mod_cast Finset.card_le_card hsubset
      simpa using hcard.trans
        (twentyMillionOddFinite19FixedFiber_card_rat_le
          length common hcommonLt)
    · have hsubset :
          mod4Part source r ⊆
            twentyMillionOddFinite19FixedTwoOfThree
              length r roots := by
        intro q hq
        have hparts := Finset.mem_filter.mp hq
        have hsource := Finset.mem_filter.mp hparts.1
        apply Finset.mem_filter.mpr
        refine ⟨Finset.mem_filter.mpr
          ⟨hsource.1, hparts.2⟩, ?_⟩
        apply twentyMillionOddFinite19OddTwoOfThree_of_no_primeTwo
          roots q
        · intro i hqi
          apply hrc
          calc
            r = q % 4 := hparts.2.symm
            _ = twentyMillionOddFinite19RootNat roots i 0 := hqi
            _ = common := hroot i
        · exact hsource.2
      have hcard :
          ((mod4Part source r).card : Rat) ≤
            ((twentyMillionOddFinite19FixedTwoOfThree
              length r roots).card : Rat) := by
        exact_mod_cast Finset.card_le_card hsubset
      simpa [hrc] using hcard.trans
        (twentyMillionOddFinite19FixedTwoOfThree_card_rat_le
          length r hr roots)
  have hzero := hpart 0 (by norm_num)
  have hone := hpart 1 (by norm_num)
  have htwo := hpart 2 (by norm_num)
  have hthree := hpart 3 (by norm_num)
  have hsumNat := mod4_four_card_sum source
  have hsum :
      (source.card : Rat) =
        ((mod4Part source 0).card : Rat) +
        ((mod4Part source 1).card : Rat) +
        ((mod4Part source 2).card : Rat) +
        ((mod4Part source 3).card : Rat) := by
    exact_mod_cast hsumNat.symm
  dsimp [source] at hsum hzero hone htwo hthree ⊢
  interval_cases hcommon : common <;>
    simp [hcommon] at hzero hone htwo hthree <;>
    linarith

private def twentyMillionOddFinite19PairThird (pair : Fin 3) : Fin 3 :=
  ![2, 1, 0] pair

private def twentyMillionOddFinite19PairShared (pair : Fin 3) : Fin 3 :=
  ![0, 0, 1] pair

private theorem twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair_core
    (length : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (pair : Fin 3)
    (hpair :
      pair = twentyMillionOddFinite19ClosePair
        (twentyMillionOddFinite19RootPatternAt roots 0))
    (shared third : Nat)
    (hsharedLt : shared < 4) (hthirdLt : third < 4)
    (hneq : shared ≠ third)
    (hroot : ∀ i : Fin 3,
      twentyMillionOddFinite19RootNat roots i 0 =
        if i = twentyMillionOddFinite19PairThird pair then
          third
        else shared) :
    (((Finset.range length).filter fun q =>
        2 ≤ e1FiniteBadCount
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) ≤
      (length : Rat) *
        ((1 : Rat) / 4 +
          twentyMillionOddFinite19PairUnionDensityRat
            (twentyMillionOddFinite19RootPatternAt roots 0)
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 4 +
          2 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 4)) +
        5 +
        twentyMillionOddFinite19PairUnionEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        2 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  classical
  let source := (Finset.range length).filter fun q =>
    2 ≤ e1FiniteBadCount
      (twentyMillionOddFinite19RootBad roots) q
  have hpart (r : Nat) (hr : r < 4) :
      ((mod4Part source r).card : Rat) ≤
        if r = shared then
          (length : Rat) / 4 + 1
        else if r = third then
          (length : Rat) *
              (twentyMillionOddFinite19PairUnionDensityRat
                (twentyMillionOddFinite19RootPatternAt roots 0)
                (twentyMillionOddFinite19RootPatternAt roots 1)
                (twentyMillionOddFinite19RootPatternAt roots 2)
                (twentyMillionOddFinite19RootPatternAt roots 3)
                (twentyMillionOddFinite19RootPatternAt roots 4)
                (twentyMillionOddFinite19RootPatternAt roots 5)
                (twentyMillionOddFinite19RootPatternAt roots 6) / 4) +
            twentyMillionOddFinite19PairUnionEndpointRat
              (twentyMillionOddFinite19RootPatternAt roots 0)
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6)
        else
          (length : Rat) *
              (twentyMillionOddFinite19OddTwoOfThreeDensityRat
                (twentyMillionOddFinite19RootPatternAt roots 1)
                (twentyMillionOddFinite19RootPatternAt roots 2)
                (twentyMillionOddFinite19RootPatternAt roots 3)
                (twentyMillionOddFinite19RootPatternAt roots 4)
                (twentyMillionOddFinite19RootPatternAt roots 5)
                (twentyMillionOddFinite19RootPatternAt roots 6) / 4) +
            twentyMillionOddFinite19OddTwoOfThreeEndpointRat
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6) := by
    by_cases hrs : r = shared
    · subst r
      have hsubset :
          mod4Part source shared ⊆
            twentyMillionOddFinite19FixedFiber length shared := by
        intro q hq
        have hparts := Finset.mem_filter.mp hq
        have hsource := Finset.mem_filter.mp hparts.1
        exact Finset.mem_filter.mpr ⟨hsource.1, hparts.2⟩
      have hcard :
          ((mod4Part source shared).card : Rat) ≤
            ((twentyMillionOddFinite19FixedFiber
              length shared).card : Rat) := by
        exact_mod_cast Finset.card_le_card hsubset
      simpa using hcard.trans
        (twentyMillionOddFinite19FixedFiber_card_rat_le
          length shared hsharedLt)
    · by_cases hrt : r = third
      · subst r
        have hsubset :
            mod4Part source third ⊆
              twentyMillionOddFinite19FixedPairUnion
                length third roots pair := by
          intro q hq
          have hparts := Finset.mem_filter.mp hq
          have hsource := Finset.mem_filter.mp hparts.1
          apply Finset.mem_filter.mpr
          refine ⟨Finset.mem_filter.mpr
            ⟨hsource.1, hparts.2⟩, ?_⟩
          have hroot0 := hroot 0
          have hroot1 := hroot 1
          have hroot2 := hroot 2
          have hfull := hsource.2
          fin_cases pair
          · change ¬
              (¬ twentyMillionOddFinite19OddRootBad roots 0 q ∧
                ¬ twentyMillionOddFinite19OddRootBad roots 1 q)
            rintro ⟨hodd0, hodd1⟩
            simp [twentyMillionOddFinite19PairThird] at hroot0 hroot1 hroot2
            have hbad0 :
                ¬ twentyMillionOddFinite19RootBad roots 0 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot0, hrs, hodd0]
            have hbad1 :
                ¬ twentyMillionOddFinite19RootBad roots 1 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot1, hrs, hodd1]
            simp [e1FiniteBadCount, hbad0, hbad1] at hfull
            by_cases hbad2' :
                twentyMillionOddFinite19RootBad roots 2 q <;>
              simp [hbad2'] at hfull
          · change ¬
              (¬ twentyMillionOddFinite19OddRootBad roots 0 q ∧
                ¬ twentyMillionOddFinite19OddRootBad roots 2 q)
            rintro ⟨hodd0, hodd2⟩
            simp [twentyMillionOddFinite19PairThird] at hroot0 hroot1 hroot2
            have hbad0 :
                ¬ twentyMillionOddFinite19RootBad roots 0 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot0, hrs, hodd0]
            have hbad2 :
                ¬ twentyMillionOddFinite19RootBad roots 2 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot2, hrs, hodd2]
            simp [e1FiniteBadCount, hbad0, hbad2] at hfull
            by_cases hbad1' :
                twentyMillionOddFinite19RootBad roots 1 q <;>
              simp [hbad1'] at hfull
          · change ¬
              (¬ twentyMillionOddFinite19OddRootBad roots 1 q ∧
                ¬ twentyMillionOddFinite19OddRootBad roots 2 q)
            rintro ⟨hodd1, hodd2⟩
            simp [twentyMillionOddFinite19PairThird] at hroot0 hroot1 hroot2
            have hbad1 :
                ¬ twentyMillionOddFinite19RootBad roots 1 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot1, hrs, hodd1]
            have hbad2 :
                ¬ twentyMillionOddFinite19RootBad roots 2 q := by
              simp [twentyMillionOddFinite19RootBad_iff_primeTwo_or_odd,
                hparts.2, hroot2, hrs, hodd2]
            simp [e1FiniteBadCount, hbad1, hbad2] at hfull
            by_cases hbad0' :
                twentyMillionOddFinite19RootBad roots 0 q <;>
              simp [hbad0'] at hfull
        have hcard :
            ((mod4Part source third).card : Rat) ≤
              ((twentyMillionOddFinite19FixedPairUnion
                length third roots pair).card : Rat) := by
          exact_mod_cast Finset.card_le_card hsubset
        have hbound :=
          twentyMillionOddFinite19FixedPairUnion_card_rat_le
            length third hthirdLt roots
        rw [← hpair] at hbound
        simpa [hrs] using hcard.trans hbound
      · have hsubset :
            mod4Part source r ⊆
              twentyMillionOddFinite19FixedTwoOfThree
                length r roots := by
          intro q hq
          have hparts := Finset.mem_filter.mp hq
          have hsource := Finset.mem_filter.mp hparts.1
          apply Finset.mem_filter.mpr
          refine ⟨Finset.mem_filter.mpr
            ⟨hsource.1, hparts.2⟩, ?_⟩
          apply twentyMillionOddFinite19OddTwoOfThree_of_no_primeTwo
            roots q
          · intro i hqi
            have hi := hroot i
            split at hi
            · apply hrt
              calc
                r = q % 4 := hparts.2.symm
                _ = twentyMillionOddFinite19RootNat roots i 0 := hqi
                _ = third := hi
            · apply hrs
              calc
                r = q % 4 := hparts.2.symm
                _ = twentyMillionOddFinite19RootNat roots i 0 := hqi
                _ = shared := hi
          · exact hsource.2
        have hcard :
            ((mod4Part source r).card : Rat) ≤
              ((twentyMillionOddFinite19FixedTwoOfThree
                length r roots).card : Rat) := by
          exact_mod_cast Finset.card_le_card hsubset
        simpa [hrs, hrt] using hcard.trans
          (twentyMillionOddFinite19FixedTwoOfThree_card_rat_le
            length r hr roots)
  have hzero := hpart 0 (by norm_num)
  have hone := hpart 1 (by norm_num)
  have htwo := hpart 2 (by norm_num)
  have hthree := hpart 3 (by norm_num)
  have hsumNat := mod4_four_card_sum source
  have hsum :
      (source.card : Rat) =
        ((mod4Part source 0).card : Rat) +
        ((mod4Part source 1).card : Rat) +
        ((mod4Part source 2).card : Rat) +
        ((mod4Part source 3).card : Rat) := by
    exact_mod_cast hsumNat.symm
  dsimp [source] at hsum hzero hone htwo hthree ⊢
  interval_cases hshared : shared <;>
    interval_cases hthird : third <;>
      simp_all <;>
      linarith

theorem twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair
    (length : Nat)
    (roots : TwentyMillionOddFinite19PivotRootFamily)
    (hpattern :
      twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .secondThird) :
    (((Finset.range length).filter fun q =>
        2 ≤ e1FiniteBadCount
          (twentyMillionOddFinite19RootBad roots) q).card : Rat) ≤
      (length : Rat) *
        ((1 : Rat) / 4 +
          twentyMillionOddFinite19PairUnionDensityRat
            (twentyMillionOddFinite19RootPatternAt roots 0)
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 4 +
          2 * (twentyMillionOddFinite19OddTwoOfThreeDensityRat
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 4)) +
        5 +
        twentyMillionOddFinite19PairUnionEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        2 * twentyMillionOddFinite19OddTwoOfThreeEndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
  let pair := twentyMillionOddFinite19ClosePair
    (twentyMillionOddFinite19RootPatternAt roots 0)
  have hfacts :=
    twentyMillionOddFinite19PairPattern_facts roots hpattern
  change
      (pair = 0 ∧
          twentyMillionOddFinite19RootNat roots 0 0 =
            twentyMillionOddFinite19RootNat roots 1 0 ∧
          twentyMillionOddFinite19RootNat roots 0 0 ≠
            twentyMillionOddFinite19RootNat roots 2 0) ∨
        (pair = 1 ∧
          twentyMillionOddFinite19RootNat roots 0 0 =
            twentyMillionOddFinite19RootNat roots 2 0 ∧
          twentyMillionOddFinite19RootNat roots 0 0 ≠
            twentyMillionOddFinite19RootNat roots 1 0) ∨
        (pair = 2 ∧
          twentyMillionOddFinite19RootNat roots 1 0 =
            twentyMillionOddFinite19RootNat roots 2 0 ∧
          twentyMillionOddFinite19RootNat roots 1 0 ≠
            twentyMillionOddFinite19RootNat roots 0 0) at hfacts
  rcases hfacts with
      ⟨hpair, heq, hne⟩ |
      ⟨hpair, heq, hne⟩ |
      ⟨hpair, heq, hne⟩
  · apply twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair_core
      length roots 0 hpair.symm
      (twentyMillionOddFinite19RootNat roots 0 0)
      (twentyMillionOddFinite19RootNat roots 2 0)
      (twentyMillionOddFinite19RootFour_lt roots 0)
      (twentyMillionOddFinite19RootFour_lt roots 2)
      hne
    intro i
    fin_cases i <;>
      simp [twentyMillionOddFinite19PairThird, heq]
  · apply twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair_core
      length roots 1 hpair.symm
      (twentyMillionOddFinite19RootNat roots 0 0)
      (twentyMillionOddFinite19RootNat roots 1 0)
      (twentyMillionOddFinite19RootFour_lt roots 0)
      (twentyMillionOddFinite19RootFour_lt roots 1)
      hne
    intro i
    fin_cases i <;>
      simp [twentyMillionOddFinite19PairThird, heq]
  · apply twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair_core
      length roots 2 hpair.symm
      (twentyMillionOddFinite19RootNat roots 1 0)
      (twentyMillionOddFinite19RootNat roots 0 0)
      (twentyMillionOddFinite19RootFour_lt roots 1)
      (twentyMillionOddFinite19RootFour_lt roots 0)
      hne
    intro i
    fin_cases i <;>
      simp [twentyMillionOddFinite19PairThird, heq]

#print axioms twentyMillionOddFinite19FixedFiber_card_rat_le
#print axioms twentyMillionOddFinite19RootTwoPrefix_card_rat_le_allEqual
#print axioms twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair

end Erdos848
