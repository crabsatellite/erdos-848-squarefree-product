import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Certificate
import Erdos848.TailGlobalMixedEvenTerminalCoverageCore

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive EvenK8Choice where
  | row0000
  | row0001

def EvenK8Choice.terminal : EvenK8Choice -> Erdos848.GlobalMixedEvenTerminal
  | .row0000 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK8TerminalGroup0000Row0000
  | .row0001 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK8TerminalGroup0001Row0000

def evenK8Selector : List Nat -> Option EvenK8Choice
  | 3 :: 7 :: _ => some .row0000
  | 3 :: 11 :: _ => some .row0001
  | _ => none

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
