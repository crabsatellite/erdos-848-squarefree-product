import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK2ChoiceSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK2Choice_counts_fit (choice : EvenK2Choice) :
    choice.terminal.counts.FitsBitVec64 := by
  cases choice with
  | row0000 =>
      exact evenK2TerminalGroup0000Row0000_counts_fit

theorem evenK2Choice_actual_counts (choice : EvenK2Choice) :
    Erdos848.globalMixedEvenActualCounts choice.terminal.maskedPrefix =
      choice.terminal.counts :=
  Erdos848.globalMixedEvenActualCounts_eq_of_bitVecCounts
    (evenK2Choice_global_counts choice) (evenK2Choice_counts_fit choice)

#print axioms evenK2Choice_actual_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
