import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK3TerminalGroup0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK3Choice_global_counts
    (choice : EvenK3Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK3TerminalGroup0000Row0000_global_counts
  | row0001 =>
      exact evenK3TerminalGroup0000Row0001_global_counts
  | row0002 =>
      exact evenK3TerminalGroup0000Row0002_global_counts
  | row0003 =>
      exact evenK3TerminalGroup0000Row0003_global_counts
  | row0004 =>
      exact evenK3TerminalGroup0000Row0004_global_counts
  | row0005 =>
      exact evenK3TerminalGroup0000Row0005_global_counts
  | row0006 =>
      exact evenK3TerminalGroup0000Row0006_global_counts
  | row0007 =>
      exact evenK3TerminalGroup0000Row0007_global_counts
  | row0008 =>
      exact evenK3TerminalGroup0000Row0008_global_counts
  | row0009 =>
      exact evenK3TerminalGroup0000Row0009_global_counts
  | row0010 =>
      exact evenK3TerminalGroup0000Row0010_global_counts
  | row0011 =>
      exact evenK3TerminalGroup0000Row0011_global_counts
  | row0012 =>
      exact evenK3TerminalGroup0000Row0012_global_counts
  | row0013 =>
      exact evenK3TerminalGroup0000Row0013_global_counts
  | row0014 =>
      exact evenK3TerminalGroup0000Row0014_global_counts
  | row0015 =>
      exact evenK3TerminalGroup0000Row0015_global_counts
  | row0016 =>
      exact evenK3TerminalGroup0001Row0000_global_counts
  | row0017 =>
      exact evenK3TerminalGroup0001Row0001_global_counts
  | row0018 =>
      exact evenK3TerminalGroup0001Row0002_global_counts
  | row0019 =>
      exact evenK3TerminalGroup0001Row0003_global_counts
  | row0020 =>
      exact evenK3TerminalGroup0001Row0004_global_counts
  | row0021 =>
      exact evenK3TerminalGroup0001Row0005_global_counts
  | row0022 =>
      exact evenK3TerminalGroup0001Row0006_global_counts
  | row0023 =>
      exact evenK3TerminalGroup0001Row0007_global_counts
  | row0024 =>
      exact evenK3TerminalGroup0001Row0008_global_counts
  | row0025 =>
      exact evenK3TerminalGroup0001Row0009_global_counts
  | row0026 =>
      exact evenK3TerminalGroup0001Row0010_global_counts
  | row0027 =>
      exact evenK3TerminalGroup0001Row0011_global_counts
  | row0028 =>
      exact evenK3TerminalGroup0001Row0012_global_counts
  | row0029 =>
      exact evenK3TerminalGroup0001Row0013_global_counts
  | row0030 =>
      exact evenK3TerminalGroup0001Row0014_global_counts
  | row0031 =>
      exact evenK3TerminalGroup0001Row0015_global_counts
  | row0032 =>
      exact evenK3TerminalGroup0002Row0000_global_counts
  | row0033 =>
      exact evenK3TerminalGroup0002Row0001_global_counts
  | row0034 =>
      exact evenK3TerminalGroup0002Row0002_global_counts
  | row0035 =>
      exact evenK3TerminalGroup0002Row0003_global_counts
  | row0036 =>
      exact evenK3TerminalGroup0002Row0004_global_counts
  | row0037 =>
      exact evenK3TerminalGroup0002Row0005_global_counts
  | row0038 =>
      exact evenK3TerminalGroup0002Row0006_global_counts
  | row0039 =>
      exact evenK3TerminalGroup0002Row0007_global_counts
  | row0040 =>
      exact evenK3TerminalGroup0002Row0008_global_counts
  | row0041 =>
      exact evenK3TerminalGroup0002Row0009_global_counts
  | row0042 =>
      exact evenK3TerminalGroup0002Row0010_global_counts
  | row0043 =>
      exact evenK3TerminalGroup0002Row0011_global_counts
  | row0044 =>
      exact evenK3TerminalGroup0002Row0012_global_counts
  | row0045 =>
      exact evenK3TerminalGroup0002Row0013_global_counts
  | row0046 =>
      exact evenK3TerminalGroup0002Row0014_global_counts
  | row0047 =>
      exact evenK3TerminalGroup0002Row0015_global_counts
  | row0048 =>
      exact evenK3TerminalGroup0003Row0000_global_counts
  | row0049 =>
      exact evenK3TerminalGroup0003Row0001_global_counts
  | row0050 =>
      exact evenK3TerminalGroup0003Row0002_global_counts
  | row0051 =>
      exact evenK3TerminalGroup0003Row0003_global_counts
  | row0052 =>
      exact evenK3TerminalGroup0003Row0004_global_counts
  | row0053 =>
      exact evenK3TerminalGroup0003Row0005_global_counts
  | row0054 =>
      exact evenK3TerminalGroup0003Row0006_global_counts
  | row0055 =>
      exact evenK3TerminalGroup0003Row0007_global_counts
  | row0056 =>
      exact evenK3TerminalGroup0003Row0008_global_counts
  | row0057 =>
      exact evenK3TerminalGroup0003Row0009_global_counts
  | row0058 =>
      exact evenK3TerminalGroup0003Row0010_global_counts
  | row0059 =>
      exact evenK3TerminalGroup0003Row0011_global_counts
  | row0060 =>
      exact evenK3TerminalGroup0003Row0012_global_counts
  | row0061 =>
      exact evenK3TerminalGroup0003Row0013_global_counts
  | row0062 =>
      exact evenK3TerminalGroup0003Row0014_global_counts
  | row0063 =>
      exact evenK3TerminalGroup0003Row0015_global_counts
  | row0064 =>
      exact evenK3TerminalGroup0004Row0000_global_counts
  | row0065 =>
      exact evenK3TerminalGroup0004Row0001_global_counts
  | row0066 =>
      exact evenK3TerminalGroup0004Row0002_global_counts
  | row0067 =>
      exact evenK3TerminalGroup0004Row0003_global_counts
  | row0068 =>
      exact evenK3TerminalGroup0004Row0004_global_counts
  | row0069 =>
      exact evenK3TerminalGroup0004Row0005_global_counts
  | row0070 =>
      exact evenK3TerminalGroup0004Row0006_global_counts
  | row0071 =>
      exact evenK3TerminalGroup0004Row0007_global_counts
  | row0072 =>
      exact evenK3TerminalGroup0004Row0008_global_counts
  | row0073 =>
      exact evenK3TerminalGroup0004Row0009_global_counts
  | row0074 =>
      exact evenK3TerminalGroup0004Row0010_global_counts
  | row0075 =>
      exact evenK3TerminalGroup0004Row0011_global_counts
  | row0076 =>
      exact evenK3TerminalGroup0004Row0012_global_counts
  | row0077 =>
      exact evenK3TerminalGroup0004Row0013_global_counts
  | row0078 =>
      exact evenK3TerminalGroup0004Row0014_global_counts
  | row0079 =>
      exact evenK3TerminalGroup0004Row0015_global_counts
  | row0080 =>
      exact evenK3TerminalGroup0005Row0000_global_counts
  | row0081 =>
      exact evenK3TerminalGroup0005Row0001_global_counts
  | row0082 =>
      exact evenK3TerminalGroup0005Row0002_global_counts
  | row0083 =>
      exact evenK3TerminalGroup0005Row0003_global_counts
  | row0084 =>
      exact evenK3TerminalGroup0005Row0004_global_counts
  | row0085 =>
      exact evenK3TerminalGroup0005Row0005_global_counts
  | row0086 =>
      exact evenK3TerminalGroup0005Row0006_global_counts
  | row0087 =>
      exact evenK3TerminalGroup0005Row0007_global_counts
  | row0088 =>
      exact evenK3TerminalGroup0005Row0008_global_counts
  | row0089 =>
      exact evenK3TerminalGroup0005Row0009_global_counts
  | row0090 =>
      exact evenK3TerminalGroup0005Row0010_global_counts
  | row0091 =>
      exact evenK3TerminalGroup0005Row0011_global_counts
  | row0092 =>
      exact evenK3TerminalGroup0005Row0012_global_counts
  | row0093 =>
      exact evenK3TerminalGroup0005Row0013_global_counts
  | row0094 =>
      exact evenK3TerminalGroup0005Row0014_global_counts
  | row0095 =>
      exact evenK3TerminalGroup0005Row0015_global_counts
  | row0096 =>
      exact evenK3TerminalGroup0006Row0000_global_counts
  | row0097 =>
      exact evenK3TerminalGroup0006Row0001_global_counts

#print axioms evenK3Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
