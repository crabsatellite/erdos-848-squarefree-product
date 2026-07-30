import Erdos848.TailHighGroupedCertifiedDiagonal
import Erdos848.TailHighQrKernelCertificate
import Erdos848.TailTwentyMillionDegree19

namespace Erdos848

/-!
# Finite QR bridge from 2B

Each complete row combines four QR-screened root rows with the existing
grouped modulo-`25` diagonal certificate and the shared ten-branch budget.
The list-level cover theorem leaves only generated finite rows.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def highQrFiniteStart : Nat := 2_000_000_000

structure CertifiedHighQrCompleteRow where
  diagonal : CertifiedHighGroupedDiagonalRow
  roots : CertifiedHighQrClassRoots
  rootsLowerAligned :
    ∀ rootClass : HighVariableRootClass,
      (roots.row rootClass).row.lower =
        diagonal.row.budget.lower
  rootsUpperAligned :
    ∀ rootClass : HighVariableRootClass,
      (roots.row rootClass).row.upper =
        diagonal.row.upper
  evenOneRootEnvelopeAligned :
    diagonal.row.budget.evenOneRootEnvelope =
      roots.evenOne.row.rootEnvelope
  evenTwoRootEnvelopeAligned :
    diagonal.row.budget.evenTwoRootEnvelope =
      roots.evenTwo.row.rootEnvelope
  evenThreeRootEnvelopeAligned :
    diagonal.row.budget.rootEnvelope =
      roots.evenThree.row.rootEnvelope
  oddRootEnvelopeAligned :
    diagonal.row.budget.oddRootEnvelope =
      roots.odd.row.rootEnvelope
  budgetChecked :
    highTenBranchBudgetPasses diagonal.row.budget = true

theorem CertifiedHighQrCompleteRow.hall
    (row : CertifiedHighQrCompleteRow)
    {N : Nat} {B : Finset Nat}
    {branch : TwentyMillionBranch}
    (hTwenty : 20_000_000 ≤ N)
    (hLower : row.diagonal.row.budget.lower ≤ N)
    (hUpper : N ≤ row.diagonal.row.upper)
    (hBout : Erdos848OutsideSet N B)
    (hBprop : NonSquarefreeProductProp B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    B.card + (hallNonNeighbours N B).card ≤
      (OriginalA7 N).card := by
  have hRootLower :
      ∀ rootClass : HighVariableRootClass,
        (row.roots.row rootClass).row.lower ≤ N := by
    intro rootClass
    rw [row.rootsLowerAligned rootClass]
    exact hLower
  have hRootUpper :
      ∀ rootClass : HighVariableRootClass,
        N ≤ (row.roots.row rootClass).row.upper := by
    intro rootClass
    rw [row.rootsUpperAligned rootClass]
    exact hUpper
  have hterminal :
      HighKernelTerminalCertificate
        row.diagonal.row.budget N B :=
    highQrKernelTerminalCertificate_of_branch
      row.roots row.diagonal.row.budget
      hTwenty hRootLower hRootUpper
      row.evenOneRootEnvelopeAligned
      row.evenTwoRootEnvelopeAligned
      row.evenThreeRootEnvelopeAligned
      row.oddRootEnvelopeAligned
      hBout hbranch
  have hbudgetSound :=
    highTenBranchBudgetPasses_sound row.budgetChecked
  have hdiagonal :
      ∀ selection : PaperDiagonalSelection,
        paperDiagonalRatio N selection ≤
          row.diagonal.row.budget.diagonal selection :=
    fun selection =>
      row.diagonal.paperDiagonalRatio_le
        hLower hUpper selection
  obtain ⟨terminalBranch, hcompletion⟩ :=
    HighKernelTerminalCertificate.completion_ratio_le_total
      hbudgetSound.1 hLower hBout hBprop hdiagonal hterminal
  have htarget :
      ((hallCompletion N B).card : Rat) / N ≤
        twentyMillionHallTarget N := by
    exact hcompletion.trans <|
      (le_of_lt (hbudgetSound.2 terminalBranch)).trans <|
        HighTenBranchBudget.target_le_normalizedTarget
          hbudgetSound.1 hLower
  exact twentyMillionHall_of_ratio_le_target
    (hbudgetSound.1.trans_le hLower) hBout htarget

theorem CertifiedHighQrCompleteRow.originalProblem848Statement
    (row : CertifiedHighQrCompleteRow)
    {N : Nat}
    (hTwenty : 20_000_000 ≤ N)
    (hLower : row.diagonal.row.budget.lower ≤ N)
    (hUpper : N ≤ row.diagonal.row.upper) :
    OriginalProblem848Statement N := by
  apply originalProblem_of_hallStatement
  intro B hBout hBprop
  by_contra hnotHall
  have hdefect :
      (OriginalA7 N).card <
        B.card + (hallNonNeighbours N B).card := by
    omega
  obtain ⟨branch, hbranch⟩ :=
    exists_twentyMillionBranchApplies_global19
      hTwenty hBout hBprop hdefect
  have hHall :=
    row.hall hTwenty hLower hUpper hBout hBprop hbranch
  omega

def highQrCompleteRowsCoverFrom
    (start stop : Nat) :
    List CertifiedHighQrCompleteRow → Bool
  | [] => decide (start = stop)
  | certificate :: rest =>
      decide
          (certificate.diagonal.row.budget.lower = start ∧
            start ≤ certificate.diagonal.row.upper) &&
        highQrCompleteRowsCoverFrom
          (certificate.diagonal.row.upper + 1) stop rest

theorem highQrCompleteRowsCoverFrom_append
    {start middle stop : Nat}
    {left right : List CertifiedHighQrCompleteRow}
    (hleft :
      highQrCompleteRowsCoverFrom start middle left = true)
    (hright :
      highQrCompleteRowsCoverFrom middle stop right = true) :
    highQrCompleteRowsCoverFrom start stop (left ++ right) = true := by
  induction left generalizing start with
  | nil =>
      change decide (start = middle) = true at hleft
      have hstart : start = middle := of_decide_eq_true hleft
      subst middle
      simpa using hright
  | cons certificate rest ih =>
      change
        (decide
            (certificate.diagonal.row.budget.lower = start ∧
              start ≤ certificate.diagonal.row.upper) &&
          highQrCompleteRowsCoverFrom
            (certificate.diagonal.row.upper + 1)
              middle rest) = true at hleft
      change
        (decide
            (certificate.diagonal.row.budget.lower = start ∧
              start ≤ certificate.diagonal.row.upper) &&
          highQrCompleteRowsCoverFrom
            (certificate.diagonal.row.upper + 1)
              stop (rest ++ right)) = true
      have hparts := Bool.and_eq_true_iff.mp hleft
      exact Bool.and_eq_true_iff.mpr
        ⟨hparts.1, ih hparts.2⟩

theorem exists_certifiedHighQrCompleteRow_of_cover
    {start stop N : Nat}
    {rows : List CertifiedHighQrCompleteRow}
    (hcover :
      highQrCompleteRowsCoverFrom start stop rows = true)
    (hstart : start ≤ N) (hstop : N < stop) :
    ∃ certificate ∈ rows,
      certificate.diagonal.row.budget.lower ≤ N ∧
        N ≤ certificate.diagonal.row.upper := by
  induction rows generalizing start with
  | nil =>
      change decide (start = stop) = true at hcover
      have heq : start = stop := of_decide_eq_true hcover
      omega
  | cons certificate rest ih =>
      change
        (decide
            (certificate.diagonal.row.budget.lower = start ∧
              start ≤ certificate.diagonal.row.upper) &&
          highQrCompleteRowsCoverFrom
            (certificate.diagonal.row.upper + 1)
              stop rest) = true at hcover
      have hparts := Bool.and_eq_true_iff.mp hcover
      have hfirst :
          certificate.diagonal.row.budget.lower = start ∧
            start ≤ certificate.diagonal.row.upper :=
        of_decide_eq_true hparts.1
      by_cases hNUpper : N ≤ certificate.diagonal.row.upper
      · exact
          ⟨certificate, by simp, hfirst.1 ▸ hstart, hNUpper⟩
      · obtain ⟨found, hfound, hlower, hupper⟩ :=
          ih hparts.2 (by omega)
        exact ⟨found, by simp [hfound], hlower, hupper⟩

structure HighQrFiniteCloseCertificate where
  stop : Nat
  rows : List CertifiedHighQrCompleteRow
  stopValid :
    highQrFiniteStart ≤ stop ∧ stop ≤ highQrFiniteStop
  covers :
    highQrCompleteRowsCoverFrom
      highQrFiniteStart stop rows = true

theorem HighQrFiniteCloseCertificate.close
    (certificate : HighQrFiniteCloseCertificate)
    {N : Nat}
    (hLower : highQrFiniteStart ≤ N)
    (hUpper : N < certificate.stop) :
    OriginalProblem848Statement N := by
  obtain ⟨row, _hrow, hlower, hupper⟩ :=
    exists_certifiedHighQrCompleteRow_of_cover
      certificate.covers hLower hUpper
  have hTwenty : 20_000_000 ≤ N := by
    exact (by norm_num [highQrFiniteStart] :
      20_000_000 ≤ highQrFiniteStart).trans hLower
  exact row.originalProblem848Statement hTwenty hlower hupper

#print axioms CertifiedHighQrCompleteRow.hall
#print axioms
  CertifiedHighQrCompleteRow.originalProblem848Statement
#print axioms HighQrFiniteCloseCertificate.close

end Erdos848
