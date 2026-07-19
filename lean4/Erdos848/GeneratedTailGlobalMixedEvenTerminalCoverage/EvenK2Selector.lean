import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK2Certificate
import Erdos848.TailGlobalMixedEvenTerminalCoverageCore

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive EvenK2Choice where
  | row0000

def EvenK2Choice.terminal : EvenK2Choice -> Erdos848.GlobalMixedEvenTerminal
  | .row0000 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK2TerminalGroup0000Row0000

def evenK2Selector : List Nat -> Option EvenK2Choice
  | _ => some .row0000

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
