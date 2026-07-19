import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3ChoiceActualSound
import Erdos848.TailGlobalMixedEvenTerminalPassSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK3Choice_terminal_endpoint_lower
    (choice : EvenK3Choice) :
    5_000_000 <= choice.terminal.endpoint := by
  cases choice <;> decide

theorem evenK3Choice_terminal_prefix_passes
    (choice : EvenK3Choice)
    (hpass : Erdos848.globalMixedEvenTerminalCountsPasses
      3 choice.terminal = true) :
    Erdos848.globalMixedEvenTerminalPrefixPasses
      3 choice.terminal.endpoint choice.terminal.maskedPrefix = true := by
  apply Erdos848.globalMixedEvenTerminalPrefixPasses_of_counts
    (evenK3Choice_actual_counts choice)
  simpa [Erdos848.globalMixedEvenTerminalCountsPasses] using hpass

#print axioms evenK3Choice_terminal_endpoint_lower
#print axioms evenK3Choice_terminal_prefix_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
