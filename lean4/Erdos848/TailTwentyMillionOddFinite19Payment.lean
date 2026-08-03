import Erdos848.TailTwentyMillionOddFinite19PrefixBound
import Erdos848.TailTwentyMillionOddFinite19Certificate
import Erdos848.TailTwentyMillionOddFinite19ModNineCover
import Erdos848.TailTwentyMillionOddFinite19PaymentTwo
import Erdos848.TailTwentyMillionOddFinite19PaymentOne
import Erdos848.TailR263EvenOneFinite23HallPayment

namespace Erdos848

open TwentyMillion

/-!
# Literal odd cutoff-19 Hall payments

This is the semantic interpretation of the generated odd certificates.
Their inputs are finite root-pattern inequalities; all Hall events, quotient
injections, mod-four fibres, and divisions by `N` are proved here in Lean.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

attribute [local instance] Classical.propDecidable

/-
private theorem twentyMillionOddFinite19Prefix_ratio_le
    {N count : Nat} {density endpoint : Rat}
    (hLower : 20_000_000 ≤ N)
    (hdensity : 0 ≤ density)
    (hendpoint : 0 ≤ endpoint)
    (hcount : (count : Rat) ≤
      ((N / 25 + 1 : Nat) : Rat) * density + endpoint) :
    (count : Rat) / N ≤
      density / 25 + (density + endpoint) / 20_000_000 := by
  have hNposNat : 0 < N := by omega
  have hNpos : (0 : Rat) < N := by exact_mod_cast hNposNat
  have hdiv : (((N / 25 : Nat) : Rat)) ≤ (N : Rat) / 25 :=
    Nat.cast_div_le
  have hlength :
      (((N / 25 + 1 : Nat) : Rat)) ≤ (N : Rat) / 25 + 1 := by
    norm_num at hdiv ⊢
    linarith
  have hraw :
      (count : Rat) ≤ ((N : Rat) / 25 + 1) * density + endpoint :=
    hcount.trans (add_le_add
      (mul_le_mul_of_nonneg_right hlength hdensity) le_rfl)
  have hsum : 0 ≤ density + endpoint :=
    add_nonneg hdensity hendpoint
  have hLowerQ : (20_000_000 : Rat) ≤ N := by
    exact_mod_cast hLower
  have hmonotone :
      (density + endpoint) / (N : Rat) ≤
        (density + endpoint) / 20_000_000 :=
    div_le_div_of_nonneg_left hsum (by norm_num) hLowerQ
  calc
    (count : Rat) / N ≤
        (((N : Rat) / 25 + 1) * density + endpoint) / N :=
      div_le_div_of_nonneg_right hraw hNpos.le
    _ = density / 25 + (density + endpoint) / N := by
      field_simp [ne_of_gt hNpos]
      ring
    _ ≤ density / 25 + (density + endpoint) / 20_000_000 := by
      gcongr

private theorem twentyMillionOddFinite19_add_linear_bounds
    (length firstDensity secondDensity firstEndpoint secondEndpoint : Rat) :
    (length * firstDensity + firstEndpoint) +
        (length * secondDensity + secondEndpoint) =
      length * (firstDensity + secondDensity) +
        (firstEndpoint + secondEndpoint) := by
  ring

private theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (baseResidue target : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q)
    (hp2 :
      twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstSecond ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .firstThird ∨
        twentyMillionOddFinite19RootPatternAt roots 0 =
          .secondThird)
    (hcert :
      0 ≤ twentyMillionOddTwoFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) ∧
        twentyMillionOddTwoFinite19DensityRat
            (twentyMillionOddFinite19RootPatternAt roots 0)
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 25 +
          (twentyMillionOddTwoFinite19DensityRat
              (twentyMillionOddFinite19RootPatternAt roots 0)
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6) +
            twentyMillionOddTwoFinite19EndpointRat
              (twentyMillionOddFinite19RootPatternAt roots 0)
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6)) /
            20_000_000 ≤
          (target : Rat) / 1_000_000) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      (target : Rat) / 1_000_000 := by
  let length := N / 25 + 1
  have hallNat :=
    twentyMillionOddFinite19ActualAllThreeResidue_card_le_rootPrefix
      hBout
      (twentyMillionOddTwo_pivots_subset_residual triple)
      (twentyMillionOddTwo_pivots_odd triple)
      triple.card hextends
  have htwoNat :=
    twentyMillionOddFinite19ActualTwoOfThreeResidue_card_le_rootPrefix
      hBout
      (twentyMillionOddTwo_pivots_subset_residual triple)
      (twentyMillionOddTwo_pivots_odd triple)
      triple.card hextends
  have hallActual :
      ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) ≤
        ((twentyMillionOddFinite19RootAllThreePrefix
          N roots).card : Rat) := by
    exact_mod_cast hallNat
  have htwoActual :
      ((twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card : Rat) ≤
        ((twentyMillionOddFinite19RootTwoOfThreePrefix
          N roots).card : Rat) := by
    exact_mod_cast htwoNat
  have hallBound :=
    twentyMillionOddFinite19RootAllThreePrefix_card_rat_le
      length roots
  have htwoBound :=
    twentyMillionOddFinite19RootTwoPrefix_card_rat_le_pair
      length roots hp2
  have hraw :
      ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card ≤
      (length : Rat) *
        twentyMillionOddTwoFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        twentyMillionOddTwoFinite19EndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 0)
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
    calc
      _ ≤
          ((twentyMillionOddFinite19RootAllThreePrefix
              N roots).card : Rat) +
            ((twentyMillionOddFinite19RootTwoOfThreePrefix
              N roots).card : Rat) :=
        add_le_add hallActual htwoActual
      _ ≤ _ := add_le_add hallBound htwoBound
      _ = _ := by
        rw [twentyMillionOddTwoFinite19Density_decomposition,
          twentyMillionOddTwoFinite19Endpoint_decomposition]
        apply twentyMillionOddFinite19_add_linear_bounds
  have hendpoint :
      0 ≤ twentyMillionOddTwoFinite19EndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 0)
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) := by
    unfold twentyMillionOddTwoFinite19EndpointRat
    positivity
  have hprefix := twentyMillionOddFinite19Prefix_ratio_le
    (count :=
      (twentyMillionOddFinite19ActualAllThreeResidue
        N triple.pivots baseResidue).card +
      (twentyMillionOddFinite19ActualTwoOfThreeResidue
        N triple.pivots baseResidue).card)
    hLower hcert.1 hendpoint (by
      simpa only [length, Nat.cast_add] using hraw)
  simpa only [Nat.cast_add] using hprefix.trans hcert.2

private theorem twentyMillionOddOneFinite19ActualResidue_ratio_le
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (baseResidue target : Nat)
    {roots : TwentyMillionOddFinite19PivotRootFamily}
    (hextends : ∀ index i q,
      twentyMillionOddFinite19ActualPartialRoots
          baseResidue triple.pivots triple.card index i = some q →
        roots i index = q)
    (hp2 :
      twentyMillionOddFinite19RootPatternAt roots 0 = .allEqual)
    (hcert :
      0 ≤ twentyMillionOddOneFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) ∧
        twentyMillionOddOneFinite19DensityRat
            (twentyMillionOddFinite19RootPatternAt roots 1)
            (twentyMillionOddFinite19RootPatternAt roots 2)
            (twentyMillionOddFinite19RootPatternAt roots 3)
            (twentyMillionOddFinite19RootPatternAt roots 4)
            (twentyMillionOddFinite19RootPatternAt roots 5)
            (twentyMillionOddFinite19RootPatternAt roots 6) / 25 +
          (twentyMillionOddOneFinite19DensityRat
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6) +
            twentyMillionOddOneFinite19EndpointRat
              (twentyMillionOddFinite19RootPatternAt roots 1)
              (twentyMillionOddFinite19RootPatternAt roots 2)
              (twentyMillionOddFinite19RootPatternAt roots 3)
              (twentyMillionOddFinite19RootPatternAt roots 4)
              (twentyMillionOddFinite19RootPatternAt roots 5)
              (twentyMillionOddFinite19RootPatternAt roots 6)) /
            20_000_000 ≤
          (target : Rat) / 1_000_000) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      (target : Rat) / 1_000_000 := by
  let length := N / 25 + 1
  have hallNat :=
    twentyMillionOddFinite19ActualAllThreeResidue_card_le_rootPrefix
      hBout
      (twentyMillionOddOne_pivots_subset_residual triple)
      (twentyMillionOddOne_pivots_odd triple)
      triple.card hextends
  have htwoNat :=
    twentyMillionOddFinite19ActualTwoOfThreeResidue_card_le_rootPrefix
      hBout
      (twentyMillionOddOne_pivots_subset_residual triple)
      (twentyMillionOddOne_pivots_odd triple)
      triple.card hextends
  have hallActual :
      ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) ≤
        ((twentyMillionOddFinite19RootAllThreePrefix
          N roots).card : Rat) := by
    exact_mod_cast hallNat
  have htwoActual :
      ((twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card : Rat) ≤
        ((twentyMillionOddFinite19RootTwoOfThreePrefix
          N roots).card : Rat) := by
    exact_mod_cast htwoNat
  have hallBound :=
    twentyMillionOddFinite19RootAllThreePrefix_card_rat_le
      length roots
  have htwoBound :=
    twentyMillionOddFinite19RootTwoPrefix_card_rat_le_allEqual
      length roots hp2
  have hraw :
      ((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card ≤
      (length : Rat) *
        twentyMillionOddOneFinite19DensityRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) +
        twentyMillionOddOneFinite19EndpointRat
          (twentyMillionOddFinite19RootPatternAt roots 1)
          (twentyMillionOddFinite19RootPatternAt roots 2)
          (twentyMillionOddFinite19RootPatternAt roots 3)
          (twentyMillionOddFinite19RootPatternAt roots 4)
          (twentyMillionOddFinite19RootPatternAt roots 5)
          (twentyMillionOddFinite19RootPatternAt roots 6) := by
    calc
      _ ≤
          ((twentyMillionOddFinite19RootAllThreePrefix
              N roots).card : Rat) +
            ((twentyMillionOddFinite19RootTwoOfThreePrefix
              N roots).card : Rat) :=
        add_le_add hallActual htwoActual
      _ ≤ _ := add_le_add hallBound htwoBound
      _ = _ := by
        rw [twentyMillionOddOneFinite19Density_decomposition,
          twentyMillionOddOneFinite19Endpoint_decomposition]
        apply twentyMillionOddFinite19_add_linear_bounds
  have hendpoint :
      0 ≤ twentyMillionOddOneFinite19EndpointRat
        (twentyMillionOddFinite19RootPatternAt roots 1)
        (twentyMillionOddFinite19RootPatternAt roots 2)
        (twentyMillionOddFinite19RootPatternAt roots 3)
        (twentyMillionOddFinite19RootPatternAt roots 4)
        (twentyMillionOddFinite19RootPatternAt roots 5)
        (twentyMillionOddFinite19RootPatternAt roots 6) := by
    unfold twentyMillionOddOneFinite19EndpointRat
    positivity
  have hprefix := twentyMillionOddFinite19Prefix_ratio_le
    (count :=
      (twentyMillionOddFinite19ActualAllThreeResidue
        N triple.pivots baseResidue).card +
      (twentyMillionOddFinite19ActualTwoOfThreeResidue
        N triple.pivots baseResidue).card)
    hLower hcert.1 hendpoint (by
      simpa only [length, Nat.cast_add] using hraw)
  simpa only [Nat.cast_add] using hprefix.trans hcert.2

theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      19_420 / 1_000_000 := by
  have hnoncommon :
      ¬ ∃ residue : Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt triple.pivots triple.card i %
            twentyMillionOddFinite19Modulus 1 = residue.val := by
    intro hresidue
    exact hnonconstant
      ((twentyMillionOddTwo_commonModNine_iff_residue triple).2
        hresidue)
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
      (baseResidue := baseResidue) hnoncommon
  have hp2 :=
    twentyMillionOddTwoActual_primeTwoPattern
      triple baseResidue hextends
  exact twentyMillionOddTwoFinite19ActualResidue_ratio_le
    hLower hBout triple baseResidue 19_420 hextends hp2
      (twentyMillionOddTwoFinite19Generic_certificate
        _ _ _ _ _ _ _ hp2 hp3)

theorem twentyMillionOddTwoFinite19ActualResidue_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hcommon : triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      20_878 / 1_000_000 := by
  have hresidue :=
    (twentyMillionOddTwo_commonModNine_iff_residue triple).1 hcommon
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_commonNine_root_cover
      (baseResidue := baseResidue) hresidue
  have hp2 :=
    twentyMillionOddTwoActual_primeTwoPattern
      triple baseResidue hextends
  exact twentyMillionOddTwoFinite19ActualResidue_ratio_le
    hLower hBout triple baseResidue 20_878 hextends hp2
      (twentyMillionOddTwoFinite19Common_certificate
        _ _ _ _ _ _ hp2)

theorem twentyMillionOddOneFinite19ActualResidue_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      26_643 / 1_000_000 := by
  have hnoncommon :
      ¬ ∃ residue : Fin (twentyMillionOddFinite19Modulus 1),
        ∀ i : Fin 3,
          globalMixedThreePivotAt triple.pivots triple.card i %
            twentyMillionOddFinite19Modulus 1 = residue.val := by
    intro hresidue
    exact hnonconstant
      ((twentyMillionOddOne_commonModNine_iff_residue triple).2
        hresidue)
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_noncommonNine_root_cover
      (baseResidue := baseResidue) hnoncommon
  have hp2 :=
    twentyMillionOddOneActual_primeTwoPattern
      triple baseResidue hextends
  exact twentyMillionOddOneFinite19ActualResidue_ratio_le
    hLower hBout triple baseResidue 26_643 hextends hp2
      (twentyMillionOddOneFinite19Generic_certificate
        _ _ _ _ _ _ hp3)

theorem twentyMillionOddOneFinite19ActualResidue_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hcommon : triple.CommonModNine)
    (baseResidue : Nat) :
    (((twentyMillionOddFinite19ActualAllThreeResidue
          N triple.pivots baseResidue).card : Rat) +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N triple.pivots baseResidue).card) / N ≤
      29_459 / 1_000_000 := by
  have hresidue :=
    (twentyMillionOddOne_commonModNine_iff_residue triple).1 hcommon
  obtain ⟨roots, hextends, hp3⟩ :=
    twentyMillionOddFinite19Actual_exists_commonNine_root_cover
      (baseResidue := baseResidue) hresidue
  have hp2 :=
    twentyMillionOddOneActual_primeTwoPattern
      triple baseResidue hextends
  exact twentyMillionOddOneFinite19ActualResidue_ratio_le
    hLower hBout triple baseResidue 29_459 hextends hp2
      (twentyMillionOddOneFinite19Common_certificate
        _ _ _ _ _)
-/

private theorem twentyMillionOddFinite19HallBaseThreshold_card_le_residues
    (N : Nat) (B pivots : Finset Nat) (threshold : Nat) :
    ((hallBasePart N B).filter fun point =>
        threshold ≤ (pivots.filter fun pivot =>
          finiteSquarePrimeEvent 19 pivot point).card).card ≤
      ((lowBaseSet N).filter fun point =>
        point % 25 = 7 ∧
          threshold ≤ (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 19 pivot point).card).card +
      ((lowBaseSet N).filter fun point =>
        point % 25 = 18 ∧
          threshold ≤ (pivots.filter fun pivot =>
            finiteSquarePrimeEvent 19 pivot point).card).card := by
  classical
  let source := (hallBasePart N B).filter fun point =>
    threshold ≤ (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 19 pivot point).card
  let seven := (lowBaseSet N).filter fun point =>
    point % 25 = 7 ∧
      threshold ≤ (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card
  let eighteen := (lowBaseSet N).filter fun point =>
    point % 25 = 18 ∧
      threshold ≤ (pivots.filter fun pivot =>
        finiteSquarePrimeEvent 19 pivot point).card
  have hsubset : source ⊆ seven ∪ eighteen := by
    intro point hpoint
    have hparts := Finset.mem_filter.mp hpoint
    have hbase := (Finset.mem_inter.mp hparts.1).2
    rcases Finset.mem_union.mp hbase with hseven | heightteen
    · apply Finset.mem_union_left
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp hseven).2, hparts.2⟩
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      exact ⟨hbase, (Finset.mem_filter.mp heightteen).2, hparts.2⟩
  exact (Finset.card_le_card hsubset).trans
    (Finset.card_union_le seven eighteen)

private theorem twentyMillionOddFinite19Payment_ratio_le_of_residues
    {N : Nat} {B pivots : Finset Nat} {target : Rat}
    (hN : 0 < N)
    (hseven :
      (((twentyMillionOddFinite19ActualAllThreeResidue
            N pivots 7).card : Rat) +
          (twentyMillionOddFinite19ActualTwoOfThreeResidue
            N pivots 7).card) / N ≤ target)
    (heighteen :
      (((twentyMillionOddFinite19ActualAllThreeResidue
            N pivots 18).card : Rat) +
          (twentyMillionOddFinite19ActualTwoOfThreeResidue
            N pivots 18).card) / N ≤ target) :
    fiveMillionR263BaseMixedHalfPayment N B pivots 19 / N ≤ target := by
  classical
  let allThree := (hallBasePart N B).filter fun point =>
    3 ≤ (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 19 pivot point).card
  let twoOfThree := (hallBasePart N B).filter fun point =>
    2 ≤ (pivots.filter fun pivot =>
      finiteSquarePrimeEvent 19 pivot point).card
  have hallNat :
      allThree.card ≤
        (twentyMillionOddFinite19ActualAllThreeResidue
          N pivots 7).card +
        (twentyMillionOddFinite19ActualAllThreeResidue
          N pivots 18).card := by
    simpa [allThree,
      twentyMillionOddFinite19ActualAllThreeResidue] using
        twentyMillionOddFinite19HallBaseThreshold_card_le_residues
          N B pivots 3
  have htwoNat :
      twoOfThree.card ≤
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N pivots 7).card +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N pivots 18).card := by
    simpa [twoOfThree,
      twentyMillionOddFinite19ActualTwoOfThreeResidue] using
        twentyMillionOddFinite19HallBaseThreshold_card_le_residues
          N B pivots 2
  have hNQ : (0 : Rat) < N := by exact_mod_cast hN
  have hallRat :
      (allThree.card : Rat) ≤
        (twentyMillionOddFinite19ActualAllThreeResidue
          N pivots 7).card +
        (twentyMillionOddFinite19ActualAllThreeResidue
          N pivots 18).card := by
    exact_mod_cast hallNat
  have htwoRat :
      (twoOfThree.card : Rat) ≤
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N pivots 7).card +
        (twentyMillionOddFinite19ActualTwoOfThreeResidue
          N pivots 18).card := by
    exact_mod_cast htwoNat
  have hcombined :
      ((1 / 2 : Rat) *
          ((allThree.card : Rat) + (twoOfThree.card : Rat))) / N ≤
        (1 / 2 : Rat) *
          ((((twentyMillionOddFinite19ActualAllThreeResidue
                N pivots 7).card : Rat) +
              (twentyMillionOddFinite19ActualTwoOfThreeResidue
                N pivots 7).card) / N +
            (((twentyMillionOddFinite19ActualAllThreeResidue
                N pivots 18).card : Rat) +
              (twentyMillionOddFinite19ActualTwoOfThreeResidue
                N pivots 18).card) / N) := by
    calc
      ((1 / 2 : Rat) *
          ((allThree.card : Rat) + (twoOfThree.card : Rat))) / N ≤
        ((1 / 2 : Rat) *
          (((twentyMillionOddFinite19ActualAllThreeResidue
              N pivots 7).card : Rat) +
            (twentyMillionOddFinite19ActualAllThreeResidue
              N pivots 18).card +
            ((twentyMillionOddFinite19ActualTwoOfThreeResidue
              N pivots 7).card +
            (twentyMillionOddFinite19ActualTwoOfThreeResidue
              N pivots 18).card))) / N := by
          gcongr
      _ = _ := by ring
  unfold fiveMillionR263BaseMixedHalfPayment
  dsimp [allThree, twoOfThree] at hcombined ⊢
  linarith

theorem twentyMillionOddTwoFinite19Payment_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 19 / N ≤
      19_420 / 1_000_000 := by
  apply twentyMillionOddFinite19Payment_ratio_le_of_residues
    (by omega)
  · exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_generic
      hLower hBout triple hnonconstant 7
  · exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_generic
      hLower hBout triple hnonconstant 18

theorem twentyMillionOddTwoFinite19Payment_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddTwoCloseTriple N B parity)
    (hcommon : triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 19 / N ≤
      20_878 / 1_000_000 := by
  apply twentyMillionOddFinite19Payment_ratio_le_of_residues
    (by omega)
  · exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_common
      hLower hBout triple hcommon 7
  · exact twentyMillionOddTwoFinite19ActualResidue_ratio_le_common
      hLower hBout triple hcommon 18

theorem twentyMillionOddOneFinite19Payment_ratio_le_generic
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hnonconstant : ¬ triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 19 / N ≤
      26_643 / 1_000_000 := by
  apply twentyMillionOddFinite19Payment_ratio_le_of_residues
    (by omega)
  · exact twentyMillionOddOneFinite19ActualResidue_ratio_le_generic
      hLower hBout triple hnonconstant 7
  · exact twentyMillionOddOneFinite19ActualResidue_ratio_le_generic
      hLower hBout triple hnonconstant 18

theorem twentyMillionOddOneFinite19Payment_ratio_le_common
    {N : Nat} {B : Finset Nat} {parity : Bool}
    (hLower : 20_000_000 ≤ N)
    (hBout : Erdos848OutsideSet N B)
    (triple : TwentyMillionOddOneCloseTriple N B parity)
    (hcommon : triple.CommonModNine) :
    fiveMillionR263BaseMixedHalfPayment
        N B triple.pivots 19 / N ≤
      29_459 / 1_000_000 := by
  apply twentyMillionOddFinite19Payment_ratio_le_of_residues
    (by omega)
  · exact twentyMillionOddOneFinite19ActualResidue_ratio_le_common
      hLower hBout triple hcommon 7
  · exact twentyMillionOddOneFinite19ActualResidue_ratio_le_common
      hLower hBout triple hcommon 18

end Erdos848
