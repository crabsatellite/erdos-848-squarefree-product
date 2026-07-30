import Erdos848.TailFortyMillionRootCoefficientSound
import Erdos848.TailGlobalMixedSupportComplete
import Erdos848.TailFortyMillionSupplementalPrefixes
import Erdos848.TailGlobalMixedActualSurvivors
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.Certificate
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.Certificate

namespace Erdos848

/-! Finite-product root-coefficient rows for literal support lists. -/

set_option maxRecDepth 1000000

theorem mixedSupport_length_le_seven_of_prod_lt_twoHundredMillion
    (support : List Nat)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod < 200_000_000) :
    support.length <= 7 := by
  by_contra hLength
  have hEight : 8 <= support.length := by omega
  obtain ⟨p0, p1, p2, p3, p4, p5, p6, p7, rest, rfl⟩ :
      exists p0 p1 p2 p3 p4 p5 p6 p7 rest,
        support = p0 :: p1 :: p2 :: p3 :: p4 :: p5 :: p6 :: p7 :: rest := by
    match support with
    | p0 :: p1 :: p2 :: p3 :: p4 :: p5 :: p6 :: p7 :: rest =>
        exact ⟨p0, p1, p2, p3, p4, p5, p6, p7, rest, rfl⟩
    | [] | [_] | [_, _] | [_, _, _] | [_, _, _, _] |
      [_, _, _, _, _] | [_, _, _, _, _, _] |
      [_, _, _, _, _, _, _] =>
        simp at hEight
  have hp0 := hPrimes p0 (by simp)
  have hp1 := hPrimes p1 (by simp)
  have hp2 := hPrimes p2 (by simp)
  have hp3 := hPrimes p3 (by simp)
  have hp4 := hPrimes p4 (by simp)
  have hp5 := hPrimes p5 (by simp)
  have hp6 := hPrimes p6 (by simp)
  have hp7 := hPrimes p7 (by simp)
  simp only [List.pairwise_cons] at hIncreasing
  have h01 : p0 < p1 := hIncreasing.1 p1 (by simp)
  have h12 : p1 < p2 := hIncreasing.2.1 p2 (by simp)
  have h23 : p2 < p3 := hIncreasing.2.2.1 p3 (by simp)
  have h34 : p3 < p4 := hIncreasing.2.2.2.1 p4 (by simp)
  have h45 : p4 < p5 := hIncreasing.2.2.2.2.1 p5 (by simp)
  have h56 : p5 < p6 := hIncreasing.2.2.2.2.2.1 p6 (by simp)
  have h67 : p6 < p7 := hIncreasing.2.2.2.2.2.2.1 p7 (by simp)
  have hp0Lower : 3 <= p0 := by
    have hpTwo := hp0.1.two_le
    have hpNotTwo : p0 ≠ 2 := by
      intro h
      subst p0
      norm_num [FiveMillionSupportPrime] at hp0
    omega
  have hp1Lower : 7 <= p1 := by
    by_contra h
    interval_cases p1 <;>
      norm_num [FiveMillionSupportPrime] at hp1 <;> omega
  have hp2Lower : 11 <= p2 := by
    by_contra h
    interval_cases p2 <;>
      norm_num [FiveMillionSupportPrime] at hp2 <;> omega
  have hp3Lower : 13 <= p3 := by
    by_contra h
    interval_cases p3 <;>
      norm_num [FiveMillionSupportPrime] at hp3 <;> omega
  have hp4Lower : 17 <= p4 := by
    by_contra h
    interval_cases p4 <;>
      norm_num [FiveMillionSupportPrime] at hp4 <;> omega
  have hp5Lower : 19 <= p5 := by
    by_contra h
    interval_cases p5 <;>
      norm_num [FiveMillionSupportPrime] at hp5 <;> omega
  have hp6Lower : 23 <= p6 := by
    by_contra h
    interval_cases p6 <;>
      norm_num [FiveMillionSupportPrime] at hp6 <;> omega
  have hp7Lower : 29 <= p7 := by
    by_contra h
    interval_cases p7 <;>
      norm_num [FiveMillionSupportPrime] at hp7 <;> omega
  have hPrefix :
      646_969_323 <= p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 := by
    calc
      646_969_323 = 3 * 7 * 11 * 13 * 17 * 19 * 23 * 29 := by norm_num
      _ <= p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 := by gcongr
  have hRestPositive : 0 < rest.prod := List.prod_pos fun p hp =>
    (hPrimes p (by simp [hp])).1.pos
  have hFull :
      646_969_323 <=
        p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 * rest.prod := by
    calc
      646_969_323 <= p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 := hPrefix
      _ = p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 * 1 := by simp
      _ <= p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 * rest.prod := by
        exact Nat.mul_le_mul_left _
          (show 1 <= rest.prod from hRestPositive)
  have hProduct' :
      p0 * p1 * p2 * p3 * p4 * p5 * p6 * p7 * rest.prod <
        200_000_000 := by
    simpa only [List.prod_cons, Nat.mul_assoc] using hProduct
  omega

theorem actualFiniteMixedSupport_rootCoefficientRows
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N)
    (hUpper : N < 200_000_000)
    (hk : support.length <= 8)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N)
    (hFinite : support.prod <
      globalMixedSupportProductThreshold support.length) :
    let supportPrefix := support.dropLast
    let maskedSupport :=
      supportPrefix.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords support.length ->
        coefficient <=
          GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
            N rootClass := by
  have hRetained : ∀ p ∈ support.dropLast, p < 9161 :=
    mixedSupport_dropLast_lt_9161 hk support rfl hPrimes
      hIncreasing hFinite
  have hDomain :
      ∀ p ∈ support.dropLast,
        p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedSupportPrimes := by
    intro p hp
    have hpSupport : p ∈ support := List.dropLast_subset support hp
    have hpLt : p < 9161 := hRetained p hp
    have hpKernel := mem_globalMixedKernelSupportPrimes_of_supportPrime
      (hPrimes p hpSupport) (show p <= 9161 by omega)
    rcases List.mem_append.mp hpKernel with hpMixed | hpSentinel
    · exact hpMixed
    · simp only [List.mem_singleton] at hpSentinel
      omega
  have hEndpoint : globalMixedSupportEndpoint support.dropLast <= N :=
    globalMixedSupportEndpoint_le support hN hPrimes hIncreasing
      hProduct hDomain
  have hEndpointUpper :
      globalMixedSupportEndpoint support.dropLast < 200_000_000 :=
    hEndpoint.trans_lt hUpper
  have hmem : support.dropLast ∈
      globalMixedFeasiblePrefixesKernel support.length :=
    actualMixedSupport_dropLast_mem_globalFeasible hk support rfl
      hPrimes hIncreasing hFinite
  have hkSeven := mixedSupport_length_le_seven_of_prod_lt_twoHundredMillion
    support hPrimes hIncreasing (hProduct.trans_lt hUpper)
  have hpass : fortyMillionRootPrefixPasses
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
      support.length support.dropLast = true := by
    by_cases hkLow : support.length <= 3
    · exact fortyMillionLowFeasibleRootPrefixPasses hkLow hmem
    · exact GeneratedFortyMillionActualRootCoefficientCoverage.actualRootCoefficientPass
        (by omega) hkSeven hmem hEndpointUpper
  have hsound := fortyMillionRootPrefixPasses_sound
    hEndpointUpper hpass
  dsimp only at hsound ⊢
  intro rootClass hroot coefficient hcoefficient
  exact (hsound rootClass hroot coefficient hcoefficient).trans
    (fortyMillionCoefficientCeiling_mono hEndpoint rootClass)

theorem fortyMillionRootCoefficientRows_of_globalMem
    {N k : Nat} {supportPrefix : List Nat}
    (hUpper : N < 200_000_000)
    (hk : k <= 3)
    (hEndpoint : globalMixedSupportEndpoint supportPrefix <= N)
    (hmem : supportPrefix ∈ globalMixedFeasiblePrefixesKernel k) :
    let maskedSupport :=
      supportPrefix.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords k ->
        coefficient <=
          GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
            N rootClass := by
  have hpass := fortyMillionLowFeasibleRootPrefixPasses hk hmem
  have hsound := fortyMillionRootPrefixPasses_sound
    (hEndpoint.trans_lt hUpper) hpass
  dsimp only at hsound ⊢
  intro rootClass hroot coefficient hcoefficient
  exact (hsound rootClass hroot coefficient hcoefficient).trans
    (fortyMillionCoefficientCeiling_mono hEndpoint rootClass)

theorem fortyMillionSupplementalActualRootCoefficientRows
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N)
    (hUpper : N < 200_000_000)
    (hkLower : 2 <= support.length) (hkUpper : support.length <= 3)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N)
    (hnotGlobal :
      support.dropLast ∉ globalMixedFeasiblePrefixesKernel support.length) :
    let maskedSupport :=
      support.dropLast.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords support.length ->
        coefficient <=
          GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
            N rootClass := by
  have hpass : fortyMillionRootCorePrefixPasses
      GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
      support.length 5_000_000 support.dropLast = true := by
    by_cases hkTwo : support.length = 2
    · obtain ⟨p, q, rfl⟩ : ∃ p q, support = [p, q] := by
        match support with
        | [p, q] => exact ⟨p, q, rfl⟩
        | [] | [_] | _ :: _ :: _ :: _ => simp at hkTwo
      have hp : FiveMillionSupportPrime p := hPrimes p (by simp)
      have hpLarge : 2843 < p := by
        by_contra hpNot
        have hpUpper : p <= 2843 := by omega
        exact hnotGlobal
          (single_support_prefix_mem_global_of_le_2843 hp hpUpper)
      have hpNot : ¬p <= 2843 := by omega
      change fortyMillionRootCorePrefixPasses
        GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
        2 5_000_000 [p] = true
      have hempty :=
        GeneratedFortyMillionSupplementalRootCoefficientCoverage.k2EmptyMask_root_coefficient_pass
      simpa [fortyMillionRootCorePrefixPasses, hpNot] using hempty
    · have hkThree : support.length = 3 := by omega
      obtain ⟨p, q, r, rfl⟩ : ∃ p q r, support = [p, q, r] := by
        match support with
        | [p, q, r] => exact ⟨p, q, r, rfl⟩
        | [] | [_] | [_, _] | _ :: _ :: _ :: _ :: _ => simp at hkThree
      have hp : FiveMillionSupportPrime p := hPrimes p (by simp)
      have hq : FiveMillionSupportPrime q := hPrimes q (by simp)
      have hr : FiveMillionSupportPrime r := hPrimes r (by simp)
      simp only [List.pairwise_cons] at hIncreasing
      have hpq : p < q := hIncreasing.1 q (by simp)
      have hqr : q < r := hIncreasing.2.1 r (by simp)
      have hProductUpper : p * q * r < 200_000_000 := by
        have := hProduct.trans_lt hUpper
        simpa [Nat.mul_assoc] using this
      by_cases hqUpper : q <= 2843
      · have hpUpper : p <= 2843 := by omega
        have hpMask :
            p ∈ GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes := by
          rw [globalMixedMaskPrimes_eq_supportPrimes_filter]
          exact List.mem_filter.mpr
            ⟨mem_supportPrimes_of_supportPrime_le_3163 hp (by omega),
              by simpa using hpUpper⟩
        have hqMask :
            q ∈ GeneratedTailGlobalMixedSupportCoverage.mixedMaskPrimes := by
          rw [globalMixedMaskPrimes_eq_supportPrimes_filter]
          exact List.mem_filter.mpr
            ⟨mem_supportPrimes_of_supportPrime_le_3163 hq (by omega),
              by simpa using hqUpper⟩
        have hqMixed :=
          mem_globalMixedSupportPrimes_of_supportPrime_le_2843 hq hqUpper
        have hext :=
          GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime_semantic
            (Or.inr hqMixed)
        have hextLe :
            GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <= r :=
          hext.2.2 r hr hqr
        have hBandUpper : p * q *
            GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <
              200_000_000 := by
          calc
            p * q *
                GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <=
              p * q * r :=
              Nat.mul_le_mul_left (p * q) hextLe
            _ < 200_000_000 := hProductUpper
        have hBandLower : 168_000_000 < p * q *
            GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q := by
          by_contra hnot
          have hle : p * q *
              GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime q <=
                168_000_000 := by
            omega
          exact hnotGlobal
            (pair_support_prefix_mem_global_of_endpoint_le
              hp hq hpq hqUpper hle)
        have hcert :=
          GeneratedFortyMillionSupplementalRootCoefficientCoverage.k3BandPair_root_coefficient_pass
            hpMask hqMask hpq hBandLower hBandUpper
        simpa using hcert
      · have hqLower : 2844 <= q := by omega
        have hpUpper : p <= 23 := by
          by_contra hpNot
          have hpLower : 24 <= p := by omega
          have hpLower' : 29 <= p := by
            by_contra hpNot'
            interval_cases p <;>
              norm_num [FiveMillionSupportPrime] at hp
          have hrLower : 2845 <= r := by omega
          have hTooLarge : 29 * 2844 * 2845 <= p * q * r := by
            gcongr
          norm_num at hTooLarge
          omega
        have hcert :=
          GeneratedFortyMillionSupplementalRootCoefficientCoverage.k3LowSingleton_root_coefficient_pass
            hp hpUpper
        have hpMask : p <= 2843 := hpUpper.trans (by norm_num)
        have hqMask : ¬q <= 2843 := by omega
        simpa [fortyMillionRootCorePrefixPasses, hpMask, hqMask] using hcert
  have hsound := fortyMillionRootCorePrefixPasses_sound
    (by norm_num : 5_000_000 < 200_000_000) hpass
  dsimp only at hsound ⊢
  intro rootClass hroot coefficient hcoefficient
  exact (hsound rootClass hroot coefficient hcoefficient).trans
    (fortyMillionCoefficientCeiling_mono hN rootClass)

theorem actualMixedSupport_rootCoefficientRows
    {N : Nat} (support : List Nat)
    (hN : 5_000_000 <= N)
    (hUpper : N < 200_000_000)
    (hPrimes : ∀ p ∈ support, FiveMillionSupportPrime p)
    (hIncreasing : support.Pairwise (fun left right => left < right))
    (hProduct : support.prod <= N) :
    let supportPrefix := support.dropLast
    let maskedSupport :=
      supportPrefix.filter fun p => decide (p <= 2843)
    let normalWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.normalCosetWords true)
    let twistWords := globalMixedCoreSupportWordPair
      GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords maskedSupport
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords false)
      (GeneratedTailGlobalMixedSupportCoverage.twistCosetWords true)
    forall rootClass,
      rootClass ∈ fortyMillionRootClasses ->
      forall coefficient,
        coefficient ∈ fortyMillionRootCoefficientsFromWords rootClass
          normalWords twistWords support.length ->
        coefficient <=
          GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
            N rootClass := by
  have hProductStrict : support.prod < 200_000_000 :=
    hProduct.trans_lt hUpper
  have hk := mixedSupport_length_le_seven_of_prod_lt_twoHundredMillion
    support hPrimes hIncreasing hProductStrict
  by_cases hFinite : support.prod <
      globalMixedSupportProductThreshold support.length
  · exact actualFiniteMixedSupport_rootCoefficientRows support hN hUpper
      (hk.trans (by norm_num)) hPrimes hIncreasing hProduct hFinite
  have hLarge : globalMixedSupportProductThreshold support.length <=
      support.prod := Nat.le_of_not_gt hFinite
  by_cases hkSmall : support.length <= 1
  · have hPrefix : support.dropLast = [] := by
      cases support with
      | nil => rfl
      | cons first rest =>
          cases rest with
          | nil => rfl
          | cons second tail => simp at hkSmall
    have hpass : fortyMillionRootCorePrefixPasses
        GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
        GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
        GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
        support.length 5_000_000 support.dropLast = true := by
      rw [hPrefix]
      interval_cases support.length <;> rfl
    have hsound := fortyMillionRootCorePrefixPasses_sound
      (by norm_num : 5_000_000 < 200_000_000) hpass
    dsimp only at hsound ⊢
    intro rootClass hroot coefficient hcoefficient
    exact (hsound rootClass hroot coefficient hcoefficient).trans
      (fortyMillionCoefficientCeiling_mono hN rootClass)
  have hkLower : 2 <= support.length := by omega
  have hkNotFour : support.length < 4 := by
    by_contra hfour
    have hThreshold : 200_000_000 <
        globalMixedSupportProductThreshold support.length := by
      interval_cases support.length <;>
        norm_num [globalMixedSupportProductThreshold] at *
    omega
  have hkUpper : support.length <= 3 := by omega
  rcases actualMixedSupport_dropLast_mem_global_or_supplemental
      hkLower hkUpper support rfl hPrimes hIncreasing hProductStrict with
    hglobal | hsupplemental
  · have hEndpointThreshold :=
      GeneratedFortyMillionRootCoefficientCoverage.lowFeasiblePrefix_endpoint_le_threshold
        hkUpper hglobal
    exact fortyMillionRootCoefficientRows_of_globalMem hUpper
      hkUpper
      (hEndpointThreshold.trans (hLarge.trans hProduct)) hglobal
  · have hkLow : support.length = 2 ∨ support.length = 3 := by omega
    have hsupplementalParts :
        support.dropLast ∈ fortyMillionWideFeasiblePrefixesKernel
            support.length ∧
          support.dropLast ∉
            globalMixedFeasiblePrefixesKernel support.length := by
      simpa [fortyMillionSupplementalFeasiblePrefixesKernel, hkLow] using
        hsupplemental
    exact fortyMillionSupplementalActualRootCoefficientRows support
      hN hUpper hkLower hkUpper hPrimes hIncreasing hProduct
      hsupplementalParts.2

#print axioms actualFiniteMixedSupport_rootCoefficientRows
#print axioms mixedSupport_length_le_seven_of_prod_lt_twoHundredMillion
#print axioms fortyMillionRootCoefficientRows_of_globalMem
#print axioms fortyMillionSupplementalActualRootCoefficientRows
#print axioms actualMixedSupport_rootCoefficientRows

end Erdos848
