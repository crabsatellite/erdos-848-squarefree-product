import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7ChoiceSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK7Choice_counts_fit (choice : EvenK7Choice) :
    choice.terminal.counts.FitsBitVec64 := by
  cases choice with
  | row0000 =>
      exact evenK7TerminalGroup0000Row0000_counts_fit
  | row0001 =>
      exact evenK7TerminalGroup0001Row0000_counts_fit
  | row0002 =>
      exact evenK7TerminalGroup0002Row0000_counts_fit
  | row0003 =>
      exact evenK7TerminalGroup0003Row0000_counts_fit
  | row0004 =>
      exact evenK7TerminalGroup0004Row0000_counts_fit
  | row0005 =>
      exact evenK7TerminalGroup0005Row0000_counts_fit
  | row0006 =>
      exact evenK7TerminalGroup0006Row0000_counts_fit
  | row0007 =>
      exact evenK7TerminalGroup0007Row0000_counts_fit
  | row0008 =>
      exact evenK7TerminalGroup0008Row0000_counts_fit
  | row0009 =>
      exact evenK7TerminalGroup0009Row0000_counts_fit
  | row0010 =>
      exact evenK7TerminalGroup0010Row0000_counts_fit
  | row0011 =>
      exact evenK7TerminalGroup0011Row0000_counts_fit
  | row0012 =>
      exact evenK7TerminalGroup0012Row0000_counts_fit
  | row0013 =>
      exact evenK7TerminalGroup0013Row0000_counts_fit
  | row0014 =>
      exact evenK7TerminalGroup0014Row0000_counts_fit
  | row0015 =>
      exact evenK7TerminalGroup0015Row0000_counts_fit
  | row0016 =>
      exact evenK7TerminalGroup0016Row0000_counts_fit
  | row0017 =>
      exact evenK7TerminalGroup0017Row0000_counts_fit
  | row0018 =>
      exact evenK7TerminalGroup0018Row0000_counts_fit
  | row0019 =>
      exact evenK7TerminalGroup0019Row0000_counts_fit
  | row0020 =>
      exact evenK7TerminalGroup0020Row0000_counts_fit
  | row0021 =>
      exact evenK7TerminalGroup0021Row0000_counts_fit
  | row0022 =>
      exact evenK7TerminalGroup0022Row0000_counts_fit
  | row0023 =>
      exact evenK7TerminalGroup0023Row0000_counts_fit
  | row0024 =>
      exact evenK7TerminalGroup0024Row0000_counts_fit
  | row0025 =>
      exact evenK7TerminalGroup0025Row0000_counts_fit
  | row0026 =>
      exact evenK7TerminalGroup0026Row0000_counts_fit
  | row0027 =>
      exact evenK7TerminalGroup0027Row0000_counts_fit

theorem evenK7Choice_actual_counts (choice : EvenK7Choice) :
    Erdos848.globalMixedEvenActualCounts choice.terminal.maskedPrefix =
      choice.terminal.counts :=
  Erdos848.globalMixedEvenActualCounts_eq_of_bitVecCounts
    (evenK7Choice_global_counts choice) (evenK7Choice_counts_fit choice)

#print axioms evenK7Choice_actual_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
