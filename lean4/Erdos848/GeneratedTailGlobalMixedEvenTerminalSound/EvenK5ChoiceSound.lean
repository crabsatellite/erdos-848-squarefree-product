import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0011
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0015
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0019
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0023
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0027
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0028
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0029
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0030
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0031
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0032
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0033
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0034
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0035
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0036
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0037
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0038
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0039
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0040
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0041
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0042
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0043
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0044
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0045
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0046
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0047
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0048
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0049
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0050
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0051
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK5TerminalGroup0052

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK5Choice_global_counts
    (choice : EvenK5Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK5TerminalGroup0000Row0000_global_counts
  | row0001 =>
      exact evenK5TerminalGroup0000Row0001_global_counts
  | row0002 =>
      exact evenK5TerminalGroup0000Row0002_global_counts
  | row0003 =>
      exact evenK5TerminalGroup0000Row0003_global_counts
  | row0004 =>
      exact evenK5TerminalGroup0000Row0004_global_counts
  | row0005 =>
      exact evenK5TerminalGroup0000Row0005_global_counts
  | row0006 =>
      exact evenK5TerminalGroup0000Row0006_global_counts
  | row0007 =>
      exact evenK5TerminalGroup0000Row0007_global_counts
  | row0008 =>
      exact evenK5TerminalGroup0000Row0008_global_counts
  | row0009 =>
      exact evenK5TerminalGroup0000Row0009_global_counts
  | row0010 =>
      exact evenK5TerminalGroup0000Row0010_global_counts
  | row0011 =>
      exact evenK5TerminalGroup0000Row0011_global_counts
  | row0012 =>
      exact evenK5TerminalGroup0000Row0012_global_counts
  | row0013 =>
      exact evenK5TerminalGroup0000Row0013_global_counts
  | row0014 =>
      exact evenK5TerminalGroup0000Row0014_global_counts
  | row0015 =>
      exact evenK5TerminalGroup0000Row0015_global_counts
  | row0016 =>
      exact evenK5TerminalGroup0001Row0000_global_counts
  | row0017 =>
      exact evenK5TerminalGroup0001Row0001_global_counts
  | row0018 =>
      exact evenK5TerminalGroup0001Row0002_global_counts
  | row0019 =>
      exact evenK5TerminalGroup0001Row0003_global_counts
  | row0020 =>
      exact evenK5TerminalGroup0001Row0004_global_counts
  | row0021 =>
      exact evenK5TerminalGroup0001Row0005_global_counts
  | row0022 =>
      exact evenK5TerminalGroup0001Row0006_global_counts
  | row0023 =>
      exact evenK5TerminalGroup0001Row0007_global_counts
  | row0024 =>
      exact evenK5TerminalGroup0001Row0008_global_counts
  | row0025 =>
      exact evenK5TerminalGroup0001Row0009_global_counts
  | row0026 =>
      exact evenK5TerminalGroup0001Row0010_global_counts
  | row0027 =>
      exact evenK5TerminalGroup0001Row0011_global_counts
  | row0028 =>
      exact evenK5TerminalGroup0001Row0012_global_counts
  | row0029 =>
      exact evenK5TerminalGroup0001Row0013_global_counts
  | row0030 =>
      exact evenK5TerminalGroup0001Row0014_global_counts
  | row0031 =>
      exact evenK5TerminalGroup0001Row0015_global_counts
  | row0032 =>
      exact evenK5TerminalGroup0002Row0000_global_counts
  | row0033 =>
      exact evenK5TerminalGroup0002Row0001_global_counts
  | row0034 =>
      exact evenK5TerminalGroup0002Row0002_global_counts
  | row0035 =>
      exact evenK5TerminalGroup0002Row0003_global_counts
  | row0036 =>
      exact evenK5TerminalGroup0002Row0004_global_counts
  | row0037 =>
      exact evenK5TerminalGroup0002Row0005_global_counts
  | row0038 =>
      exact evenK5TerminalGroup0002Row0006_global_counts
  | row0039 =>
      exact evenK5TerminalGroup0002Row0007_global_counts
  | row0040 =>
      exact evenK5TerminalGroup0002Row0008_global_counts
  | row0041 =>
      exact evenK5TerminalGroup0002Row0009_global_counts
  | row0042 =>
      exact evenK5TerminalGroup0002Row0010_global_counts
  | row0043 =>
      exact evenK5TerminalGroup0002Row0011_global_counts
  | row0044 =>
      exact evenK5TerminalGroup0002Row0012_global_counts
  | row0045 =>
      exact evenK5TerminalGroup0002Row0013_global_counts
  | row0046 =>
      exact evenK5TerminalGroup0002Row0014_global_counts
  | row0047 =>
      exact evenK5TerminalGroup0002Row0015_global_counts
  | row0048 =>
      exact evenK5TerminalGroup0003Row0000_global_counts
  | row0049 =>
      exact evenK5TerminalGroup0003Row0001_global_counts
  | row0050 =>
      exact evenK5TerminalGroup0003Row0002_global_counts
  | row0051 =>
      exact evenK5TerminalGroup0003Row0003_global_counts
  | row0052 =>
      exact evenK5TerminalGroup0003Row0004_global_counts
  | row0053 =>
      exact evenK5TerminalGroup0003Row0005_global_counts
  | row0054 =>
      exact evenK5TerminalGroup0003Row0006_global_counts
  | row0055 =>
      exact evenK5TerminalGroup0003Row0007_global_counts
  | row0056 =>
      exact evenK5TerminalGroup0003Row0008_global_counts
  | row0057 =>
      exact evenK5TerminalGroup0003Row0009_global_counts
  | row0058 =>
      exact evenK5TerminalGroup0003Row0010_global_counts
  | row0059 =>
      exact evenK5TerminalGroup0003Row0011_global_counts
  | row0060 =>
      exact evenK5TerminalGroup0003Row0012_global_counts
  | row0061 =>
      exact evenK5TerminalGroup0003Row0013_global_counts
  | row0062 =>
      exact evenK5TerminalGroup0003Row0014_global_counts
  | row0063 =>
      exact evenK5TerminalGroup0003Row0015_global_counts
  | row0064 =>
      exact evenK5TerminalGroup0004Row0000_global_counts
  | row0065 =>
      exact evenK5TerminalGroup0004Row0001_global_counts
  | row0066 =>
      exact evenK5TerminalGroup0004Row0002_global_counts
  | row0067 =>
      exact evenK5TerminalGroup0004Row0003_global_counts
  | row0068 =>
      exact evenK5TerminalGroup0004Row0004_global_counts
  | row0069 =>
      exact evenK5TerminalGroup0004Row0005_global_counts
  | row0070 =>
      exact evenK5TerminalGroup0004Row0006_global_counts
  | row0071 =>
      exact evenK5TerminalGroup0004Row0007_global_counts
  | row0072 =>
      exact evenK5TerminalGroup0004Row0008_global_counts
  | row0073 =>
      exact evenK5TerminalGroup0004Row0009_global_counts
  | row0074 =>
      exact evenK5TerminalGroup0004Row0010_global_counts
  | row0075 =>
      exact evenK5TerminalGroup0004Row0011_global_counts
  | row0076 =>
      exact evenK5TerminalGroup0004Row0012_global_counts
  | row0077 =>
      exact evenK5TerminalGroup0004Row0013_global_counts
  | row0078 =>
      exact evenK5TerminalGroup0004Row0014_global_counts
  | row0079 =>
      exact evenK5TerminalGroup0004Row0015_global_counts
  | row0080 =>
      exact evenK5TerminalGroup0005Row0000_global_counts
  | row0081 =>
      exact evenK5TerminalGroup0005Row0001_global_counts
  | row0082 =>
      exact evenK5TerminalGroup0005Row0002_global_counts
  | row0083 =>
      exact evenK5TerminalGroup0005Row0003_global_counts
  | row0084 =>
      exact evenK5TerminalGroup0005Row0004_global_counts
  | row0085 =>
      exact evenK5TerminalGroup0005Row0005_global_counts
  | row0086 =>
      exact evenK5TerminalGroup0005Row0006_global_counts
  | row0087 =>
      exact evenK5TerminalGroup0005Row0007_global_counts
  | row0088 =>
      exact evenK5TerminalGroup0005Row0008_global_counts
  | row0089 =>
      exact evenK5TerminalGroup0005Row0009_global_counts
  | row0090 =>
      exact evenK5TerminalGroup0005Row0010_global_counts
  | row0091 =>
      exact evenK5TerminalGroup0005Row0011_global_counts
  | row0092 =>
      exact evenK5TerminalGroup0005Row0012_global_counts
  | row0093 =>
      exact evenK5TerminalGroup0005Row0013_global_counts
  | row0094 =>
      exact evenK5TerminalGroup0005Row0014_global_counts
  | row0095 =>
      exact evenK5TerminalGroup0005Row0015_global_counts
  | row0096 =>
      exact evenK5TerminalGroup0006Row0000_global_counts
  | row0097 =>
      exact evenK5TerminalGroup0006Row0001_global_counts
  | row0098 =>
      exact evenK5TerminalGroup0006Row0002_global_counts
  | row0099 =>
      exact evenK5TerminalGroup0006Row0003_global_counts
  | row0100 =>
      exact evenK5TerminalGroup0006Row0004_global_counts
  | row0101 =>
      exact evenK5TerminalGroup0006Row0005_global_counts
  | row0102 =>
      exact evenK5TerminalGroup0006Row0006_global_counts
  | row0103 =>
      exact evenK5TerminalGroup0006Row0007_global_counts
  | row0104 =>
      exact evenK5TerminalGroup0006Row0008_global_counts
  | row0105 =>
      exact evenK5TerminalGroup0006Row0009_global_counts
  | row0106 =>
      exact evenK5TerminalGroup0006Row0010_global_counts
  | row0107 =>
      exact evenK5TerminalGroup0006Row0011_global_counts
  | row0108 =>
      exact evenK5TerminalGroup0006Row0012_global_counts
  | row0109 =>
      exact evenK5TerminalGroup0006Row0013_global_counts
  | row0110 =>
      exact evenK5TerminalGroup0006Row0014_global_counts
  | row0111 =>
      exact evenK5TerminalGroup0006Row0015_global_counts
  | row0112 =>
      exact evenK5TerminalGroup0007Row0000_global_counts
  | row0113 =>
      exact evenK5TerminalGroup0007Row0001_global_counts
  | row0114 =>
      exact evenK5TerminalGroup0007Row0002_global_counts
  | row0115 =>
      exact evenK5TerminalGroup0007Row0003_global_counts
  | row0116 =>
      exact evenK5TerminalGroup0007Row0004_global_counts
  | row0117 =>
      exact evenK5TerminalGroup0007Row0005_global_counts
  | row0118 =>
      exact evenK5TerminalGroup0007Row0006_global_counts
  | row0119 =>
      exact evenK5TerminalGroup0007Row0007_global_counts
  | row0120 =>
      exact evenK5TerminalGroup0007Row0008_global_counts
  | row0121 =>
      exact evenK5TerminalGroup0007Row0009_global_counts
  | row0122 =>
      exact evenK5TerminalGroup0007Row0010_global_counts
  | row0123 =>
      exact evenK5TerminalGroup0007Row0011_global_counts
  | row0124 =>
      exact evenK5TerminalGroup0007Row0012_global_counts
  | row0125 =>
      exact evenK5TerminalGroup0007Row0013_global_counts
  | row0126 =>
      exact evenK5TerminalGroup0007Row0014_global_counts
  | row0127 =>
      exact evenK5TerminalGroup0007Row0015_global_counts
  | row0128 =>
      exact evenK5TerminalGroup0008Row0000_global_counts
  | row0129 =>
      exact evenK5TerminalGroup0008Row0001_global_counts
  | row0130 =>
      exact evenK5TerminalGroup0008Row0002_global_counts
  | row0131 =>
      exact evenK5TerminalGroup0008Row0003_global_counts
  | row0132 =>
      exact evenK5TerminalGroup0008Row0004_global_counts
  | row0133 =>
      exact evenK5TerminalGroup0008Row0005_global_counts
  | row0134 =>
      exact evenK5TerminalGroup0008Row0006_global_counts
  | row0135 =>
      exact evenK5TerminalGroup0008Row0007_global_counts
  | row0136 =>
      exact evenK5TerminalGroup0008Row0008_global_counts
  | row0137 =>
      exact evenK5TerminalGroup0008Row0009_global_counts
  | row0138 =>
      exact evenK5TerminalGroup0008Row0010_global_counts
  | row0139 =>
      exact evenK5TerminalGroup0008Row0011_global_counts
  | row0140 =>
      exact evenK5TerminalGroup0008Row0012_global_counts
  | row0141 =>
      exact evenK5TerminalGroup0008Row0013_global_counts
  | row0142 =>
      exact evenK5TerminalGroup0008Row0014_global_counts
  | row0143 =>
      exact evenK5TerminalGroup0008Row0015_global_counts
  | row0144 =>
      exact evenK5TerminalGroup0009Row0000_global_counts
  | row0145 =>
      exact evenK5TerminalGroup0009Row0001_global_counts
  | row0146 =>
      exact evenK5TerminalGroup0009Row0002_global_counts
  | row0147 =>
      exact evenK5TerminalGroup0009Row0003_global_counts
  | row0148 =>
      exact evenK5TerminalGroup0009Row0004_global_counts
  | row0149 =>
      exact evenK5TerminalGroup0009Row0005_global_counts
  | row0150 =>
      exact evenK5TerminalGroup0009Row0006_global_counts
  | row0151 =>
      exact evenK5TerminalGroup0009Row0007_global_counts
  | row0152 =>
      exact evenK5TerminalGroup0009Row0008_global_counts
  | row0153 =>
      exact evenK5TerminalGroup0009Row0009_global_counts
  | row0154 =>
      exact evenK5TerminalGroup0009Row0010_global_counts
  | row0155 =>
      exact evenK5TerminalGroup0009Row0011_global_counts
  | row0156 =>
      exact evenK5TerminalGroup0009Row0012_global_counts
  | row0157 =>
      exact evenK5TerminalGroup0009Row0013_global_counts
  | row0158 =>
      exact evenK5TerminalGroup0009Row0014_global_counts
  | row0159 =>
      exact evenK5TerminalGroup0009Row0015_global_counts
  | row0160 =>
      exact evenK5TerminalGroup0010Row0000_global_counts
  | row0161 =>
      exact evenK5TerminalGroup0010Row0001_global_counts
  | row0162 =>
      exact evenK5TerminalGroup0010Row0002_global_counts
  | row0163 =>
      exact evenK5TerminalGroup0010Row0003_global_counts
  | row0164 =>
      exact evenK5TerminalGroup0010Row0004_global_counts
  | row0165 =>
      exact evenK5TerminalGroup0010Row0005_global_counts
  | row0166 =>
      exact evenK5TerminalGroup0010Row0006_global_counts
  | row0167 =>
      exact evenK5TerminalGroup0010Row0007_global_counts
  | row0168 =>
      exact evenK5TerminalGroup0010Row0008_global_counts
  | row0169 =>
      exact evenK5TerminalGroup0010Row0009_global_counts
  | row0170 =>
      exact evenK5TerminalGroup0010Row0010_global_counts
  | row0171 =>
      exact evenK5TerminalGroup0010Row0011_global_counts
  | row0172 =>
      exact evenK5TerminalGroup0010Row0012_global_counts
  | row0173 =>
      exact evenK5TerminalGroup0010Row0013_global_counts
  | row0174 =>
      exact evenK5TerminalGroup0010Row0014_global_counts
  | row0175 =>
      exact evenK5TerminalGroup0010Row0015_global_counts
  | row0176 =>
      exact evenK5TerminalGroup0011Row0000_global_counts
  | row0177 =>
      exact evenK5TerminalGroup0011Row0001_global_counts
  | row0178 =>
      exact evenK5TerminalGroup0011Row0002_global_counts
  | row0179 =>
      exact evenK5TerminalGroup0011Row0003_global_counts
  | row0180 =>
      exact evenK5TerminalGroup0011Row0004_global_counts
  | row0181 =>
      exact evenK5TerminalGroup0011Row0005_global_counts
  | row0182 =>
      exact evenK5TerminalGroup0011Row0006_global_counts
  | row0183 =>
      exact evenK5TerminalGroup0011Row0007_global_counts
  | row0184 =>
      exact evenK5TerminalGroup0011Row0008_global_counts
  | row0185 =>
      exact evenK5TerminalGroup0011Row0009_global_counts
  | row0186 =>
      exact evenK5TerminalGroup0011Row0010_global_counts
  | row0187 =>
      exact evenK5TerminalGroup0011Row0011_global_counts
  | row0188 =>
      exact evenK5TerminalGroup0011Row0012_global_counts
  | row0189 =>
      exact evenK5TerminalGroup0011Row0013_global_counts
  | row0190 =>
      exact evenK5TerminalGroup0011Row0014_global_counts
  | row0191 =>
      exact evenK5TerminalGroup0011Row0015_global_counts
  | row0192 =>
      exact evenK5TerminalGroup0012Row0000_global_counts
  | row0193 =>
      exact evenK5TerminalGroup0012Row0001_global_counts
  | row0194 =>
      exact evenK5TerminalGroup0012Row0002_global_counts
  | row0195 =>
      exact evenK5TerminalGroup0012Row0003_global_counts
  | row0196 =>
      exact evenK5TerminalGroup0012Row0004_global_counts
  | row0197 =>
      exact evenK5TerminalGroup0012Row0005_global_counts
  | row0198 =>
      exact evenK5TerminalGroup0012Row0006_global_counts
  | row0199 =>
      exact evenK5TerminalGroup0012Row0007_global_counts
  | row0200 =>
      exact evenK5TerminalGroup0012Row0008_global_counts
  | row0201 =>
      exact evenK5TerminalGroup0012Row0009_global_counts
  | row0202 =>
      exact evenK5TerminalGroup0012Row0010_global_counts
  | row0203 =>
      exact evenK5TerminalGroup0012Row0011_global_counts
  | row0204 =>
      exact evenK5TerminalGroup0012Row0012_global_counts
  | row0205 =>
      exact evenK5TerminalGroup0012Row0013_global_counts
  | row0206 =>
      exact evenK5TerminalGroup0012Row0014_global_counts
  | row0207 =>
      exact evenK5TerminalGroup0012Row0015_global_counts
  | row0208 =>
      exact evenK5TerminalGroup0013Row0000_global_counts
  | row0209 =>
      exact evenK5TerminalGroup0013Row0001_global_counts
  | row0210 =>
      exact evenK5TerminalGroup0013Row0002_global_counts
  | row0211 =>
      exact evenK5TerminalGroup0013Row0003_global_counts
  | row0212 =>
      exact evenK5TerminalGroup0013Row0004_global_counts
  | row0213 =>
      exact evenK5TerminalGroup0013Row0005_global_counts
  | row0214 =>
      exact evenK5TerminalGroup0013Row0006_global_counts
  | row0215 =>
      exact evenK5TerminalGroup0013Row0007_global_counts
  | row0216 =>
      exact evenK5TerminalGroup0013Row0008_global_counts
  | row0217 =>
      exact evenK5TerminalGroup0013Row0009_global_counts
  | row0218 =>
      exact evenK5TerminalGroup0013Row0010_global_counts
  | row0219 =>
      exact evenK5TerminalGroup0013Row0011_global_counts
  | row0220 =>
      exact evenK5TerminalGroup0013Row0012_global_counts
  | row0221 =>
      exact evenK5TerminalGroup0013Row0013_global_counts
  | row0222 =>
      exact evenK5TerminalGroup0013Row0014_global_counts
  | row0223 =>
      exact evenK5TerminalGroup0013Row0015_global_counts
  | row0224 =>
      exact evenK5TerminalGroup0014Row0000_global_counts
  | row0225 =>
      exact evenK5TerminalGroup0014Row0001_global_counts
  | row0226 =>
      exact evenK5TerminalGroup0014Row0002_global_counts
  | row0227 =>
      exact evenK5TerminalGroup0014Row0003_global_counts
  | row0228 =>
      exact evenK5TerminalGroup0014Row0004_global_counts
  | row0229 =>
      exact evenK5TerminalGroup0014Row0005_global_counts
  | row0230 =>
      exact evenK5TerminalGroup0014Row0006_global_counts
  | row0231 =>
      exact evenK5TerminalGroup0014Row0007_global_counts
  | row0232 =>
      exact evenK5TerminalGroup0014Row0008_global_counts
  | row0233 =>
      exact evenK5TerminalGroup0014Row0009_global_counts
  | row0234 =>
      exact evenK5TerminalGroup0014Row0010_global_counts
  | row0235 =>
      exact evenK5TerminalGroup0014Row0011_global_counts
  | row0236 =>
      exact evenK5TerminalGroup0014Row0012_global_counts
  | row0237 =>
      exact evenK5TerminalGroup0014Row0013_global_counts
  | row0238 =>
      exact evenK5TerminalGroup0014Row0014_global_counts
  | row0239 =>
      exact evenK5TerminalGroup0014Row0015_global_counts
  | row0240 =>
      exact evenK5TerminalGroup0015Row0000_global_counts
  | row0241 =>
      exact evenK5TerminalGroup0015Row0001_global_counts
  | row0242 =>
      exact evenK5TerminalGroup0015Row0002_global_counts
  | row0243 =>
      exact evenK5TerminalGroup0015Row0003_global_counts
  | row0244 =>
      exact evenK5TerminalGroup0015Row0004_global_counts
  | row0245 =>
      exact evenK5TerminalGroup0015Row0005_global_counts
  | row0246 =>
      exact evenK5TerminalGroup0015Row0006_global_counts
  | row0247 =>
      exact evenK5TerminalGroup0015Row0007_global_counts
  | row0248 =>
      exact evenK5TerminalGroup0015Row0008_global_counts
  | row0249 =>
      exact evenK5TerminalGroup0015Row0009_global_counts
  | row0250 =>
      exact evenK5TerminalGroup0015Row0010_global_counts
  | row0251 =>
      exact evenK5TerminalGroup0015Row0011_global_counts
  | row0252 =>
      exact evenK5TerminalGroup0015Row0012_global_counts
  | row0253 =>
      exact evenK5TerminalGroup0015Row0013_global_counts
  | row0254 =>
      exact evenK5TerminalGroup0015Row0014_global_counts
  | row0255 =>
      exact evenK5TerminalGroup0015Row0015_global_counts
  | row0256 =>
      exact evenK5TerminalGroup0016Row0000_global_counts
  | row0257 =>
      exact evenK5TerminalGroup0016Row0001_global_counts
  | row0258 =>
      exact evenK5TerminalGroup0016Row0002_global_counts
  | row0259 =>
      exact evenK5TerminalGroup0016Row0003_global_counts
  | row0260 =>
      exact evenK5TerminalGroup0016Row0004_global_counts
  | row0261 =>
      exact evenK5TerminalGroup0016Row0005_global_counts
  | row0262 =>
      exact evenK5TerminalGroup0016Row0006_global_counts
  | row0263 =>
      exact evenK5TerminalGroup0016Row0007_global_counts
  | row0264 =>
      exact evenK5TerminalGroup0016Row0008_global_counts
  | row0265 =>
      exact evenK5TerminalGroup0016Row0009_global_counts
  | row0266 =>
      exact evenK5TerminalGroup0016Row0010_global_counts
  | row0267 =>
      exact evenK5TerminalGroup0016Row0011_global_counts
  | row0268 =>
      exact evenK5TerminalGroup0016Row0012_global_counts
  | row0269 =>
      exact evenK5TerminalGroup0016Row0013_global_counts
  | row0270 =>
      exact evenK5TerminalGroup0016Row0014_global_counts
  | row0271 =>
      exact evenK5TerminalGroup0016Row0015_global_counts
  | row0272 =>
      exact evenK5TerminalGroup0017Row0000_global_counts
  | row0273 =>
      exact evenK5TerminalGroup0017Row0001_global_counts
  | row0274 =>
      exact evenK5TerminalGroup0017Row0002_global_counts
  | row0275 =>
      exact evenK5TerminalGroup0017Row0003_global_counts
  | row0276 =>
      exact evenK5TerminalGroup0017Row0004_global_counts
  | row0277 =>
      exact evenK5TerminalGroup0017Row0005_global_counts
  | row0278 =>
      exact evenK5TerminalGroup0017Row0006_global_counts
  | row0279 =>
      exact evenK5TerminalGroup0017Row0007_global_counts
  | row0280 =>
      exact evenK5TerminalGroup0017Row0008_global_counts
  | row0281 =>
      exact evenK5TerminalGroup0017Row0009_global_counts
  | row0282 =>
      exact evenK5TerminalGroup0017Row0010_global_counts
  | row0283 =>
      exact evenK5TerminalGroup0017Row0011_global_counts
  | row0284 =>
      exact evenK5TerminalGroup0017Row0012_global_counts
  | row0285 =>
      exact evenK5TerminalGroup0017Row0013_global_counts
  | row0286 =>
      exact evenK5TerminalGroup0017Row0014_global_counts
  | row0287 =>
      exact evenK5TerminalGroup0017Row0015_global_counts
  | row0288 =>
      exact evenK5TerminalGroup0018Row0000_global_counts
  | row0289 =>
      exact evenK5TerminalGroup0018Row0001_global_counts
  | row0290 =>
      exact evenK5TerminalGroup0018Row0002_global_counts
  | row0291 =>
      exact evenK5TerminalGroup0018Row0003_global_counts
  | row0292 =>
      exact evenK5TerminalGroup0018Row0004_global_counts
  | row0293 =>
      exact evenK5TerminalGroup0018Row0005_global_counts
  | row0294 =>
      exact evenK5TerminalGroup0018Row0006_global_counts
  | row0295 =>
      exact evenK5TerminalGroup0018Row0007_global_counts
  | row0296 =>
      exact evenK5TerminalGroup0018Row0008_global_counts
  | row0297 =>
      exact evenK5TerminalGroup0018Row0009_global_counts
  | row0298 =>
      exact evenK5TerminalGroup0018Row0010_global_counts
  | row0299 =>
      exact evenK5TerminalGroup0018Row0011_global_counts
  | row0300 =>
      exact evenK5TerminalGroup0018Row0012_global_counts
  | row0301 =>
      exact evenK5TerminalGroup0018Row0013_global_counts
  | row0302 =>
      exact evenK5TerminalGroup0018Row0014_global_counts
  | row0303 =>
      exact evenK5TerminalGroup0018Row0015_global_counts
  | row0304 =>
      exact evenK5TerminalGroup0019Row0000_global_counts
  | row0305 =>
      exact evenK5TerminalGroup0019Row0001_global_counts
  | row0306 =>
      exact evenK5TerminalGroup0019Row0002_global_counts
  | row0307 =>
      exact evenK5TerminalGroup0019Row0003_global_counts
  | row0308 =>
      exact evenK5TerminalGroup0019Row0004_global_counts
  | row0309 =>
      exact evenK5TerminalGroup0019Row0005_global_counts
  | row0310 =>
      exact evenK5TerminalGroup0019Row0006_global_counts
  | row0311 =>
      exact evenK5TerminalGroup0019Row0007_global_counts
  | row0312 =>
      exact evenK5TerminalGroup0019Row0008_global_counts
  | row0313 =>
      exact evenK5TerminalGroup0019Row0009_global_counts
  | row0314 =>
      exact evenK5TerminalGroup0019Row0010_global_counts
  | row0315 =>
      exact evenK5TerminalGroup0019Row0011_global_counts
  | row0316 =>
      exact evenK5TerminalGroup0019Row0012_global_counts
  | row0317 =>
      exact evenK5TerminalGroup0019Row0013_global_counts
  | row0318 =>
      exact evenK5TerminalGroup0019Row0014_global_counts
  | row0319 =>
      exact evenK5TerminalGroup0019Row0015_global_counts
  | row0320 =>
      exact evenK5TerminalGroup0020Row0000_global_counts
  | row0321 =>
      exact evenK5TerminalGroup0020Row0001_global_counts
  | row0322 =>
      exact evenK5TerminalGroup0020Row0002_global_counts
  | row0323 =>
      exact evenK5TerminalGroup0020Row0003_global_counts
  | row0324 =>
      exact evenK5TerminalGroup0020Row0004_global_counts
  | row0325 =>
      exact evenK5TerminalGroup0020Row0005_global_counts
  | row0326 =>
      exact evenK5TerminalGroup0020Row0006_global_counts
  | row0327 =>
      exact evenK5TerminalGroup0020Row0007_global_counts
  | row0328 =>
      exact evenK5TerminalGroup0020Row0008_global_counts
  | row0329 =>
      exact evenK5TerminalGroup0020Row0009_global_counts
  | row0330 =>
      exact evenK5TerminalGroup0020Row0010_global_counts
  | row0331 =>
      exact evenK5TerminalGroup0020Row0011_global_counts
  | row0332 =>
      exact evenK5TerminalGroup0020Row0012_global_counts
  | row0333 =>
      exact evenK5TerminalGroup0020Row0013_global_counts
  | row0334 =>
      exact evenK5TerminalGroup0020Row0014_global_counts
  | row0335 =>
      exact evenK5TerminalGroup0020Row0015_global_counts
  | row0336 =>
      exact evenK5TerminalGroup0021Row0000_global_counts
  | row0337 =>
      exact evenK5TerminalGroup0021Row0001_global_counts
  | row0338 =>
      exact evenK5TerminalGroup0021Row0002_global_counts
  | row0339 =>
      exact evenK5TerminalGroup0021Row0003_global_counts
  | row0340 =>
      exact evenK5TerminalGroup0021Row0004_global_counts
  | row0341 =>
      exact evenK5TerminalGroup0021Row0005_global_counts
  | row0342 =>
      exact evenK5TerminalGroup0021Row0006_global_counts
  | row0343 =>
      exact evenK5TerminalGroup0021Row0007_global_counts
  | row0344 =>
      exact evenK5TerminalGroup0021Row0008_global_counts
  | row0345 =>
      exact evenK5TerminalGroup0021Row0009_global_counts
  | row0346 =>
      exact evenK5TerminalGroup0021Row0010_global_counts
  | row0347 =>
      exact evenK5TerminalGroup0021Row0011_global_counts
  | row0348 =>
      exact evenK5TerminalGroup0021Row0012_global_counts
  | row0349 =>
      exact evenK5TerminalGroup0021Row0013_global_counts
  | row0350 =>
      exact evenK5TerminalGroup0021Row0014_global_counts
  | row0351 =>
      exact evenK5TerminalGroup0021Row0015_global_counts
  | row0352 =>
      exact evenK5TerminalGroup0022Row0000_global_counts
  | row0353 =>
      exact evenK5TerminalGroup0022Row0001_global_counts
  | row0354 =>
      exact evenK5TerminalGroup0022Row0002_global_counts
  | row0355 =>
      exact evenK5TerminalGroup0022Row0003_global_counts
  | row0356 =>
      exact evenK5TerminalGroup0022Row0004_global_counts
  | row0357 =>
      exact evenK5TerminalGroup0022Row0005_global_counts
  | row0358 =>
      exact evenK5TerminalGroup0022Row0006_global_counts
  | row0359 =>
      exact evenK5TerminalGroup0022Row0007_global_counts
  | row0360 =>
      exact evenK5TerminalGroup0022Row0008_global_counts
  | row0361 =>
      exact evenK5TerminalGroup0022Row0009_global_counts
  | row0362 =>
      exact evenK5TerminalGroup0022Row0010_global_counts
  | row0363 =>
      exact evenK5TerminalGroup0022Row0011_global_counts
  | row0364 =>
      exact evenK5TerminalGroup0022Row0012_global_counts
  | row0365 =>
      exact evenK5TerminalGroup0022Row0013_global_counts
  | row0366 =>
      exact evenK5TerminalGroup0022Row0014_global_counts
  | row0367 =>
      exact evenK5TerminalGroup0022Row0015_global_counts
  | row0368 =>
      exact evenK5TerminalGroup0023Row0000_global_counts
  | row0369 =>
      exact evenK5TerminalGroup0023Row0001_global_counts
  | row0370 =>
      exact evenK5TerminalGroup0023Row0002_global_counts
  | row0371 =>
      exact evenK5TerminalGroup0023Row0003_global_counts
  | row0372 =>
      exact evenK5TerminalGroup0023Row0004_global_counts
  | row0373 =>
      exact evenK5TerminalGroup0023Row0005_global_counts
  | row0374 =>
      exact evenK5TerminalGroup0023Row0006_global_counts
  | row0375 =>
      exact evenK5TerminalGroup0023Row0007_global_counts
  | row0376 =>
      exact evenK5TerminalGroup0023Row0008_global_counts
  | row0377 =>
      exact evenK5TerminalGroup0023Row0009_global_counts
  | row0378 =>
      exact evenK5TerminalGroup0023Row0010_global_counts
  | row0379 =>
      exact evenK5TerminalGroup0023Row0011_global_counts
  | row0380 =>
      exact evenK5TerminalGroup0023Row0012_global_counts
  | row0381 =>
      exact evenK5TerminalGroup0023Row0013_global_counts
  | row0382 =>
      exact evenK5TerminalGroup0023Row0014_global_counts
  | row0383 =>
      exact evenK5TerminalGroup0023Row0015_global_counts
  | row0384 =>
      exact evenK5TerminalGroup0024Row0000_global_counts
  | row0385 =>
      exact evenK5TerminalGroup0024Row0001_global_counts
  | row0386 =>
      exact evenK5TerminalGroup0024Row0002_global_counts
  | row0387 =>
      exact evenK5TerminalGroup0024Row0003_global_counts
  | row0388 =>
      exact evenK5TerminalGroup0024Row0004_global_counts
  | row0389 =>
      exact evenK5TerminalGroup0024Row0005_global_counts
  | row0390 =>
      exact evenK5TerminalGroup0024Row0006_global_counts
  | row0391 =>
      exact evenK5TerminalGroup0024Row0007_global_counts
  | row0392 =>
      exact evenK5TerminalGroup0024Row0008_global_counts
  | row0393 =>
      exact evenK5TerminalGroup0024Row0009_global_counts
  | row0394 =>
      exact evenK5TerminalGroup0024Row0010_global_counts
  | row0395 =>
      exact evenK5TerminalGroup0024Row0011_global_counts
  | row0396 =>
      exact evenK5TerminalGroup0024Row0012_global_counts
  | row0397 =>
      exact evenK5TerminalGroup0024Row0013_global_counts
  | row0398 =>
      exact evenK5TerminalGroup0024Row0014_global_counts
  | row0399 =>
      exact evenK5TerminalGroup0024Row0015_global_counts
  | row0400 =>
      exact evenK5TerminalGroup0025Row0000_global_counts
  | row0401 =>
      exact evenK5TerminalGroup0025Row0001_global_counts
  | row0402 =>
      exact evenK5TerminalGroup0025Row0002_global_counts
  | row0403 =>
      exact evenK5TerminalGroup0025Row0003_global_counts
  | row0404 =>
      exact evenK5TerminalGroup0025Row0004_global_counts
  | row0405 =>
      exact evenK5TerminalGroup0025Row0005_global_counts
  | row0406 =>
      exact evenK5TerminalGroup0025Row0006_global_counts
  | row0407 =>
      exact evenK5TerminalGroup0025Row0007_global_counts
  | row0408 =>
      exact evenK5TerminalGroup0025Row0008_global_counts
  | row0409 =>
      exact evenK5TerminalGroup0025Row0009_global_counts
  | row0410 =>
      exact evenK5TerminalGroup0025Row0010_global_counts
  | row0411 =>
      exact evenK5TerminalGroup0025Row0011_global_counts
  | row0412 =>
      exact evenK5TerminalGroup0025Row0012_global_counts
  | row0413 =>
      exact evenK5TerminalGroup0025Row0013_global_counts
  | row0414 =>
      exact evenK5TerminalGroup0025Row0014_global_counts
  | row0415 =>
      exact evenK5TerminalGroup0025Row0015_global_counts
  | row0416 =>
      exact evenK5TerminalGroup0026Row0000_global_counts
  | row0417 =>
      exact evenK5TerminalGroup0026Row0001_global_counts
  | row0418 =>
      exact evenK5TerminalGroup0026Row0002_global_counts
  | row0419 =>
      exact evenK5TerminalGroup0026Row0003_global_counts
  | row0420 =>
      exact evenK5TerminalGroup0026Row0004_global_counts
  | row0421 =>
      exact evenK5TerminalGroup0026Row0005_global_counts
  | row0422 =>
      exact evenK5TerminalGroup0026Row0006_global_counts
  | row0423 =>
      exact evenK5TerminalGroup0026Row0007_global_counts
  | row0424 =>
      exact evenK5TerminalGroup0026Row0008_global_counts
  | row0425 =>
      exact evenK5TerminalGroup0026Row0009_global_counts
  | row0426 =>
      exact evenK5TerminalGroup0026Row0010_global_counts
  | row0427 =>
      exact evenK5TerminalGroup0026Row0011_global_counts
  | row0428 =>
      exact evenK5TerminalGroup0026Row0012_global_counts
  | row0429 =>
      exact evenK5TerminalGroup0026Row0013_global_counts
  | row0430 =>
      exact evenK5TerminalGroup0026Row0014_global_counts
  | row0431 =>
      exact evenK5TerminalGroup0026Row0015_global_counts
  | row0432 =>
      exact evenK5TerminalGroup0027Row0000_global_counts
  | row0433 =>
      exact evenK5TerminalGroup0027Row0001_global_counts
  | row0434 =>
      exact evenK5TerminalGroup0027Row0002_global_counts
  | row0435 =>
      exact evenK5TerminalGroup0027Row0003_global_counts
  | row0436 =>
      exact evenK5TerminalGroup0027Row0004_global_counts
  | row0437 =>
      exact evenK5TerminalGroup0027Row0005_global_counts
  | row0438 =>
      exact evenK5TerminalGroup0027Row0006_global_counts
  | row0439 =>
      exact evenK5TerminalGroup0027Row0007_global_counts
  | row0440 =>
      exact evenK5TerminalGroup0027Row0008_global_counts
  | row0441 =>
      exact evenK5TerminalGroup0027Row0009_global_counts
  | row0442 =>
      exact evenK5TerminalGroup0027Row0010_global_counts
  | row0443 =>
      exact evenK5TerminalGroup0027Row0011_global_counts
  | row0444 =>
      exact evenK5TerminalGroup0027Row0012_global_counts
  | row0445 =>
      exact evenK5TerminalGroup0027Row0013_global_counts
  | row0446 =>
      exact evenK5TerminalGroup0027Row0014_global_counts
  | row0447 =>
      exact evenK5TerminalGroup0027Row0015_global_counts
  | row0448 =>
      exact evenK5TerminalGroup0028Row0000_global_counts
  | row0449 =>
      exact evenK5TerminalGroup0028Row0001_global_counts
  | row0450 =>
      exact evenK5TerminalGroup0028Row0002_global_counts
  | row0451 =>
      exact evenK5TerminalGroup0028Row0003_global_counts
  | row0452 =>
      exact evenK5TerminalGroup0028Row0004_global_counts
  | row0453 =>
      exact evenK5TerminalGroup0028Row0005_global_counts
  | row0454 =>
      exact evenK5TerminalGroup0028Row0006_global_counts
  | row0455 =>
      exact evenK5TerminalGroup0028Row0007_global_counts
  | row0456 =>
      exact evenK5TerminalGroup0028Row0008_global_counts
  | row0457 =>
      exact evenK5TerminalGroup0028Row0009_global_counts
  | row0458 =>
      exact evenK5TerminalGroup0028Row0010_global_counts
  | row0459 =>
      exact evenK5TerminalGroup0028Row0011_global_counts
  | row0460 =>
      exact evenK5TerminalGroup0028Row0012_global_counts
  | row0461 =>
      exact evenK5TerminalGroup0028Row0013_global_counts
  | row0462 =>
      exact evenK5TerminalGroup0028Row0014_global_counts
  | row0463 =>
      exact evenK5TerminalGroup0028Row0015_global_counts
  | row0464 =>
      exact evenK5TerminalGroup0029Row0000_global_counts
  | row0465 =>
      exact evenK5TerminalGroup0029Row0001_global_counts
  | row0466 =>
      exact evenK5TerminalGroup0029Row0002_global_counts
  | row0467 =>
      exact evenK5TerminalGroup0029Row0003_global_counts
  | row0468 =>
      exact evenK5TerminalGroup0029Row0004_global_counts
  | row0469 =>
      exact evenK5TerminalGroup0029Row0005_global_counts
  | row0470 =>
      exact evenK5TerminalGroup0029Row0006_global_counts
  | row0471 =>
      exact evenK5TerminalGroup0029Row0007_global_counts
  | row0472 =>
      exact evenK5TerminalGroup0029Row0008_global_counts
  | row0473 =>
      exact evenK5TerminalGroup0029Row0009_global_counts
  | row0474 =>
      exact evenK5TerminalGroup0029Row0010_global_counts
  | row0475 =>
      exact evenK5TerminalGroup0029Row0011_global_counts
  | row0476 =>
      exact evenK5TerminalGroup0029Row0012_global_counts
  | row0477 =>
      exact evenK5TerminalGroup0029Row0013_global_counts
  | row0478 =>
      exact evenK5TerminalGroup0029Row0014_global_counts
  | row0479 =>
      exact evenK5TerminalGroup0029Row0015_global_counts
  | row0480 =>
      exact evenK5TerminalGroup0030Row0000_global_counts
  | row0481 =>
      exact evenK5TerminalGroup0030Row0001_global_counts
  | row0482 =>
      exact evenK5TerminalGroup0030Row0002_global_counts
  | row0483 =>
      exact evenK5TerminalGroup0030Row0003_global_counts
  | row0484 =>
      exact evenK5TerminalGroup0030Row0004_global_counts
  | row0485 =>
      exact evenK5TerminalGroup0030Row0005_global_counts
  | row0486 =>
      exact evenK5TerminalGroup0030Row0006_global_counts
  | row0487 =>
      exact evenK5TerminalGroup0030Row0007_global_counts
  | row0488 =>
      exact evenK5TerminalGroup0030Row0008_global_counts
  | row0489 =>
      exact evenK5TerminalGroup0030Row0009_global_counts
  | row0490 =>
      exact evenK5TerminalGroup0030Row0010_global_counts
  | row0491 =>
      exact evenK5TerminalGroup0030Row0011_global_counts
  | row0492 =>
      exact evenK5TerminalGroup0030Row0012_global_counts
  | row0493 =>
      exact evenK5TerminalGroup0030Row0013_global_counts
  | row0494 =>
      exact evenK5TerminalGroup0030Row0014_global_counts
  | row0495 =>
      exact evenK5TerminalGroup0030Row0015_global_counts
  | row0496 =>
      exact evenK5TerminalGroup0031Row0000_global_counts
  | row0497 =>
      exact evenK5TerminalGroup0031Row0001_global_counts
  | row0498 =>
      exact evenK5TerminalGroup0031Row0002_global_counts
  | row0499 =>
      exact evenK5TerminalGroup0031Row0003_global_counts
  | row0500 =>
      exact evenK5TerminalGroup0031Row0004_global_counts
  | row0501 =>
      exact evenK5TerminalGroup0031Row0005_global_counts
  | row0502 =>
      exact evenK5TerminalGroup0031Row0006_global_counts
  | row0503 =>
      exact evenK5TerminalGroup0031Row0007_global_counts
  | row0504 =>
      exact evenK5TerminalGroup0031Row0008_global_counts
  | row0505 =>
      exact evenK5TerminalGroup0031Row0009_global_counts
  | row0506 =>
      exact evenK5TerminalGroup0031Row0010_global_counts
  | row0507 =>
      exact evenK5TerminalGroup0031Row0011_global_counts
  | row0508 =>
      exact evenK5TerminalGroup0031Row0012_global_counts
  | row0509 =>
      exact evenK5TerminalGroup0031Row0013_global_counts
  | row0510 =>
      exact evenK5TerminalGroup0031Row0014_global_counts
  | row0511 =>
      exact evenK5TerminalGroup0031Row0015_global_counts
  | row0512 =>
      exact evenK5TerminalGroup0032Row0000_global_counts
  | row0513 =>
      exact evenK5TerminalGroup0032Row0001_global_counts
  | row0514 =>
      exact evenK5TerminalGroup0032Row0002_global_counts
  | row0515 =>
      exact evenK5TerminalGroup0032Row0003_global_counts
  | row0516 =>
      exact evenK5TerminalGroup0032Row0004_global_counts
  | row0517 =>
      exact evenK5TerminalGroup0032Row0005_global_counts
  | row0518 =>
      exact evenK5TerminalGroup0032Row0006_global_counts
  | row0519 =>
      exact evenK5TerminalGroup0032Row0007_global_counts
  | row0520 =>
      exact evenK5TerminalGroup0032Row0008_global_counts
  | row0521 =>
      exact evenK5TerminalGroup0032Row0009_global_counts
  | row0522 =>
      exact evenK5TerminalGroup0032Row0010_global_counts
  | row0523 =>
      exact evenK5TerminalGroup0032Row0011_global_counts
  | row0524 =>
      exact evenK5TerminalGroup0032Row0012_global_counts
  | row0525 =>
      exact evenK5TerminalGroup0032Row0013_global_counts
  | row0526 =>
      exact evenK5TerminalGroup0032Row0014_global_counts
  | row0527 =>
      exact evenK5TerminalGroup0032Row0015_global_counts
  | row0528 =>
      exact evenK5TerminalGroup0033Row0000_global_counts
  | row0529 =>
      exact evenK5TerminalGroup0033Row0001_global_counts
  | row0530 =>
      exact evenK5TerminalGroup0033Row0002_global_counts
  | row0531 =>
      exact evenK5TerminalGroup0033Row0003_global_counts
  | row0532 =>
      exact evenK5TerminalGroup0033Row0004_global_counts
  | row0533 =>
      exact evenK5TerminalGroup0033Row0005_global_counts
  | row0534 =>
      exact evenK5TerminalGroup0033Row0006_global_counts
  | row0535 =>
      exact evenK5TerminalGroup0033Row0007_global_counts
  | row0536 =>
      exact evenK5TerminalGroup0033Row0008_global_counts
  | row0537 =>
      exact evenK5TerminalGroup0033Row0009_global_counts
  | row0538 =>
      exact evenK5TerminalGroup0033Row0010_global_counts
  | row0539 =>
      exact evenK5TerminalGroup0033Row0011_global_counts
  | row0540 =>
      exact evenK5TerminalGroup0033Row0012_global_counts
  | row0541 =>
      exact evenK5TerminalGroup0033Row0013_global_counts
  | row0542 =>
      exact evenK5TerminalGroup0033Row0014_global_counts
  | row0543 =>
      exact evenK5TerminalGroup0033Row0015_global_counts
  | row0544 =>
      exact evenK5TerminalGroup0034Row0000_global_counts
  | row0545 =>
      exact evenK5TerminalGroup0034Row0001_global_counts
  | row0546 =>
      exact evenK5TerminalGroup0034Row0002_global_counts
  | row0547 =>
      exact evenK5TerminalGroup0034Row0003_global_counts
  | row0548 =>
      exact evenK5TerminalGroup0034Row0004_global_counts
  | row0549 =>
      exact evenK5TerminalGroup0034Row0005_global_counts
  | row0550 =>
      exact evenK5TerminalGroup0034Row0006_global_counts
  | row0551 =>
      exact evenK5TerminalGroup0034Row0007_global_counts
  | row0552 =>
      exact evenK5TerminalGroup0034Row0008_global_counts
  | row0553 =>
      exact evenK5TerminalGroup0034Row0009_global_counts
  | row0554 =>
      exact evenK5TerminalGroup0034Row0010_global_counts
  | row0555 =>
      exact evenK5TerminalGroup0034Row0011_global_counts
  | row0556 =>
      exact evenK5TerminalGroup0034Row0012_global_counts
  | row0557 =>
      exact evenK5TerminalGroup0034Row0013_global_counts
  | row0558 =>
      exact evenK5TerminalGroup0034Row0014_global_counts
  | row0559 =>
      exact evenK5TerminalGroup0034Row0015_global_counts
  | row0560 =>
      exact evenK5TerminalGroup0035Row0000_global_counts
  | row0561 =>
      exact evenK5TerminalGroup0035Row0001_global_counts
  | row0562 =>
      exact evenK5TerminalGroup0035Row0002_global_counts
  | row0563 =>
      exact evenK5TerminalGroup0035Row0003_global_counts
  | row0564 =>
      exact evenK5TerminalGroup0035Row0004_global_counts
  | row0565 =>
      exact evenK5TerminalGroup0035Row0005_global_counts
  | row0566 =>
      exact evenK5TerminalGroup0035Row0006_global_counts
  | row0567 =>
      exact evenK5TerminalGroup0035Row0007_global_counts
  | row0568 =>
      exact evenK5TerminalGroup0035Row0008_global_counts
  | row0569 =>
      exact evenK5TerminalGroup0035Row0009_global_counts
  | row0570 =>
      exact evenK5TerminalGroup0035Row0010_global_counts
  | row0571 =>
      exact evenK5TerminalGroup0035Row0011_global_counts
  | row0572 =>
      exact evenK5TerminalGroup0035Row0012_global_counts
  | row0573 =>
      exact evenK5TerminalGroup0035Row0013_global_counts
  | row0574 =>
      exact evenK5TerminalGroup0035Row0014_global_counts
  | row0575 =>
      exact evenK5TerminalGroup0035Row0015_global_counts
  | row0576 =>
      exact evenK5TerminalGroup0036Row0000_global_counts
  | row0577 =>
      exact evenK5TerminalGroup0036Row0001_global_counts
  | row0578 =>
      exact evenK5TerminalGroup0036Row0002_global_counts
  | row0579 =>
      exact evenK5TerminalGroup0036Row0003_global_counts
  | row0580 =>
      exact evenK5TerminalGroup0036Row0004_global_counts
  | row0581 =>
      exact evenK5TerminalGroup0036Row0005_global_counts
  | row0582 =>
      exact evenK5TerminalGroup0036Row0006_global_counts
  | row0583 =>
      exact evenK5TerminalGroup0036Row0007_global_counts
  | row0584 =>
      exact evenK5TerminalGroup0036Row0008_global_counts
  | row0585 =>
      exact evenK5TerminalGroup0036Row0009_global_counts
  | row0586 =>
      exact evenK5TerminalGroup0036Row0010_global_counts
  | row0587 =>
      exact evenK5TerminalGroup0036Row0011_global_counts
  | row0588 =>
      exact evenK5TerminalGroup0036Row0012_global_counts
  | row0589 =>
      exact evenK5TerminalGroup0036Row0013_global_counts
  | row0590 =>
      exact evenK5TerminalGroup0036Row0014_global_counts
  | row0591 =>
      exact evenK5TerminalGroup0036Row0015_global_counts
  | row0592 =>
      exact evenK5TerminalGroup0037Row0000_global_counts
  | row0593 =>
      exact evenK5TerminalGroup0037Row0001_global_counts
  | row0594 =>
      exact evenK5TerminalGroup0037Row0002_global_counts
  | row0595 =>
      exact evenK5TerminalGroup0037Row0003_global_counts
  | row0596 =>
      exact evenK5TerminalGroup0037Row0004_global_counts
  | row0597 =>
      exact evenK5TerminalGroup0037Row0005_global_counts
  | row0598 =>
      exact evenK5TerminalGroup0037Row0006_global_counts
  | row0599 =>
      exact evenK5TerminalGroup0037Row0007_global_counts
  | row0600 =>
      exact evenK5TerminalGroup0037Row0008_global_counts
  | row0601 =>
      exact evenK5TerminalGroup0037Row0009_global_counts
  | row0602 =>
      exact evenK5TerminalGroup0037Row0010_global_counts
  | row0603 =>
      exact evenK5TerminalGroup0037Row0011_global_counts
  | row0604 =>
      exact evenK5TerminalGroup0037Row0012_global_counts
  | row0605 =>
      exact evenK5TerminalGroup0037Row0013_global_counts
  | row0606 =>
      exact evenK5TerminalGroup0037Row0014_global_counts
  | row0607 =>
      exact evenK5TerminalGroup0037Row0015_global_counts
  | row0608 =>
      exact evenK5TerminalGroup0038Row0000_global_counts
  | row0609 =>
      exact evenK5TerminalGroup0038Row0001_global_counts
  | row0610 =>
      exact evenK5TerminalGroup0038Row0002_global_counts
  | row0611 =>
      exact evenK5TerminalGroup0038Row0003_global_counts
  | row0612 =>
      exact evenK5TerminalGroup0038Row0004_global_counts
  | row0613 =>
      exact evenK5TerminalGroup0038Row0005_global_counts
  | row0614 =>
      exact evenK5TerminalGroup0038Row0006_global_counts
  | row0615 =>
      exact evenK5TerminalGroup0038Row0007_global_counts
  | row0616 =>
      exact evenK5TerminalGroup0038Row0008_global_counts
  | row0617 =>
      exact evenK5TerminalGroup0038Row0009_global_counts
  | row0618 =>
      exact evenK5TerminalGroup0038Row0010_global_counts
  | row0619 =>
      exact evenK5TerminalGroup0038Row0011_global_counts
  | row0620 =>
      exact evenK5TerminalGroup0038Row0012_global_counts
  | row0621 =>
      exact evenK5TerminalGroup0038Row0013_global_counts
  | row0622 =>
      exact evenK5TerminalGroup0038Row0014_global_counts
  | row0623 =>
      exact evenK5TerminalGroup0038Row0015_global_counts
  | row0624 =>
      exact evenK5TerminalGroup0039Row0000_global_counts
  | row0625 =>
      exact evenK5TerminalGroup0039Row0001_global_counts
  | row0626 =>
      exact evenK5TerminalGroup0039Row0002_global_counts
  | row0627 =>
      exact evenK5TerminalGroup0039Row0003_global_counts
  | row0628 =>
      exact evenK5TerminalGroup0039Row0004_global_counts
  | row0629 =>
      exact evenK5TerminalGroup0039Row0005_global_counts
  | row0630 =>
      exact evenK5TerminalGroup0039Row0006_global_counts
  | row0631 =>
      exact evenK5TerminalGroup0039Row0007_global_counts
  | row0632 =>
      exact evenK5TerminalGroup0039Row0008_global_counts
  | row0633 =>
      exact evenK5TerminalGroup0039Row0009_global_counts
  | row0634 =>
      exact evenK5TerminalGroup0039Row0010_global_counts
  | row0635 =>
      exact evenK5TerminalGroup0039Row0011_global_counts
  | row0636 =>
      exact evenK5TerminalGroup0039Row0012_global_counts
  | row0637 =>
      exact evenK5TerminalGroup0039Row0013_global_counts
  | row0638 =>
      exact evenK5TerminalGroup0039Row0014_global_counts
  | row0639 =>
      exact evenK5TerminalGroup0039Row0015_global_counts
  | row0640 =>
      exact evenK5TerminalGroup0040Row0000_global_counts
  | row0641 =>
      exact evenK5TerminalGroup0040Row0001_global_counts
  | row0642 =>
      exact evenK5TerminalGroup0040Row0002_global_counts
  | row0643 =>
      exact evenK5TerminalGroup0040Row0003_global_counts
  | row0644 =>
      exact evenK5TerminalGroup0040Row0004_global_counts
  | row0645 =>
      exact evenK5TerminalGroup0040Row0005_global_counts
  | row0646 =>
      exact evenK5TerminalGroup0040Row0006_global_counts
  | row0647 =>
      exact evenK5TerminalGroup0040Row0007_global_counts
  | row0648 =>
      exact evenK5TerminalGroup0040Row0008_global_counts
  | row0649 =>
      exact evenK5TerminalGroup0040Row0009_global_counts
  | row0650 =>
      exact evenK5TerminalGroup0040Row0010_global_counts
  | row0651 =>
      exact evenK5TerminalGroup0040Row0011_global_counts
  | row0652 =>
      exact evenK5TerminalGroup0040Row0012_global_counts
  | row0653 =>
      exact evenK5TerminalGroup0040Row0013_global_counts
  | row0654 =>
      exact evenK5TerminalGroup0040Row0014_global_counts
  | row0655 =>
      exact evenK5TerminalGroup0040Row0015_global_counts
  | row0656 =>
      exact evenK5TerminalGroup0041Row0000_global_counts
  | row0657 =>
      exact evenK5TerminalGroup0041Row0001_global_counts
  | row0658 =>
      exact evenK5TerminalGroup0041Row0002_global_counts
  | row0659 =>
      exact evenK5TerminalGroup0041Row0003_global_counts
  | row0660 =>
      exact evenK5TerminalGroup0041Row0004_global_counts
  | row0661 =>
      exact evenK5TerminalGroup0041Row0005_global_counts
  | row0662 =>
      exact evenK5TerminalGroup0041Row0006_global_counts
  | row0663 =>
      exact evenK5TerminalGroup0041Row0007_global_counts
  | row0664 =>
      exact evenK5TerminalGroup0041Row0008_global_counts
  | row0665 =>
      exact evenK5TerminalGroup0041Row0009_global_counts
  | row0666 =>
      exact evenK5TerminalGroup0041Row0010_global_counts
  | row0667 =>
      exact evenK5TerminalGroup0041Row0011_global_counts
  | row0668 =>
      exact evenK5TerminalGroup0041Row0012_global_counts
  | row0669 =>
      exact evenK5TerminalGroup0041Row0013_global_counts
  | row0670 =>
      exact evenK5TerminalGroup0041Row0014_global_counts
  | row0671 =>
      exact evenK5TerminalGroup0041Row0015_global_counts
  | row0672 =>
      exact evenK5TerminalGroup0042Row0000_global_counts
  | row0673 =>
      exact evenK5TerminalGroup0042Row0001_global_counts
  | row0674 =>
      exact evenK5TerminalGroup0042Row0002_global_counts
  | row0675 =>
      exact evenK5TerminalGroup0042Row0003_global_counts
  | row0676 =>
      exact evenK5TerminalGroup0042Row0004_global_counts
  | row0677 =>
      exact evenK5TerminalGroup0042Row0005_global_counts
  | row0678 =>
      exact evenK5TerminalGroup0042Row0006_global_counts
  | row0679 =>
      exact evenK5TerminalGroup0042Row0007_global_counts
  | row0680 =>
      exact evenK5TerminalGroup0042Row0008_global_counts
  | row0681 =>
      exact evenK5TerminalGroup0042Row0009_global_counts
  | row0682 =>
      exact evenK5TerminalGroup0042Row0010_global_counts
  | row0683 =>
      exact evenK5TerminalGroup0042Row0011_global_counts
  | row0684 =>
      exact evenK5TerminalGroup0042Row0012_global_counts
  | row0685 =>
      exact evenK5TerminalGroup0042Row0013_global_counts
  | row0686 =>
      exact evenK5TerminalGroup0042Row0014_global_counts
  | row0687 =>
      exact evenK5TerminalGroup0042Row0015_global_counts
  | row0688 =>
      exact evenK5TerminalGroup0043Row0000_global_counts
  | row0689 =>
      exact evenK5TerminalGroup0043Row0001_global_counts
  | row0690 =>
      exact evenK5TerminalGroup0043Row0002_global_counts
  | row0691 =>
      exact evenK5TerminalGroup0043Row0003_global_counts
  | row0692 =>
      exact evenK5TerminalGroup0043Row0004_global_counts
  | row0693 =>
      exact evenK5TerminalGroup0043Row0005_global_counts
  | row0694 =>
      exact evenK5TerminalGroup0043Row0006_global_counts
  | row0695 =>
      exact evenK5TerminalGroup0043Row0007_global_counts
  | row0696 =>
      exact evenK5TerminalGroup0043Row0008_global_counts
  | row0697 =>
      exact evenK5TerminalGroup0043Row0009_global_counts
  | row0698 =>
      exact evenK5TerminalGroup0043Row0010_global_counts
  | row0699 =>
      exact evenK5TerminalGroup0043Row0011_global_counts
  | row0700 =>
      exact evenK5TerminalGroup0043Row0012_global_counts
  | row0701 =>
      exact evenK5TerminalGroup0043Row0013_global_counts
  | row0702 =>
      exact evenK5TerminalGroup0043Row0014_global_counts
  | row0703 =>
      exact evenK5TerminalGroup0043Row0015_global_counts
  | row0704 =>
      exact evenK5TerminalGroup0044Row0000_global_counts
  | row0705 =>
      exact evenK5TerminalGroup0044Row0001_global_counts
  | row0706 =>
      exact evenK5TerminalGroup0044Row0002_global_counts
  | row0707 =>
      exact evenK5TerminalGroup0044Row0003_global_counts
  | row0708 =>
      exact evenK5TerminalGroup0044Row0004_global_counts
  | row0709 =>
      exact evenK5TerminalGroup0044Row0005_global_counts
  | row0710 =>
      exact evenK5TerminalGroup0044Row0006_global_counts
  | row0711 =>
      exact evenK5TerminalGroup0044Row0007_global_counts
  | row0712 =>
      exact evenK5TerminalGroup0044Row0008_global_counts
  | row0713 =>
      exact evenK5TerminalGroup0044Row0009_global_counts
  | row0714 =>
      exact evenK5TerminalGroup0044Row0010_global_counts
  | row0715 =>
      exact evenK5TerminalGroup0044Row0011_global_counts
  | row0716 =>
      exact evenK5TerminalGroup0044Row0012_global_counts
  | row0717 =>
      exact evenK5TerminalGroup0044Row0013_global_counts
  | row0718 =>
      exact evenK5TerminalGroup0044Row0014_global_counts
  | row0719 =>
      exact evenK5TerminalGroup0044Row0015_global_counts
  | row0720 =>
      exact evenK5TerminalGroup0045Row0000_global_counts
  | row0721 =>
      exact evenK5TerminalGroup0045Row0001_global_counts
  | row0722 =>
      exact evenK5TerminalGroup0045Row0002_global_counts
  | row0723 =>
      exact evenK5TerminalGroup0045Row0003_global_counts
  | row0724 =>
      exact evenK5TerminalGroup0045Row0004_global_counts
  | row0725 =>
      exact evenK5TerminalGroup0045Row0005_global_counts
  | row0726 =>
      exact evenK5TerminalGroup0045Row0006_global_counts
  | row0727 =>
      exact evenK5TerminalGroup0045Row0007_global_counts
  | row0728 =>
      exact evenK5TerminalGroup0045Row0008_global_counts
  | row0729 =>
      exact evenK5TerminalGroup0045Row0009_global_counts
  | row0730 =>
      exact evenK5TerminalGroup0045Row0010_global_counts
  | row0731 =>
      exact evenK5TerminalGroup0045Row0011_global_counts
  | row0732 =>
      exact evenK5TerminalGroup0045Row0012_global_counts
  | row0733 =>
      exact evenK5TerminalGroup0045Row0013_global_counts
  | row0734 =>
      exact evenK5TerminalGroup0045Row0014_global_counts
  | row0735 =>
      exact evenK5TerminalGroup0045Row0015_global_counts
  | row0736 =>
      exact evenK5TerminalGroup0046Row0000_global_counts
  | row0737 =>
      exact evenK5TerminalGroup0046Row0001_global_counts
  | row0738 =>
      exact evenK5TerminalGroup0046Row0002_global_counts
  | row0739 =>
      exact evenK5TerminalGroup0046Row0003_global_counts
  | row0740 =>
      exact evenK5TerminalGroup0046Row0004_global_counts
  | row0741 =>
      exact evenK5TerminalGroup0046Row0005_global_counts
  | row0742 =>
      exact evenK5TerminalGroup0046Row0006_global_counts
  | row0743 =>
      exact evenK5TerminalGroup0046Row0007_global_counts
  | row0744 =>
      exact evenK5TerminalGroup0046Row0008_global_counts
  | row0745 =>
      exact evenK5TerminalGroup0046Row0009_global_counts
  | row0746 =>
      exact evenK5TerminalGroup0046Row0010_global_counts
  | row0747 =>
      exact evenK5TerminalGroup0046Row0011_global_counts
  | row0748 =>
      exact evenK5TerminalGroup0046Row0012_global_counts
  | row0749 =>
      exact evenK5TerminalGroup0046Row0013_global_counts
  | row0750 =>
      exact evenK5TerminalGroup0046Row0014_global_counts
  | row0751 =>
      exact evenK5TerminalGroup0046Row0015_global_counts
  | row0752 =>
      exact evenK5TerminalGroup0047Row0000_global_counts
  | row0753 =>
      exact evenK5TerminalGroup0047Row0001_global_counts
  | row0754 =>
      exact evenK5TerminalGroup0047Row0002_global_counts
  | row0755 =>
      exact evenK5TerminalGroup0047Row0003_global_counts
  | row0756 =>
      exact evenK5TerminalGroup0047Row0004_global_counts
  | row0757 =>
      exact evenK5TerminalGroup0047Row0005_global_counts
  | row0758 =>
      exact evenK5TerminalGroup0047Row0006_global_counts
  | row0759 =>
      exact evenK5TerminalGroup0047Row0007_global_counts
  | row0760 =>
      exact evenK5TerminalGroup0047Row0008_global_counts
  | row0761 =>
      exact evenK5TerminalGroup0047Row0009_global_counts
  | row0762 =>
      exact evenK5TerminalGroup0047Row0010_global_counts
  | row0763 =>
      exact evenK5TerminalGroup0047Row0011_global_counts
  | row0764 =>
      exact evenK5TerminalGroup0047Row0012_global_counts
  | row0765 =>
      exact evenK5TerminalGroup0047Row0013_global_counts
  | row0766 =>
      exact evenK5TerminalGroup0047Row0014_global_counts
  | row0767 =>
      exact evenK5TerminalGroup0047Row0015_global_counts
  | row0768 =>
      exact evenK5TerminalGroup0048Row0000_global_counts
  | row0769 =>
      exact evenK5TerminalGroup0048Row0001_global_counts
  | row0770 =>
      exact evenK5TerminalGroup0048Row0002_global_counts
  | row0771 =>
      exact evenK5TerminalGroup0048Row0003_global_counts
  | row0772 =>
      exact evenK5TerminalGroup0048Row0004_global_counts
  | row0773 =>
      exact evenK5TerminalGroup0048Row0005_global_counts
  | row0774 =>
      exact evenK5TerminalGroup0048Row0006_global_counts
  | row0775 =>
      exact evenK5TerminalGroup0048Row0007_global_counts
  | row0776 =>
      exact evenK5TerminalGroup0048Row0008_global_counts
  | row0777 =>
      exact evenK5TerminalGroup0048Row0009_global_counts
  | row0778 =>
      exact evenK5TerminalGroup0048Row0010_global_counts
  | row0779 =>
      exact evenK5TerminalGroup0048Row0011_global_counts
  | row0780 =>
      exact evenK5TerminalGroup0048Row0012_global_counts
  | row0781 =>
      exact evenK5TerminalGroup0048Row0013_global_counts
  | row0782 =>
      exact evenK5TerminalGroup0048Row0014_global_counts
  | row0783 =>
      exact evenK5TerminalGroup0048Row0015_global_counts
  | row0784 =>
      exact evenK5TerminalGroup0049Row0000_global_counts
  | row0785 =>
      exact evenK5TerminalGroup0049Row0001_global_counts
  | row0786 =>
      exact evenK5TerminalGroup0049Row0002_global_counts
  | row0787 =>
      exact evenK5TerminalGroup0049Row0003_global_counts
  | row0788 =>
      exact evenK5TerminalGroup0049Row0004_global_counts
  | row0789 =>
      exact evenK5TerminalGroup0049Row0005_global_counts
  | row0790 =>
      exact evenK5TerminalGroup0049Row0006_global_counts
  | row0791 =>
      exact evenK5TerminalGroup0049Row0007_global_counts
  | row0792 =>
      exact evenK5TerminalGroup0049Row0008_global_counts
  | row0793 =>
      exact evenK5TerminalGroup0049Row0009_global_counts
  | row0794 =>
      exact evenK5TerminalGroup0049Row0010_global_counts
  | row0795 =>
      exact evenK5TerminalGroup0049Row0011_global_counts
  | row0796 =>
      exact evenK5TerminalGroup0049Row0012_global_counts
  | row0797 =>
      exact evenK5TerminalGroup0049Row0013_global_counts
  | row0798 =>
      exact evenK5TerminalGroup0049Row0014_global_counts
  | row0799 =>
      exact evenK5TerminalGroup0049Row0015_global_counts
  | row0800 =>
      exact evenK5TerminalGroup0050Row0000_global_counts
  | row0801 =>
      exact evenK5TerminalGroup0050Row0001_global_counts
  | row0802 =>
      exact evenK5TerminalGroup0050Row0002_global_counts
  | row0803 =>
      exact evenK5TerminalGroup0050Row0003_global_counts
  | row0804 =>
      exact evenK5TerminalGroup0050Row0004_global_counts
  | row0805 =>
      exact evenK5TerminalGroup0050Row0005_global_counts
  | row0806 =>
      exact evenK5TerminalGroup0050Row0006_global_counts
  | row0807 =>
      exact evenK5TerminalGroup0050Row0007_global_counts
  | row0808 =>
      exact evenK5TerminalGroup0050Row0008_global_counts
  | row0809 =>
      exact evenK5TerminalGroup0050Row0009_global_counts
  | row0810 =>
      exact evenK5TerminalGroup0050Row0010_global_counts
  | row0811 =>
      exact evenK5TerminalGroup0050Row0011_global_counts
  | row0812 =>
      exact evenK5TerminalGroup0050Row0012_global_counts
  | row0813 =>
      exact evenK5TerminalGroup0050Row0013_global_counts
  | row0814 =>
      exact evenK5TerminalGroup0050Row0014_global_counts
  | row0815 =>
      exact evenK5TerminalGroup0050Row0015_global_counts
  | row0816 =>
      exact evenK5TerminalGroup0051Row0000_global_counts
  | row0817 =>
      exact evenK5TerminalGroup0051Row0001_global_counts
  | row0818 =>
      exact evenK5TerminalGroup0051Row0002_global_counts
  | row0819 =>
      exact evenK5TerminalGroup0051Row0003_global_counts
  | row0820 =>
      exact evenK5TerminalGroup0051Row0004_global_counts
  | row0821 =>
      exact evenK5TerminalGroup0051Row0005_global_counts
  | row0822 =>
      exact evenK5TerminalGroup0051Row0006_global_counts
  | row0823 =>
      exact evenK5TerminalGroup0051Row0007_global_counts
  | row0824 =>
      exact evenK5TerminalGroup0051Row0008_global_counts
  | row0825 =>
      exact evenK5TerminalGroup0051Row0009_global_counts
  | row0826 =>
      exact evenK5TerminalGroup0051Row0010_global_counts
  | row0827 =>
      exact evenK5TerminalGroup0051Row0011_global_counts
  | row0828 =>
      exact evenK5TerminalGroup0051Row0012_global_counts
  | row0829 =>
      exact evenK5TerminalGroup0051Row0013_global_counts
  | row0830 =>
      exact evenK5TerminalGroup0051Row0014_global_counts
  | row0831 =>
      exact evenK5TerminalGroup0051Row0015_global_counts
  | row0832 =>
      exact evenK5TerminalGroup0052Row0000_global_counts
  | row0833 =>
      exact evenK5TerminalGroup0052Row0001_global_counts
  | row0834 =>
      exact evenK5TerminalGroup0052Row0002_global_counts
  | row0835 =>
      exact evenK5TerminalGroup0052Row0003_global_counts
  | row0836 =>
      exact evenK5TerminalGroup0052Row0004_global_counts
  | row0837 =>
      exact evenK5TerminalGroup0052Row0005_global_counts
  | row0838 =>
      exact evenK5TerminalGroup0052Row0006_global_counts

#print axioms evenK5Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
