import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3ChoiceSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK3Choice_counts_fit (choice : EvenK3Choice) :
    choice.terminal.counts.FitsBitVec64 := by
  cases choice with
  | row0000 =>
      exact evenK3TerminalGroup0000Row0000_counts_fit
  | row0001 =>
      exact evenK3TerminalGroup0000Row0001_counts_fit
  | row0002 =>
      exact evenK3TerminalGroup0000Row0002_counts_fit
  | row0003 =>
      exact evenK3TerminalGroup0000Row0003_counts_fit
  | row0004 =>
      exact evenK3TerminalGroup0000Row0004_counts_fit
  | row0005 =>
      exact evenK3TerminalGroup0000Row0005_counts_fit
  | row0006 =>
      exact evenK3TerminalGroup0000Row0006_counts_fit
  | row0007 =>
      exact evenK3TerminalGroup0000Row0007_counts_fit
  | row0008 =>
      exact evenK3TerminalGroup0000Row0008_counts_fit
  | row0009 =>
      exact evenK3TerminalGroup0000Row0009_counts_fit
  | row0010 =>
      exact evenK3TerminalGroup0000Row0010_counts_fit
  | row0011 =>
      exact evenK3TerminalGroup0000Row0011_counts_fit
  | row0012 =>
      exact evenK3TerminalGroup0000Row0012_counts_fit
  | row0013 =>
      exact evenK3TerminalGroup0000Row0013_counts_fit
  | row0014 =>
      exact evenK3TerminalGroup0000Row0014_counts_fit
  | row0015 =>
      exact evenK3TerminalGroup0000Row0015_counts_fit
  | row0016 =>
      exact evenK3TerminalGroup0001Row0000_counts_fit
  | row0017 =>
      exact evenK3TerminalGroup0001Row0001_counts_fit
  | row0018 =>
      exact evenK3TerminalGroup0001Row0002_counts_fit
  | row0019 =>
      exact evenK3TerminalGroup0001Row0003_counts_fit
  | row0020 =>
      exact evenK3TerminalGroup0001Row0004_counts_fit
  | row0021 =>
      exact evenK3TerminalGroup0001Row0005_counts_fit
  | row0022 =>
      exact evenK3TerminalGroup0001Row0006_counts_fit
  | row0023 =>
      exact evenK3TerminalGroup0001Row0007_counts_fit
  | row0024 =>
      exact evenK3TerminalGroup0001Row0008_counts_fit
  | row0025 =>
      exact evenK3TerminalGroup0001Row0009_counts_fit
  | row0026 =>
      exact evenK3TerminalGroup0001Row0010_counts_fit
  | row0027 =>
      exact evenK3TerminalGroup0001Row0011_counts_fit
  | row0028 =>
      exact evenK3TerminalGroup0001Row0012_counts_fit
  | row0029 =>
      exact evenK3TerminalGroup0001Row0013_counts_fit
  | row0030 =>
      exact evenK3TerminalGroup0001Row0014_counts_fit
  | row0031 =>
      exact evenK3TerminalGroup0001Row0015_counts_fit
  | row0032 =>
      exact evenK3TerminalGroup0002Row0000_counts_fit
  | row0033 =>
      exact evenK3TerminalGroup0002Row0001_counts_fit
  | row0034 =>
      exact evenK3TerminalGroup0002Row0002_counts_fit
  | row0035 =>
      exact evenK3TerminalGroup0002Row0003_counts_fit
  | row0036 =>
      exact evenK3TerminalGroup0002Row0004_counts_fit
  | row0037 =>
      exact evenK3TerminalGroup0002Row0005_counts_fit
  | row0038 =>
      exact evenK3TerminalGroup0002Row0006_counts_fit
  | row0039 =>
      exact evenK3TerminalGroup0002Row0007_counts_fit
  | row0040 =>
      exact evenK3TerminalGroup0002Row0008_counts_fit
  | row0041 =>
      exact evenK3TerminalGroup0002Row0009_counts_fit
  | row0042 =>
      exact evenK3TerminalGroup0002Row0010_counts_fit
  | row0043 =>
      exact evenK3TerminalGroup0002Row0011_counts_fit
  | row0044 =>
      exact evenK3TerminalGroup0002Row0012_counts_fit
  | row0045 =>
      exact evenK3TerminalGroup0002Row0013_counts_fit
  | row0046 =>
      exact evenK3TerminalGroup0002Row0014_counts_fit
  | row0047 =>
      exact evenK3TerminalGroup0002Row0015_counts_fit
  | row0048 =>
      exact evenK3TerminalGroup0003Row0000_counts_fit
  | row0049 =>
      exact evenK3TerminalGroup0003Row0001_counts_fit
  | row0050 =>
      exact evenK3TerminalGroup0003Row0002_counts_fit
  | row0051 =>
      exact evenK3TerminalGroup0003Row0003_counts_fit
  | row0052 =>
      exact evenK3TerminalGroup0003Row0004_counts_fit
  | row0053 =>
      exact evenK3TerminalGroup0003Row0005_counts_fit
  | row0054 =>
      exact evenK3TerminalGroup0003Row0006_counts_fit
  | row0055 =>
      exact evenK3TerminalGroup0003Row0007_counts_fit
  | row0056 =>
      exact evenK3TerminalGroup0003Row0008_counts_fit
  | row0057 =>
      exact evenK3TerminalGroup0003Row0009_counts_fit
  | row0058 =>
      exact evenK3TerminalGroup0003Row0010_counts_fit
  | row0059 =>
      exact evenK3TerminalGroup0003Row0011_counts_fit
  | row0060 =>
      exact evenK3TerminalGroup0003Row0012_counts_fit
  | row0061 =>
      exact evenK3TerminalGroup0003Row0013_counts_fit
  | row0062 =>
      exact evenK3TerminalGroup0003Row0014_counts_fit
  | row0063 =>
      exact evenK3TerminalGroup0003Row0015_counts_fit
  | row0064 =>
      exact evenK3TerminalGroup0004Row0000_counts_fit
  | row0065 =>
      exact evenK3TerminalGroup0004Row0001_counts_fit
  | row0066 =>
      exact evenK3TerminalGroup0004Row0002_counts_fit
  | row0067 =>
      exact evenK3TerminalGroup0004Row0003_counts_fit
  | row0068 =>
      exact evenK3TerminalGroup0004Row0004_counts_fit
  | row0069 =>
      exact evenK3TerminalGroup0004Row0005_counts_fit
  | row0070 =>
      exact evenK3TerminalGroup0004Row0006_counts_fit
  | row0071 =>
      exact evenK3TerminalGroup0004Row0007_counts_fit
  | row0072 =>
      exact evenK3TerminalGroup0004Row0008_counts_fit
  | row0073 =>
      exact evenK3TerminalGroup0004Row0009_counts_fit
  | row0074 =>
      exact evenK3TerminalGroup0004Row0010_counts_fit
  | row0075 =>
      exact evenK3TerminalGroup0004Row0011_counts_fit
  | row0076 =>
      exact evenK3TerminalGroup0004Row0012_counts_fit
  | row0077 =>
      exact evenK3TerminalGroup0004Row0013_counts_fit
  | row0078 =>
      exact evenK3TerminalGroup0004Row0014_counts_fit
  | row0079 =>
      exact evenK3TerminalGroup0004Row0015_counts_fit
  | row0080 =>
      exact evenK3TerminalGroup0005Row0000_counts_fit
  | row0081 =>
      exact evenK3TerminalGroup0005Row0001_counts_fit
  | row0082 =>
      exact evenK3TerminalGroup0005Row0002_counts_fit
  | row0083 =>
      exact evenK3TerminalGroup0005Row0003_counts_fit
  | row0084 =>
      exact evenK3TerminalGroup0005Row0004_counts_fit
  | row0085 =>
      exact evenK3TerminalGroup0005Row0005_counts_fit
  | row0086 =>
      exact evenK3TerminalGroup0005Row0006_counts_fit
  | row0087 =>
      exact evenK3TerminalGroup0005Row0007_counts_fit
  | row0088 =>
      exact evenK3TerminalGroup0005Row0008_counts_fit
  | row0089 =>
      exact evenK3TerminalGroup0005Row0009_counts_fit
  | row0090 =>
      exact evenK3TerminalGroup0005Row0010_counts_fit
  | row0091 =>
      exact evenK3TerminalGroup0005Row0011_counts_fit
  | row0092 =>
      exact evenK3TerminalGroup0005Row0012_counts_fit
  | row0093 =>
      exact evenK3TerminalGroup0005Row0013_counts_fit
  | row0094 =>
      exact evenK3TerminalGroup0005Row0014_counts_fit
  | row0095 =>
      exact evenK3TerminalGroup0005Row0015_counts_fit
  | row0096 =>
      exact evenK3TerminalGroup0006Row0000_counts_fit
  | row0097 =>
      exact evenK3TerminalGroup0006Row0001_counts_fit

theorem evenK3Choice_actual_counts (choice : EvenK3Choice) :
    Erdos848.globalMixedEvenActualCounts choice.terminal.maskedPrefix =
      choice.terminal.counts :=
  Erdos848.globalMixedEvenActualCounts_eq_of_bitVecCounts
    (evenK3Choice_global_counts choice) (evenK3Choice_counts_fit choice)

#print axioms evenK3Choice_actual_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
