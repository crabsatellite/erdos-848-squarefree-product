import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK8ChoiceSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK8Choice_counts_fit (choice : EvenK8Choice) :
    choice.terminal.counts.FitsBitVec64 := by
  cases choice with
  | row0000 =>
      exact evenK8TerminalGroup0000Row0000_counts_fit
  | row0001 =>
      exact evenK8TerminalGroup0001Row0000_counts_fit

theorem evenK8Choice_actual_counts (choice : EvenK8Choice) :
    Erdos848.globalMixedEvenActualCounts choice.terminal.maskedPrefix =
      choice.terminal.counts :=
  Erdos848.globalMixedEvenActualCounts_eq_of_bitVecCounts
    (evenK8Choice_global_counts choice) (evenK8Choice_counts_fit choice)

#print axioms evenK8Choice_actual_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
