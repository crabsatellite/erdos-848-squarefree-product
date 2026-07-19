import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0011
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0015
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0019
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0023
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0027

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK7Choice_global_counts
    (choice : EvenK7Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK7TerminalGroup0000Row0000_global_counts
  | row0001 =>
      exact evenK7TerminalGroup0001Row0000_global_counts
  | row0002 =>
      exact evenK7TerminalGroup0002Row0000_global_counts
  | row0003 =>
      exact evenK7TerminalGroup0003Row0000_global_counts
  | row0004 =>
      exact evenK7TerminalGroup0004Row0000_global_counts
  | row0005 =>
      exact evenK7TerminalGroup0005Row0000_global_counts
  | row0006 =>
      exact evenK7TerminalGroup0006Row0000_global_counts
  | row0007 =>
      exact evenK7TerminalGroup0007Row0000_global_counts
  | row0008 =>
      exact evenK7TerminalGroup0008Row0000_global_counts
  | row0009 =>
      exact evenK7TerminalGroup0009Row0000_global_counts
  | row0010 =>
      exact evenK7TerminalGroup0010Row0000_global_counts
  | row0011 =>
      exact evenK7TerminalGroup0011Row0000_global_counts
  | row0012 =>
      exact evenK7TerminalGroup0012Row0000_global_counts
  | row0013 =>
      exact evenK7TerminalGroup0013Row0000_global_counts
  | row0014 =>
      exact evenK7TerminalGroup0014Row0000_global_counts
  | row0015 =>
      exact evenK7TerminalGroup0015Row0000_global_counts
  | row0016 =>
      exact evenK7TerminalGroup0016Row0000_global_counts
  | row0017 =>
      exact evenK7TerminalGroup0017Row0000_global_counts
  | row0018 =>
      exact evenK7TerminalGroup0018Row0000_global_counts
  | row0019 =>
      exact evenK7TerminalGroup0019Row0000_global_counts
  | row0020 =>
      exact evenK7TerminalGroup0020Row0000_global_counts
  | row0021 =>
      exact evenK7TerminalGroup0021Row0000_global_counts
  | row0022 =>
      exact evenK7TerminalGroup0022Row0000_global_counts
  | row0023 =>
      exact evenK7TerminalGroup0023Row0000_global_counts
  | row0024 =>
      exact evenK7TerminalGroup0024Row0000_global_counts
  | row0025 =>
      exact evenK7TerminalGroup0025Row0000_global_counts
  | row0026 =>
      exact evenK7TerminalGroup0026Row0000_global_counts
  | row0027 =>
      exact evenK7TerminalGroup0027Row0000_global_counts

#print axioms evenK7Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
