import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK6ChoiceActualSound
import Erdos848.TailGlobalMixedEvenTerminalPassSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK6Choice_terminal_endpoint_lower
    (choice : EvenK6Choice) :
    5_000_000 <= choice.terminal.endpoint := by
  cases choice <;> decide

theorem evenK6Choice_terminal_prefix_passes
    (choice : EvenK6Choice)
    (hpass : Erdos848.globalMixedEvenTerminalCountsPasses
      6 choice.terminal = true) :
    Erdos848.globalMixedEvenTerminalPrefixPasses
      6 choice.terminal.endpoint choice.terminal.maskedPrefix = true := by
  apply Erdos848.globalMixedEvenTerminalPrefixPasses_of_counts
    (evenK6Choice_actual_counts choice)
  simpa [Erdos848.globalMixedEvenTerminalCountsPasses] using hpass

#print axioms evenK6Choice_terminal_endpoint_lower
#print axioms evenK6Choice_terminal_prefix_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
