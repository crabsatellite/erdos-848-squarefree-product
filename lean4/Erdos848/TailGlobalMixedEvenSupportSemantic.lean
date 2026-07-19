import Erdos848.TailGlobalMixedEvenSupportCheckerCore
import Erdos848.TailGlobalMixedEvenSurvivorDefs
import Erdos848.TailGlobalMixedSurvivorSemantic

namespace Erdos848

/-!
# Semantics of the valuation word masks

The fast even checker intersects the already certified QR/coset words with
one exact congruence mask.  This module proves that the resulting population
count bounds the literal restricted survivor finset used by the transformed
root theorem.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure GlobalMixedResidueWordCertificate
    (M : Nat) (words : List Nat) (modulus residue : Nat) where
  checked : allNatRange
    (fun index => wordMaskTestBit words index ==
      decide ((index + 1) % modulus = residue)) 0 M = true

theorem GlobalMixedResidueWordCertificate.testBit_eq
    {M index modulus residue : Nat} {words : List Nat}
    (certificate :
      GlobalMixedResidueWordCertificate M words modulus residue)
    (hindex : index < M) :
    wordMaskTestBit words index =
      decide ((index + 1) % modulus = residue) := by
  have hchecked := (allNatRange_eq_true_iff _ _ _).mp certificate.checked
    index (by omega) (by omega)
  exact beq_iff_eq.mp hchecked

theorem globalMixedNormalValuationWords_certificate
    (valuation : GlobalMixedEvenValuation) :
    GlobalMixedResidueWordCertificate globalMixedNormalBound
      (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation)
      (globalMixedEvenNormalModulus valuation)
      (globalMixedEvenNormalResidue valuation) := by
  cases valuation <;> constructor <;> decide

theorem globalMixedTwistValuationWords_certificate
    (valuation : GlobalMixedEvenValuation) :
    GlobalMixedResidueWordCertificate globalMixedTwistBound
      (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
        valuation)
      (globalMixedEvenTwistModulus valuation)
      (globalMixedEvenTwistResidue valuation) := by
  cases valuation <;> constructor <;> decide

theorem globalMixedNormalValuationWords_lt
    (valuation : GlobalMixedEvenValuation) :
    (forall word, word ∈
      GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation ->
      word < 2 ^ 64) := by
  cases valuation <;> decide

theorem globalMixedTwistValuationWords_lt
    (valuation : GlobalMixedEvenValuation) :
    (forall word, word ∈
      GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
        valuation ->
      word < 2 ^ 64) := by
  cases valuation <;> decide

private theorem globalMixedBitPairs_card_eq_coreCountWords
    (words : List Nat)
    (hwords : forall word, word ∈ words -> word < 2 ^ 64) :
    (globalMixedBitPairs words).card = globalMixedCoreCountWords words := by
  rw [globalMixedBitPairs_card_eq_countWords words hwords]
  rw [globalMixedCoreCountWords_eq_map_bits_count words hwords]
  clear hwords
  induction words with
  | nil => rfl
  | cons word words ih =>
      simp [globalMixedCountWords, ih]

theorem globalMixedNormalSurvivorFinset_anti_mono
    {smaller larger : List Nat} (hsub : smaller.Sublist larger)
    (squareCoset : Bool) :
    globalMixedNormalSurvivorFinset larger squareCoset ⊆
      globalMixedNormalSurvivorFinset smaller squareCoset := by
  intro m hm
  have hmParts := Finset.mem_filter.mp hm
  have hbit := hmParts.2
  rw [globalMixedNormalSupportWords_testBit] at hbit
  have hbits := Bool.and_eq_true_iff.mp hbit
  have hsmallAll :
      smaller.all (fun p =>
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords p)
          (m - 1)) = true := by
    apply List.all_eq_true.mpr
    intro p hp
    exact (List.all_eq_true.mp hbits.1) p (hsub.subset hp)
  apply Finset.mem_filter.mpr
  refine ⟨hmParts.1, ?_⟩
  rw [globalMixedNormalSupportWords_testBit]
  exact Bool.and_eq_true_iff.mpr ⟨hsmallAll, hbits.2⟩

theorem globalMixedTwistSurvivorFinset_anti_mono
    {smaller larger : List Nat} (hsub : smaller.Sublist larger)
    (squareCoset : Bool) :
    globalMixedTwistSurvivorFinset larger squareCoset ⊆
      globalMixedTwistSurvivorFinset smaller squareCoset := by
  intro m hm
  have hmParts := Finset.mem_filter.mp hm
  have hbit := hmParts.2
  rw [globalMixedTwistSupportWords_testBit] at hbit
  have hbits := Bool.and_eq_true_iff.mp hbit
  have hsmallAll :
      smaller.all (fun p =>
        wordMaskTestBit
          (GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords p)
          (m - 1)) = true := by
    apply List.all_eq_true.mpr
    intro p hp
    exact (List.all_eq_true.mp hbits.1) p (hsub.subset hp)
  apply Finset.mem_filter.mpr
  refine ⟨hmParts.1, ?_⟩
  rw [globalMixedTwistSupportWords_testBit]
  exact Bool.and_eq_true_iff.mpr ⟨hsmallAll, hbits.2⟩

theorem globalMixedRestrictSurvivors_mono
    {left right : Finset Nat} (hsub : left ⊆ right)
    (modulus residue : Nat) :
    globalMixedRestrictSurvivors left modulus residue ⊆
      globalMixedRestrictSurvivors right modulus residue := by
  intro m hm
  have hmParts := globalMixedRestrictSurvivors_mem.mp hm
  exact globalMixedRestrictSurvivors_mem.mpr ⟨hsub hmParts.1, hmParts.2⟩

theorem globalMixedNormalRestrictedSurvivors_card_le_coreCount
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) :
    (globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset support squareCoset)
      (globalMixedEvenNormalModulus valuation)
      (globalMixedEvenNormalResidue valuation)).card <=
    globalMixedCoreEvenRestrictedCount
      (globalMixedNormalSupportWords support squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation) := by
  let survivors := globalMixedRestrictSurvivors
    (globalMixedNormalSurvivorFinset support squareCoset)
    (globalMixedEvenNormalModulus valuation)
    (globalMixedEvenNormalResidue valuation)
  let words := globalMixedCoreIntersectWords
    (globalMixedNormalSupportWords support squareCoset)
    (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
      valuation)
  have hwords : forall word, word ∈ words -> word < 2 ^ 64 := by
    dsimp [words]
    exact globalMixedCoreIntersectWords_lt _ _
      (globalMixedNormalValuationWords_lt valuation)
  have hcard : survivors.card <= (globalMixedBitPairs words).card := by
    apply card_le_globalMixedBitPairs_of_testBit
    · intro m hm
      have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
    · intro m hm
      have hmParts := globalMixedRestrictSurvivors_mem.mp hm
      have hmParent := Finset.mem_filter.mp hmParts.1
      have hmIco := Finset.mem_Ico.mp hmParent.1
      have hsupport := hmParent.2
      have hvaluation :=
        (globalMixedNormalValuationWords_certificate valuation).testBit_eq
          (index := m - 1) (by
            norm_num [globalMixedNormalBound] at hmIco ⊢
            omega)
      have hvaluationTrue : wordMaskTestBit
          (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
            valuation) (m - 1) = true := by
        rw [hvaluation]
        simp [show m - 1 + 1 = m by omega, hmParts.2]
      dsimp [words]
      rw [globalMixedCoreIntersectWords_eq_public]
      rw [globalMixedIntersectWords_testBit]
      simp [hsupport, hvaluationTrue]
  calc
    survivors.card <= (globalMixedBitPairs words).card := hcard
    _ = globalMixedCoreCountWords words :=
      globalMixedBitPairs_card_eq_coreCountWords words hwords
    _ = globalMixedCoreEvenRestrictedCount
        (globalMixedNormalSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
          valuation) := by rfl

theorem globalMixedTwistRestrictedSurvivors_card_le_coreCount
    (valuation : GlobalMixedEvenValuation)
    (support : List Nat) (squareCoset : Bool) :
    (globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset support squareCoset)
      (globalMixedEvenTwistModulus valuation)
      (globalMixedEvenTwistResidue valuation)).card <=
    globalMixedCoreEvenRestrictedCount
      (globalMixedTwistSupportWords support squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
        valuation) := by
  let survivors := globalMixedRestrictSurvivors
    (globalMixedTwistSurvivorFinset support squareCoset)
    (globalMixedEvenTwistModulus valuation)
    (globalMixedEvenTwistResidue valuation)
  let words := globalMixedCoreIntersectWords
    (globalMixedTwistSupportWords support squareCoset)
    (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
      valuation)
  have hwords : forall word, word ∈ words -> word < 2 ^ 64 := by
    dsimp [words]
    exact globalMixedCoreIntersectWords_lt _ _
      (globalMixedTwistValuationWords_lt valuation)
  have hcard : survivors.card <= (globalMixedBitPairs words).card := by
    apply card_le_globalMixedBitPairs_of_testBit
    · intro m hm
      have hmParent := (globalMixedRestrictSurvivors_mem.mp hm).1
      exact (Finset.mem_Ico.mp (Finset.mem_filter.mp hmParent).1).1
    · intro m hm
      have hmParts := globalMixedRestrictSurvivors_mem.mp hm
      have hmParent := Finset.mem_filter.mp hmParts.1
      have hmIco := Finset.mem_Ico.mp hmParent.1
      have hsupport := hmParent.2
      have hvaluation :=
        (globalMixedTwistValuationWords_certificate valuation).testBit_eq
          (index := m - 1) (by
            norm_num [globalMixedTwistBound] at hmIco ⊢
            omega)
      have hvaluationTrue : wordMaskTestBit
          (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
            valuation) (m - 1) = true := by
        rw [hvaluation]
        simp [show m - 1 + 1 = m by omega, hmParts.2]
      dsimp [words]
      rw [globalMixedCoreIntersectWords_eq_public]
      rw [globalMixedIntersectWords_testBit]
      simp [hsupport, hvaluationTrue]
  calc
    survivors.card <= (globalMixedBitPairs words).card := hcard
    _ = globalMixedCoreCountWords words :=
      globalMixedBitPairs_card_eq_coreCountWords words hwords
    _ = globalMixedCoreEvenRestrictedCount
        (globalMixedTwistSupportWords support squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
          valuation) := by rfl

theorem globalMixedNormalRestrictedSurvivors_card_le_prefixCoreCount
    (valuation : GlobalMixedEvenValuation)
    {small support : List Nat} (hsub : small.Sublist support)
    (squareCoset : Bool) :
    (globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset support squareCoset)
      (globalMixedEvenNormalModulus valuation)
      (globalMixedEvenNormalResidue valuation)).card <=
    globalMixedCoreEvenRestrictedCount
      (globalMixedNormalSupportWords small squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
        valuation) := by
  calc
    (globalMixedRestrictSurvivors
      (globalMixedNormalSurvivorFinset support squareCoset)
      (globalMixedEvenNormalModulus valuation)
      (globalMixedEvenNormalResidue valuation)).card <=
        (globalMixedRestrictSurvivors
          (globalMixedNormalSurvivorFinset small squareCoset)
          (globalMixedEvenNormalModulus valuation)
          (globalMixedEvenNormalResidue valuation)).card :=
      Finset.card_le_card (globalMixedRestrictSurvivors_mono
        (globalMixedNormalSurvivorFinset_anti_mono hsub squareCoset) _ _)
    _ <= globalMixedCoreEvenRestrictedCount
        (globalMixedNormalSupportWords small squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords
          valuation) :=
      globalMixedNormalRestrictedSurvivors_card_le_coreCount
        valuation small squareCoset

theorem globalMixedTwistRestrictedSurvivors_card_le_prefixCoreCount
    (valuation : GlobalMixedEvenValuation)
    {small support : List Nat} (hsub : small.Sublist support)
    (squareCoset : Bool) :
    (globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset support squareCoset)
      (globalMixedEvenTwistModulus valuation)
      (globalMixedEvenTwistResidue valuation)).card <=
    globalMixedCoreEvenRestrictedCount
      (globalMixedTwistSupportWords small squareCoset)
      (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
        valuation) := by
  calc
    (globalMixedRestrictSurvivors
      (globalMixedTwistSurvivorFinset support squareCoset)
      (globalMixedEvenTwistModulus valuation)
      (globalMixedEvenTwistResidue valuation)).card <=
        (globalMixedRestrictSurvivors
          (globalMixedTwistSurvivorFinset small squareCoset)
          (globalMixedEvenTwistModulus valuation)
          (globalMixedEvenTwistResidue valuation)).card :=
      Finset.card_le_card (globalMixedRestrictSurvivors_mono
        (globalMixedTwistSurvivorFinset_anti_mono hsub squareCoset) _ _)
    _ <= globalMixedCoreEvenRestrictedCount
        (globalMixedTwistSupportWords small squareCoset)
        (GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords
          valuation) :=
      globalMixedTwistRestrictedSurvivors_card_le_coreCount
        valuation small squareCoset

#print axioms globalMixedNormalValuationWords_certificate
#print axioms globalMixedTwistValuationWords_certificate
#print axioms globalMixedNormalRestrictedSurvivors_card_le_coreCount
#print axioms globalMixedTwistRestrictedSurvivors_card_le_coreCount
#print axioms globalMixedNormalRestrictedSurvivors_card_le_prefixCoreCount
#print axioms globalMixedTwistRestrictedSurvivors_card_le_prefixCoreCount

end Erdos848
