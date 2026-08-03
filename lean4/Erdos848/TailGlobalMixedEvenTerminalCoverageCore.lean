import Erdos848.TailGlobalMixedEvenBitVecCheckerCore
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionData

namespace Erdos848

/-! Lightweight completeness predicate for the terminal trie.  It restates
the support endpoint from the same generated extension-prime table, keeping
finite coverage modules independent of the full Hall development. -/

def globalMixedEvenSupportEndpoint (supportPrefix : List Nat) : Nat :=
  max 5_000_000
    (supportPrefix.prod *
      GeneratedTailGlobalMixedSupportCoverage.mixedSupportExtensionPrime
        (supportPrefix.getLast?.getD 0))

def globalMixedEvenTerminalCovers
    (k : Nat) (supportPrefix : List Nat)
    (terminal : GlobalMixedEvenTerminal) : Bool :=
  decide (terminal.branchPrefix.IsPrefix supportPrefix) &&
    decide (terminal.maskedPrefix =
      terminal.branchPrefix.filter (fun p => decide (p <= 2843))) &&
    decide (terminal.endpoint <=
      globalMixedEvenSupportEndpoint supportPrefix) &&
    globalMixedEvenTerminalCountsPasses k terminal

def globalMixedEvenSelectionPasses
    (k : Nat) (selector : List Nat -> Option GlobalMixedEvenTerminal)
    (supportPrefix : List Nat) : Bool :=
  match selector supportPrefix with
  | none => false
  | some terminal =>
      globalMixedEvenTerminalCovers k supportPrefix terminal

def globalMixedEvenChoicePasses
    {α : Type} (k : Nat)
    (selector : List Nat -> Option α)
    (terminalOf : α -> GlobalMixedEvenTerminal)
    (supportPrefix : List Nat) : Bool :=
  match selector supportPrefix with
  | none => false
  | some choice =>
      globalMixedEvenTerminalCovers k supportPrefix (terminalOf choice)

theorem globalMixedEvenTerminalCovers_sound
    {k : Nat} {supportPrefix : List Nat}
    {terminal : GlobalMixedEvenTerminal}
    (hpass : globalMixedEvenTerminalCovers
      k supportPrefix terminal = true) :
    terminal.branchPrefix.IsPrefix supportPrefix ∧
      terminal.maskedPrefix =
        terminal.branchPrefix.filter (fun p => decide (p <= 2843)) ∧
      terminal.endpoint <= globalMixedEvenSupportEndpoint supportPrefix ∧
      globalMixedEvenTerminalCountsPasses k terminal = true := by
  simp [globalMixedEvenTerminalCovers] at hpass
  rcases hpass with ⟨⟨⟨hprefix, hmasked⟩, hendpoint⟩, hcounts⟩
  exact ⟨hprefix, hmasked, hendpoint, hcounts⟩

theorem globalMixedEvenSelectionPasses_sound
    {k : Nat} {selector : List Nat -> Option GlobalMixedEvenTerminal}
    {supportPrefix : List Nat}
    (hpass : globalMixedEvenSelectionPasses
      k selector supportPrefix = true) :
    ∃ terminal,
      selector supportPrefix = some terminal ∧
      terminal.branchPrefix.IsPrefix supportPrefix ∧
      terminal.maskedPrefix =
        terminal.branchPrefix.filter (fun p => decide (p <= 2843)) ∧
      terminal.endpoint <= globalMixedEvenSupportEndpoint supportPrefix ∧
      globalMixedEvenTerminalCountsPasses k terminal = true := by
  unfold globalMixedEvenSelectionPasses at hpass
  split at hpass <;> rename_i hselector
  · simp at hpass
  · refine ⟨_, hselector, ?_⟩
    exact globalMixedEvenTerminalCovers_sound hpass

theorem globalMixedEvenChoicePasses_sound
    {α : Type} {k : Nat}
    {selector : List Nat -> Option α}
    {terminalOf : α -> GlobalMixedEvenTerminal}
    {supportPrefix : List Nat}
    (hpass : globalMixedEvenChoicePasses
      k selector terminalOf supportPrefix = true) :
    ∃ choice,
      selector supportPrefix = some choice ∧
      (terminalOf choice).branchPrefix.IsPrefix supportPrefix ∧
      (terminalOf choice).maskedPrefix =
        (terminalOf choice).branchPrefix.filter
          (fun p => decide (p <= 2843)) ∧
      (terminalOf choice).endpoint <=
        globalMixedEvenSupportEndpoint supportPrefix ∧
      globalMixedEvenTerminalCountsPasses k (terminalOf choice) = true := by
  unfold globalMixedEvenChoicePasses at hpass
  split at hpass <;> rename_i hselector
  · simp at hpass
  · refine ⟨_, hselector, ?_⟩
    exact globalMixedEvenTerminalCovers_sound hpass

#print axioms globalMixedEvenTerminalCovers_sound
#print axioms globalMixedEvenSelectionPasses_sound
#print axioms globalMixedEvenChoicePasses_sound

end Erdos848
