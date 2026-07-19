import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK8Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK8TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK8TerminalGroup0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK8Choice_global_counts
    (choice : EvenK8Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK8TerminalGroup0000Row0000_global_counts
  | row0001 =>
      exact evenK8TerminalGroup0001Row0000_global_counts

#print axioms evenK8Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
