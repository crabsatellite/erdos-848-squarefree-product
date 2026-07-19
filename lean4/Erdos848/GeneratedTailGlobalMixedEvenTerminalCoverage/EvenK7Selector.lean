import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Certificate
import Erdos848.TailGlobalMixedEvenTerminalCoverageCore

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive EvenK7Choice where
  | row0000
  | row0001
  | row0002
  | row0003
  | row0004
  | row0005
  | row0006
  | row0007
  | row0008
  | row0009
  | row0010
  | row0011
  | row0012
  | row0013
  | row0014
  | row0015
  | row0016
  | row0017
  | row0018
  | row0019
  | row0020
  | row0021
  | row0022
  | row0023
  | row0024
  | row0025
  | row0026
  | row0027

def EvenK7Choice.terminal : EvenK7Choice -> Erdos848.GlobalMixedEvenTerminal
  | .row0000 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0000Row0000
  | .row0001 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0001Row0000
  | .row0002 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0002Row0000
  | .row0003 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0003Row0000
  | .row0004 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0004Row0000
  | .row0005 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0005Row0000
  | .row0006 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0006Row0000
  | .row0007 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0007Row0000
  | .row0008 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0008Row0000
  | .row0009 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0009Row0000
  | .row0010 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0010Row0000
  | .row0011 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0011Row0000
  | .row0012 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0012Row0000
  | .row0013 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0013Row0000
  | .row0014 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0014Row0000
  | .row0015 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0015Row0000
  | .row0016 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0016Row0000
  | .row0017 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0017Row0000
  | .row0018 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0018Row0000
  | .row0019 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0019Row0000
  | .row0020 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0020Row0000
  | .row0021 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0021Row0000
  | .row0022 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0022Row0000
  | .row0023 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0023Row0000
  | .row0024 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0024Row0000
  | .row0025 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0025Row0000
  | .row0026 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0026Row0000
  | .row0027 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK7TerminalGroup0027Row0000

def evenK7Selector : List Nat -> Option EvenK7Choice
  | 3 :: 7 :: 11 :: 13 :: _ => some .row0000
  | 3 :: 7 :: 11 :: 17 :: _ => some .row0001
  | 3 :: 7 :: 11 :: 19 :: _ => some .row0002
  | 3 :: 7 :: 11 :: 23 :: _ => some .row0003
  | 3 :: 7 :: 11 :: 29 :: _ => some .row0004
  | 3 :: 7 :: 11 :: 31 :: _ => some .row0005
  | 3 :: 7 :: 11 :: 37 :: _ => some .row0006
  | 3 :: 7 :: 11 :: 41 :: _ => some .row0007
  | 3 :: 7 :: 11 :: 43 :: _ => some .row0008
  | 3 :: 7 :: 11 :: 47 :: _ => some .row0009
  | 3 :: 7 :: 13 :: _ => some .row0010
  | 3 :: 7 :: 17 :: _ => some .row0011
  | 3 :: 7 :: 19 :: _ => some .row0012
  | 3 :: 7 :: 23 :: _ => some .row0013
  | 3 :: 7 :: 29 :: _ => some .row0014
  | 3 :: 7 :: 31 :: _ => some .row0015
  | 3 :: 11 :: 13 :: _ => some .row0016
  | 3 :: 11 :: 17 :: _ => some .row0017
  | 3 :: 11 :: 19 :: _ => some .row0018
  | 3 :: 11 :: 23 :: _ => some .row0019
  | 3 :: 11 :: 29 :: _ => some .row0020
  | 3 :: 13 :: _ => some .row0021
  | 3 :: 17 :: _ => some .row0022
  | 3 :: 19 :: _ => some .row0023
  | 7 :: 11 :: _ => some .row0024
  | 7 :: 13 :: _ => some .row0025
  | 7 :: 17 :: _ => some .row0026
  | 11 :: _ => some .row0027
  | _ => none

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
