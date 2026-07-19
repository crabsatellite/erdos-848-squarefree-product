import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK2ChoiceActualSound
import Erdos848.TailGlobalMixedEvenTerminalPassSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK2Choice_terminal_endpoint_lower
    (choice : EvenK2Choice) :
    5_000_000 <= choice.terminal.endpoint := by
  cases choice <;> decide

theorem evenK2Choice_terminal_prefix_passes
    (choice : EvenK2Choice)
    (hpass : Erdos848.globalMixedEvenTerminalCountsPasses
      2 choice.terminal = true) :
    Erdos848.globalMixedEvenTerminalPrefixPasses
      2 choice.terminal.endpoint choice.terminal.maskedPrefix = true := by
  apply Erdos848.globalMixedEvenTerminalPrefixPasses_of_counts
    (evenK2Choice_actual_counts choice)
  simpa [Erdos848.globalMixedEvenTerminalCountsPasses] using hpass

#print axioms evenK2Choice_terminal_endpoint_lower
#print axioms evenK2Choice_terminal_prefix_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
