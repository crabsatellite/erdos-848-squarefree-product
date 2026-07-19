import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK2TerminalGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK2Choice_global_counts
    (choice : EvenK2Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK2TerminalGroup0000Row0000_global_counts

#print axioms evenK2Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
