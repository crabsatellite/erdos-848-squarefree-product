import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.Certificate
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.Certificate

namespace Erdos848

/-!
# Semantic selection from the finite even terminal certificate

The generated tables enumerate finite support types, not ambient values of
`N`.  This module erases the seven generated choice types and exposes one
uniform terminal statement for every feasible prefix of length `2` through
`8`.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open GeneratedTailGlobalMixedEvenTerminalCoverage
open GeneratedTailGlobalMixedEvenTerminalSound

def GlobalMixedEvenTerminalSelection
    (k : Nat) (supportPrefix : List Nat) : Prop :=
  ∃ terminal : GlobalMixedEvenTerminal,
    5_000_000 <= terminal.endpoint ∧
      terminal.branchPrefix.IsPrefix supportPrefix ∧
      terminal.maskedPrefix =
        terminal.branchPrefix.filter (fun p => decide (p <= 2843)) ∧
      terminal.endpoint <= globalMixedEvenSupportEndpoint supportPrefix ∧
      globalMixedEvenTerminalPrefixPasses
        k terminal.endpoint terminal.maskedPrefix = true

private theorem globalMixedEvenTerminalSelection_of_certificate
    {Choice : Type} {k : Nat}
    (selector : List Nat -> Option Choice)
    (terminalOf : Choice -> GlobalMixedEvenTerminal)
    (hcertificate :
      (globalMixedFeasiblePrefixesKernel k).all
        (globalMixedEvenChoicePasses k selector terminalOf) = true)
    (hsound : ∀ choice,
      globalMixedEvenTerminalCountsPasses k (terminalOf choice) = true ->
        globalMixedEvenTerminalPrefixPasses k
          (terminalOf choice).endpoint (terminalOf choice).maskedPrefix = true)
    (hEndpointLower : ∀ choice, 5_000_000 <= (terminalOf choice).endpoint)
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ globalMixedFeasiblePrefixesKernel k) :
    GlobalMixedEvenTerminalSelection k supportPrefix := by
  have hpass := (List.all_eq_true.mp hcertificate) supportPrefix hmem
  obtain ⟨choice, _, hbranch, hmasked, hendpoint, hcounts⟩ :=
    globalMixedEvenChoicePasses_sound hpass
  exact ⟨terminalOf choice, hEndpointLower choice, hbranch, hmasked, hendpoint,
    hsound choice hcounts⟩

theorem globalMixedEvenTerminalSelection_of_mem_feasible
    {k : Nat} (hLower : 2 <= k) (hUpper : k <= 8)
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ globalMixedFeasiblePrefixesKernel k) :
    GlobalMixedEvenTerminalSelection k supportPrefix := by
  interval_cases k
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK2Selector EvenK2Choice.terminal evenK2FeasiblePrefixes_select
      evenK2Choice_terminal_prefix_passes evenK2Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK3Selector EvenK3Choice.terminal evenK3FeasiblePrefixes_select
      evenK3Choice_terminal_prefix_passes evenK3Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK4Selector EvenK4Choice.terminal evenK4FeasiblePrefixes_select
      evenK4Choice_terminal_prefix_passes evenK4Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK5Selector EvenK5Choice.terminal evenK5FeasiblePrefixes_select
      evenK5Choice_terminal_prefix_passes evenK5Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK6Selector EvenK6Choice.terminal evenK6FeasiblePrefixes_select
      evenK6Choice_terminal_prefix_passes evenK6Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK7Selector EvenK7Choice.terminal evenK7FeasiblePrefixes_select
      evenK7Choice_terminal_prefix_passes evenK7Choice_terminal_endpoint_lower hmem
  · exact globalMixedEvenTerminalSelection_of_certificate
      evenK8Selector EvenK8Choice.terminal evenK8FeasiblePrefixes_select
      evenK8Choice_terminal_prefix_passes evenK8Choice_terminal_endpoint_lower hmem

#print axioms globalMixedEvenTerminalSelection_of_mem_feasible

end Erdos848
