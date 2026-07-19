import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4Selector
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0011
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0015
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0019
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0023
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0027
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0028
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0029
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0030
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0031
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0032
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0033
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0034
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0035
import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK4TerminalGroup0036

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

open Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem evenK4Choice_global_counts
    (choice : EvenK4Choice) :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
      choice.terminal.maskedPrefix).counts = choice.terminal.counts.toBitVec := by
  cases choice with
  | row0000 =>
      exact evenK4TerminalGroup0000Row0000_global_counts
  | row0001 =>
      exact evenK4TerminalGroup0000Row0001_global_counts
  | row0002 =>
      exact evenK4TerminalGroup0000Row0002_global_counts
  | row0003 =>
      exact evenK4TerminalGroup0000Row0003_global_counts
  | row0004 =>
      exact evenK4TerminalGroup0000Row0004_global_counts
  | row0005 =>
      exact evenK4TerminalGroup0000Row0005_global_counts
  | row0006 =>
      exact evenK4TerminalGroup0000Row0006_global_counts
  | row0007 =>
      exact evenK4TerminalGroup0000Row0007_global_counts
  | row0008 =>
      exact evenK4TerminalGroup0000Row0008_global_counts
  | row0009 =>
      exact evenK4TerminalGroup0000Row0009_global_counts
  | row0010 =>
      exact evenK4TerminalGroup0000Row0010_global_counts
  | row0011 =>
      exact evenK4TerminalGroup0000Row0011_global_counts
  | row0012 =>
      exact evenK4TerminalGroup0000Row0012_global_counts
  | row0013 =>
      exact evenK4TerminalGroup0000Row0013_global_counts
  | row0014 =>
      exact evenK4TerminalGroup0000Row0014_global_counts
  | row0015 =>
      exact evenK4TerminalGroup0000Row0015_global_counts
  | row0016 =>
      exact evenK4TerminalGroup0001Row0000_global_counts
  | row0017 =>
      exact evenK4TerminalGroup0001Row0001_global_counts
  | row0018 =>
      exact evenK4TerminalGroup0001Row0002_global_counts
  | row0019 =>
      exact evenK4TerminalGroup0001Row0003_global_counts
  | row0020 =>
      exact evenK4TerminalGroup0001Row0004_global_counts
  | row0021 =>
      exact evenK4TerminalGroup0001Row0005_global_counts
  | row0022 =>
      exact evenK4TerminalGroup0001Row0006_global_counts
  | row0023 =>
      exact evenK4TerminalGroup0001Row0007_global_counts
  | row0024 =>
      exact evenK4TerminalGroup0001Row0008_global_counts
  | row0025 =>
      exact evenK4TerminalGroup0001Row0009_global_counts
  | row0026 =>
      exact evenK4TerminalGroup0001Row0010_global_counts
  | row0027 =>
      exact evenK4TerminalGroup0001Row0011_global_counts
  | row0028 =>
      exact evenK4TerminalGroup0001Row0012_global_counts
  | row0029 =>
      exact evenK4TerminalGroup0001Row0013_global_counts
  | row0030 =>
      exact evenK4TerminalGroup0001Row0014_global_counts
  | row0031 =>
      exact evenK4TerminalGroup0001Row0015_global_counts
  | row0032 =>
      exact evenK4TerminalGroup0002Row0000_global_counts
  | row0033 =>
      exact evenK4TerminalGroup0002Row0001_global_counts
  | row0034 =>
      exact evenK4TerminalGroup0002Row0002_global_counts
  | row0035 =>
      exact evenK4TerminalGroup0002Row0003_global_counts
  | row0036 =>
      exact evenK4TerminalGroup0002Row0004_global_counts
  | row0037 =>
      exact evenK4TerminalGroup0002Row0005_global_counts
  | row0038 =>
      exact evenK4TerminalGroup0002Row0006_global_counts
  | row0039 =>
      exact evenK4TerminalGroup0002Row0007_global_counts
  | row0040 =>
      exact evenK4TerminalGroup0002Row0008_global_counts
  | row0041 =>
      exact evenK4TerminalGroup0002Row0009_global_counts
  | row0042 =>
      exact evenK4TerminalGroup0002Row0010_global_counts
  | row0043 =>
      exact evenK4TerminalGroup0002Row0011_global_counts
  | row0044 =>
      exact evenK4TerminalGroup0002Row0012_global_counts
  | row0045 =>
      exact evenK4TerminalGroup0002Row0013_global_counts
  | row0046 =>
      exact evenK4TerminalGroup0002Row0014_global_counts
  | row0047 =>
      exact evenK4TerminalGroup0002Row0015_global_counts
  | row0048 =>
      exact evenK4TerminalGroup0003Row0000_global_counts
  | row0049 =>
      exact evenK4TerminalGroup0003Row0001_global_counts
  | row0050 =>
      exact evenK4TerminalGroup0003Row0002_global_counts
  | row0051 =>
      exact evenK4TerminalGroup0003Row0003_global_counts
  | row0052 =>
      exact evenK4TerminalGroup0003Row0004_global_counts
  | row0053 =>
      exact evenK4TerminalGroup0003Row0005_global_counts
  | row0054 =>
      exact evenK4TerminalGroup0003Row0006_global_counts
  | row0055 =>
      exact evenK4TerminalGroup0003Row0007_global_counts
  | row0056 =>
      exact evenK4TerminalGroup0003Row0008_global_counts
  | row0057 =>
      exact evenK4TerminalGroup0003Row0009_global_counts
  | row0058 =>
      exact evenK4TerminalGroup0003Row0010_global_counts
  | row0059 =>
      exact evenK4TerminalGroup0003Row0011_global_counts
  | row0060 =>
      exact evenK4TerminalGroup0003Row0012_global_counts
  | row0061 =>
      exact evenK4TerminalGroup0003Row0013_global_counts
  | row0062 =>
      exact evenK4TerminalGroup0003Row0014_global_counts
  | row0063 =>
      exact evenK4TerminalGroup0003Row0015_global_counts
  | row0064 =>
      exact evenK4TerminalGroup0004Row0000_global_counts
  | row0065 =>
      exact evenK4TerminalGroup0004Row0001_global_counts
  | row0066 =>
      exact evenK4TerminalGroup0004Row0002_global_counts
  | row0067 =>
      exact evenK4TerminalGroup0004Row0003_global_counts
  | row0068 =>
      exact evenK4TerminalGroup0004Row0004_global_counts
  | row0069 =>
      exact evenK4TerminalGroup0004Row0005_global_counts
  | row0070 =>
      exact evenK4TerminalGroup0004Row0006_global_counts
  | row0071 =>
      exact evenK4TerminalGroup0004Row0007_global_counts
  | row0072 =>
      exact evenK4TerminalGroup0004Row0008_global_counts
  | row0073 =>
      exact evenK4TerminalGroup0004Row0009_global_counts
  | row0074 =>
      exact evenK4TerminalGroup0004Row0010_global_counts
  | row0075 =>
      exact evenK4TerminalGroup0004Row0011_global_counts
  | row0076 =>
      exact evenK4TerminalGroup0004Row0012_global_counts
  | row0077 =>
      exact evenK4TerminalGroup0004Row0013_global_counts
  | row0078 =>
      exact evenK4TerminalGroup0004Row0014_global_counts
  | row0079 =>
      exact evenK4TerminalGroup0004Row0015_global_counts
  | row0080 =>
      exact evenK4TerminalGroup0005Row0000_global_counts
  | row0081 =>
      exact evenK4TerminalGroup0005Row0001_global_counts
  | row0082 =>
      exact evenK4TerminalGroup0005Row0002_global_counts
  | row0083 =>
      exact evenK4TerminalGroup0005Row0003_global_counts
  | row0084 =>
      exact evenK4TerminalGroup0005Row0004_global_counts
  | row0085 =>
      exact evenK4TerminalGroup0005Row0005_global_counts
  | row0086 =>
      exact evenK4TerminalGroup0005Row0006_global_counts
  | row0087 =>
      exact evenK4TerminalGroup0005Row0007_global_counts
  | row0088 =>
      exact evenK4TerminalGroup0005Row0008_global_counts
  | row0089 =>
      exact evenK4TerminalGroup0005Row0009_global_counts
  | row0090 =>
      exact evenK4TerminalGroup0005Row0010_global_counts
  | row0091 =>
      exact evenK4TerminalGroup0005Row0011_global_counts
  | row0092 =>
      exact evenK4TerminalGroup0005Row0012_global_counts
  | row0093 =>
      exact evenK4TerminalGroup0005Row0013_global_counts
  | row0094 =>
      exact evenK4TerminalGroup0005Row0014_global_counts
  | row0095 =>
      exact evenK4TerminalGroup0005Row0015_global_counts
  | row0096 =>
      exact evenK4TerminalGroup0006Row0000_global_counts
  | row0097 =>
      exact evenK4TerminalGroup0006Row0001_global_counts
  | row0098 =>
      exact evenK4TerminalGroup0006Row0002_global_counts
  | row0099 =>
      exact evenK4TerminalGroup0006Row0003_global_counts
  | row0100 =>
      exact evenK4TerminalGroup0006Row0004_global_counts
  | row0101 =>
      exact evenK4TerminalGroup0006Row0005_global_counts
  | row0102 =>
      exact evenK4TerminalGroup0006Row0006_global_counts
  | row0103 =>
      exact evenK4TerminalGroup0006Row0007_global_counts
  | row0104 =>
      exact evenK4TerminalGroup0006Row0008_global_counts
  | row0105 =>
      exact evenK4TerminalGroup0006Row0009_global_counts
  | row0106 =>
      exact evenK4TerminalGroup0006Row0010_global_counts
  | row0107 =>
      exact evenK4TerminalGroup0006Row0011_global_counts
  | row0108 =>
      exact evenK4TerminalGroup0006Row0012_global_counts
  | row0109 =>
      exact evenK4TerminalGroup0006Row0013_global_counts
  | row0110 =>
      exact evenK4TerminalGroup0006Row0014_global_counts
  | row0111 =>
      exact evenK4TerminalGroup0006Row0015_global_counts
  | row0112 =>
      exact evenK4TerminalGroup0007Row0000_global_counts
  | row0113 =>
      exact evenK4TerminalGroup0007Row0001_global_counts
  | row0114 =>
      exact evenK4TerminalGroup0007Row0002_global_counts
  | row0115 =>
      exact evenK4TerminalGroup0007Row0003_global_counts
  | row0116 =>
      exact evenK4TerminalGroup0007Row0004_global_counts
  | row0117 =>
      exact evenK4TerminalGroup0007Row0005_global_counts
  | row0118 =>
      exact evenK4TerminalGroup0007Row0006_global_counts
  | row0119 =>
      exact evenK4TerminalGroup0007Row0007_global_counts
  | row0120 =>
      exact evenK4TerminalGroup0007Row0008_global_counts
  | row0121 =>
      exact evenK4TerminalGroup0007Row0009_global_counts
  | row0122 =>
      exact evenK4TerminalGroup0007Row0010_global_counts
  | row0123 =>
      exact evenK4TerminalGroup0007Row0011_global_counts
  | row0124 =>
      exact evenK4TerminalGroup0007Row0012_global_counts
  | row0125 =>
      exact evenK4TerminalGroup0007Row0013_global_counts
  | row0126 =>
      exact evenK4TerminalGroup0007Row0014_global_counts
  | row0127 =>
      exact evenK4TerminalGroup0007Row0015_global_counts
  | row0128 =>
      exact evenK4TerminalGroup0008Row0000_global_counts
  | row0129 =>
      exact evenK4TerminalGroup0008Row0001_global_counts
  | row0130 =>
      exact evenK4TerminalGroup0008Row0002_global_counts
  | row0131 =>
      exact evenK4TerminalGroup0008Row0003_global_counts
  | row0132 =>
      exact evenK4TerminalGroup0008Row0004_global_counts
  | row0133 =>
      exact evenK4TerminalGroup0008Row0005_global_counts
  | row0134 =>
      exact evenK4TerminalGroup0008Row0006_global_counts
  | row0135 =>
      exact evenK4TerminalGroup0008Row0007_global_counts
  | row0136 =>
      exact evenK4TerminalGroup0008Row0008_global_counts
  | row0137 =>
      exact evenK4TerminalGroup0008Row0009_global_counts
  | row0138 =>
      exact evenK4TerminalGroup0008Row0010_global_counts
  | row0139 =>
      exact evenK4TerminalGroup0008Row0011_global_counts
  | row0140 =>
      exact evenK4TerminalGroup0008Row0012_global_counts
  | row0141 =>
      exact evenK4TerminalGroup0008Row0013_global_counts
  | row0142 =>
      exact evenK4TerminalGroup0008Row0014_global_counts
  | row0143 =>
      exact evenK4TerminalGroup0008Row0015_global_counts
  | row0144 =>
      exact evenK4TerminalGroup0009Row0000_global_counts
  | row0145 =>
      exact evenK4TerminalGroup0009Row0001_global_counts
  | row0146 =>
      exact evenK4TerminalGroup0009Row0002_global_counts
  | row0147 =>
      exact evenK4TerminalGroup0009Row0003_global_counts
  | row0148 =>
      exact evenK4TerminalGroup0009Row0004_global_counts
  | row0149 =>
      exact evenK4TerminalGroup0009Row0005_global_counts
  | row0150 =>
      exact evenK4TerminalGroup0009Row0006_global_counts
  | row0151 =>
      exact evenK4TerminalGroup0009Row0007_global_counts
  | row0152 =>
      exact evenK4TerminalGroup0009Row0008_global_counts
  | row0153 =>
      exact evenK4TerminalGroup0009Row0009_global_counts
  | row0154 =>
      exact evenK4TerminalGroup0009Row0010_global_counts
  | row0155 =>
      exact evenK4TerminalGroup0009Row0011_global_counts
  | row0156 =>
      exact evenK4TerminalGroup0009Row0012_global_counts
  | row0157 =>
      exact evenK4TerminalGroup0009Row0013_global_counts
  | row0158 =>
      exact evenK4TerminalGroup0009Row0014_global_counts
  | row0159 =>
      exact evenK4TerminalGroup0009Row0015_global_counts
  | row0160 =>
      exact evenK4TerminalGroup0010Row0000_global_counts
  | row0161 =>
      exact evenK4TerminalGroup0010Row0001_global_counts
  | row0162 =>
      exact evenK4TerminalGroup0010Row0002_global_counts
  | row0163 =>
      exact evenK4TerminalGroup0010Row0003_global_counts
  | row0164 =>
      exact evenK4TerminalGroup0010Row0004_global_counts
  | row0165 =>
      exact evenK4TerminalGroup0010Row0005_global_counts
  | row0166 =>
      exact evenK4TerminalGroup0010Row0006_global_counts
  | row0167 =>
      exact evenK4TerminalGroup0010Row0007_global_counts
  | row0168 =>
      exact evenK4TerminalGroup0010Row0008_global_counts
  | row0169 =>
      exact evenK4TerminalGroup0010Row0009_global_counts
  | row0170 =>
      exact evenK4TerminalGroup0010Row0010_global_counts
  | row0171 =>
      exact evenK4TerminalGroup0010Row0011_global_counts
  | row0172 =>
      exact evenK4TerminalGroup0010Row0012_global_counts
  | row0173 =>
      exact evenK4TerminalGroup0010Row0013_global_counts
  | row0174 =>
      exact evenK4TerminalGroup0010Row0014_global_counts
  | row0175 =>
      exact evenK4TerminalGroup0010Row0015_global_counts
  | row0176 =>
      exact evenK4TerminalGroup0011Row0000_global_counts
  | row0177 =>
      exact evenK4TerminalGroup0011Row0001_global_counts
  | row0178 =>
      exact evenK4TerminalGroup0011Row0002_global_counts
  | row0179 =>
      exact evenK4TerminalGroup0011Row0003_global_counts
  | row0180 =>
      exact evenK4TerminalGroup0011Row0004_global_counts
  | row0181 =>
      exact evenK4TerminalGroup0011Row0005_global_counts
  | row0182 =>
      exact evenK4TerminalGroup0011Row0006_global_counts
  | row0183 =>
      exact evenK4TerminalGroup0011Row0007_global_counts
  | row0184 =>
      exact evenK4TerminalGroup0011Row0008_global_counts
  | row0185 =>
      exact evenK4TerminalGroup0011Row0009_global_counts
  | row0186 =>
      exact evenK4TerminalGroup0011Row0010_global_counts
  | row0187 =>
      exact evenK4TerminalGroup0011Row0011_global_counts
  | row0188 =>
      exact evenK4TerminalGroup0011Row0012_global_counts
  | row0189 =>
      exact evenK4TerminalGroup0011Row0013_global_counts
  | row0190 =>
      exact evenK4TerminalGroup0011Row0014_global_counts
  | row0191 =>
      exact evenK4TerminalGroup0011Row0015_global_counts
  | row0192 =>
      exact evenK4TerminalGroup0012Row0000_global_counts
  | row0193 =>
      exact evenK4TerminalGroup0012Row0001_global_counts
  | row0194 =>
      exact evenK4TerminalGroup0012Row0002_global_counts
  | row0195 =>
      exact evenK4TerminalGroup0012Row0003_global_counts
  | row0196 =>
      exact evenK4TerminalGroup0012Row0004_global_counts
  | row0197 =>
      exact evenK4TerminalGroup0012Row0005_global_counts
  | row0198 =>
      exact evenK4TerminalGroup0012Row0006_global_counts
  | row0199 =>
      exact evenK4TerminalGroup0012Row0007_global_counts
  | row0200 =>
      exact evenK4TerminalGroup0012Row0008_global_counts
  | row0201 =>
      exact evenK4TerminalGroup0012Row0009_global_counts
  | row0202 =>
      exact evenK4TerminalGroup0012Row0010_global_counts
  | row0203 =>
      exact evenK4TerminalGroup0012Row0011_global_counts
  | row0204 =>
      exact evenK4TerminalGroup0012Row0012_global_counts
  | row0205 =>
      exact evenK4TerminalGroup0012Row0013_global_counts
  | row0206 =>
      exact evenK4TerminalGroup0012Row0014_global_counts
  | row0207 =>
      exact evenK4TerminalGroup0012Row0015_global_counts
  | row0208 =>
      exact evenK4TerminalGroup0013Row0000_global_counts
  | row0209 =>
      exact evenK4TerminalGroup0013Row0001_global_counts
  | row0210 =>
      exact evenK4TerminalGroup0013Row0002_global_counts
  | row0211 =>
      exact evenK4TerminalGroup0013Row0003_global_counts
  | row0212 =>
      exact evenK4TerminalGroup0013Row0004_global_counts
  | row0213 =>
      exact evenK4TerminalGroup0013Row0005_global_counts
  | row0214 =>
      exact evenK4TerminalGroup0013Row0006_global_counts
  | row0215 =>
      exact evenK4TerminalGroup0013Row0007_global_counts
  | row0216 =>
      exact evenK4TerminalGroup0013Row0008_global_counts
  | row0217 =>
      exact evenK4TerminalGroup0013Row0009_global_counts
  | row0218 =>
      exact evenK4TerminalGroup0013Row0010_global_counts
  | row0219 =>
      exact evenK4TerminalGroup0013Row0011_global_counts
  | row0220 =>
      exact evenK4TerminalGroup0013Row0012_global_counts
  | row0221 =>
      exact evenK4TerminalGroup0013Row0013_global_counts
  | row0222 =>
      exact evenK4TerminalGroup0013Row0014_global_counts
  | row0223 =>
      exact evenK4TerminalGroup0013Row0015_global_counts
  | row0224 =>
      exact evenK4TerminalGroup0014Row0000_global_counts
  | row0225 =>
      exact evenK4TerminalGroup0014Row0001_global_counts
  | row0226 =>
      exact evenK4TerminalGroup0014Row0002_global_counts
  | row0227 =>
      exact evenK4TerminalGroup0014Row0003_global_counts
  | row0228 =>
      exact evenK4TerminalGroup0014Row0004_global_counts
  | row0229 =>
      exact evenK4TerminalGroup0014Row0005_global_counts
  | row0230 =>
      exact evenK4TerminalGroup0014Row0006_global_counts
  | row0231 =>
      exact evenK4TerminalGroup0014Row0007_global_counts
  | row0232 =>
      exact evenK4TerminalGroup0014Row0008_global_counts
  | row0233 =>
      exact evenK4TerminalGroup0014Row0009_global_counts
  | row0234 =>
      exact evenK4TerminalGroup0014Row0010_global_counts
  | row0235 =>
      exact evenK4TerminalGroup0014Row0011_global_counts
  | row0236 =>
      exact evenK4TerminalGroup0014Row0012_global_counts
  | row0237 =>
      exact evenK4TerminalGroup0014Row0013_global_counts
  | row0238 =>
      exact evenK4TerminalGroup0014Row0014_global_counts
  | row0239 =>
      exact evenK4TerminalGroup0014Row0015_global_counts
  | row0240 =>
      exact evenK4TerminalGroup0015Row0000_global_counts
  | row0241 =>
      exact evenK4TerminalGroup0015Row0001_global_counts
  | row0242 =>
      exact evenK4TerminalGroup0015Row0002_global_counts
  | row0243 =>
      exact evenK4TerminalGroup0015Row0003_global_counts
  | row0244 =>
      exact evenK4TerminalGroup0015Row0004_global_counts
  | row0245 =>
      exact evenK4TerminalGroup0015Row0005_global_counts
  | row0246 =>
      exact evenK4TerminalGroup0015Row0006_global_counts
  | row0247 =>
      exact evenK4TerminalGroup0015Row0007_global_counts
  | row0248 =>
      exact evenK4TerminalGroup0015Row0008_global_counts
  | row0249 =>
      exact evenK4TerminalGroup0015Row0009_global_counts
  | row0250 =>
      exact evenK4TerminalGroup0015Row0010_global_counts
  | row0251 =>
      exact evenK4TerminalGroup0015Row0011_global_counts
  | row0252 =>
      exact evenK4TerminalGroup0015Row0012_global_counts
  | row0253 =>
      exact evenK4TerminalGroup0015Row0013_global_counts
  | row0254 =>
      exact evenK4TerminalGroup0015Row0014_global_counts
  | row0255 =>
      exact evenK4TerminalGroup0015Row0015_global_counts
  | row0256 =>
      exact evenK4TerminalGroup0016Row0000_global_counts
  | row0257 =>
      exact evenK4TerminalGroup0016Row0001_global_counts
  | row0258 =>
      exact evenK4TerminalGroup0016Row0002_global_counts
  | row0259 =>
      exact evenK4TerminalGroup0016Row0003_global_counts
  | row0260 =>
      exact evenK4TerminalGroup0016Row0004_global_counts
  | row0261 =>
      exact evenK4TerminalGroup0016Row0005_global_counts
  | row0262 =>
      exact evenK4TerminalGroup0016Row0006_global_counts
  | row0263 =>
      exact evenK4TerminalGroup0016Row0007_global_counts
  | row0264 =>
      exact evenK4TerminalGroup0016Row0008_global_counts
  | row0265 =>
      exact evenK4TerminalGroup0016Row0009_global_counts
  | row0266 =>
      exact evenK4TerminalGroup0016Row0010_global_counts
  | row0267 =>
      exact evenK4TerminalGroup0016Row0011_global_counts
  | row0268 =>
      exact evenK4TerminalGroup0016Row0012_global_counts
  | row0269 =>
      exact evenK4TerminalGroup0016Row0013_global_counts
  | row0270 =>
      exact evenK4TerminalGroup0016Row0014_global_counts
  | row0271 =>
      exact evenK4TerminalGroup0016Row0015_global_counts
  | row0272 =>
      exact evenK4TerminalGroup0017Row0000_global_counts
  | row0273 =>
      exact evenK4TerminalGroup0017Row0001_global_counts
  | row0274 =>
      exact evenK4TerminalGroup0017Row0002_global_counts
  | row0275 =>
      exact evenK4TerminalGroup0017Row0003_global_counts
  | row0276 =>
      exact evenK4TerminalGroup0017Row0004_global_counts
  | row0277 =>
      exact evenK4TerminalGroup0017Row0005_global_counts
  | row0278 =>
      exact evenK4TerminalGroup0017Row0006_global_counts
  | row0279 =>
      exact evenK4TerminalGroup0017Row0007_global_counts
  | row0280 =>
      exact evenK4TerminalGroup0017Row0008_global_counts
  | row0281 =>
      exact evenK4TerminalGroup0017Row0009_global_counts
  | row0282 =>
      exact evenK4TerminalGroup0017Row0010_global_counts
  | row0283 =>
      exact evenK4TerminalGroup0017Row0011_global_counts
  | row0284 =>
      exact evenK4TerminalGroup0017Row0012_global_counts
  | row0285 =>
      exact evenK4TerminalGroup0017Row0013_global_counts
  | row0286 =>
      exact evenK4TerminalGroup0017Row0014_global_counts
  | row0287 =>
      exact evenK4TerminalGroup0017Row0015_global_counts
  | row0288 =>
      exact evenK4TerminalGroup0018Row0000_global_counts
  | row0289 =>
      exact evenK4TerminalGroup0018Row0001_global_counts
  | row0290 =>
      exact evenK4TerminalGroup0018Row0002_global_counts
  | row0291 =>
      exact evenK4TerminalGroup0018Row0003_global_counts
  | row0292 =>
      exact evenK4TerminalGroup0018Row0004_global_counts
  | row0293 =>
      exact evenK4TerminalGroup0018Row0005_global_counts
  | row0294 =>
      exact evenK4TerminalGroup0018Row0006_global_counts
  | row0295 =>
      exact evenK4TerminalGroup0018Row0007_global_counts
  | row0296 =>
      exact evenK4TerminalGroup0018Row0008_global_counts
  | row0297 =>
      exact evenK4TerminalGroup0018Row0009_global_counts
  | row0298 =>
      exact evenK4TerminalGroup0018Row0010_global_counts
  | row0299 =>
      exact evenK4TerminalGroup0018Row0011_global_counts
  | row0300 =>
      exact evenK4TerminalGroup0018Row0012_global_counts
  | row0301 =>
      exact evenK4TerminalGroup0018Row0013_global_counts
  | row0302 =>
      exact evenK4TerminalGroup0018Row0014_global_counts
  | row0303 =>
      exact evenK4TerminalGroup0018Row0015_global_counts
  | row0304 =>
      exact evenK4TerminalGroup0019Row0000_global_counts
  | row0305 =>
      exact evenK4TerminalGroup0019Row0001_global_counts
  | row0306 =>
      exact evenK4TerminalGroup0019Row0002_global_counts
  | row0307 =>
      exact evenK4TerminalGroup0019Row0003_global_counts
  | row0308 =>
      exact evenK4TerminalGroup0019Row0004_global_counts
  | row0309 =>
      exact evenK4TerminalGroup0019Row0005_global_counts
  | row0310 =>
      exact evenK4TerminalGroup0019Row0006_global_counts
  | row0311 =>
      exact evenK4TerminalGroup0019Row0007_global_counts
  | row0312 =>
      exact evenK4TerminalGroup0019Row0008_global_counts
  | row0313 =>
      exact evenK4TerminalGroup0019Row0009_global_counts
  | row0314 =>
      exact evenK4TerminalGroup0019Row0010_global_counts
  | row0315 =>
      exact evenK4TerminalGroup0019Row0011_global_counts
  | row0316 =>
      exact evenK4TerminalGroup0019Row0012_global_counts
  | row0317 =>
      exact evenK4TerminalGroup0019Row0013_global_counts
  | row0318 =>
      exact evenK4TerminalGroup0019Row0014_global_counts
  | row0319 =>
      exact evenK4TerminalGroup0019Row0015_global_counts
  | row0320 =>
      exact evenK4TerminalGroup0020Row0000_global_counts
  | row0321 =>
      exact evenK4TerminalGroup0020Row0001_global_counts
  | row0322 =>
      exact evenK4TerminalGroup0020Row0002_global_counts
  | row0323 =>
      exact evenK4TerminalGroup0020Row0003_global_counts
  | row0324 =>
      exact evenK4TerminalGroup0020Row0004_global_counts
  | row0325 =>
      exact evenK4TerminalGroup0020Row0005_global_counts
  | row0326 =>
      exact evenK4TerminalGroup0020Row0006_global_counts
  | row0327 =>
      exact evenK4TerminalGroup0020Row0007_global_counts
  | row0328 =>
      exact evenK4TerminalGroup0020Row0008_global_counts
  | row0329 =>
      exact evenK4TerminalGroup0020Row0009_global_counts
  | row0330 =>
      exact evenK4TerminalGroup0020Row0010_global_counts
  | row0331 =>
      exact evenK4TerminalGroup0020Row0011_global_counts
  | row0332 =>
      exact evenK4TerminalGroup0020Row0012_global_counts
  | row0333 =>
      exact evenK4TerminalGroup0020Row0013_global_counts
  | row0334 =>
      exact evenK4TerminalGroup0020Row0014_global_counts
  | row0335 =>
      exact evenK4TerminalGroup0020Row0015_global_counts
  | row0336 =>
      exact evenK4TerminalGroup0021Row0000_global_counts
  | row0337 =>
      exact evenK4TerminalGroup0021Row0001_global_counts
  | row0338 =>
      exact evenK4TerminalGroup0021Row0002_global_counts
  | row0339 =>
      exact evenK4TerminalGroup0021Row0003_global_counts
  | row0340 =>
      exact evenK4TerminalGroup0021Row0004_global_counts
  | row0341 =>
      exact evenK4TerminalGroup0021Row0005_global_counts
  | row0342 =>
      exact evenK4TerminalGroup0021Row0006_global_counts
  | row0343 =>
      exact evenK4TerminalGroup0021Row0007_global_counts
  | row0344 =>
      exact evenK4TerminalGroup0021Row0008_global_counts
  | row0345 =>
      exact evenK4TerminalGroup0021Row0009_global_counts
  | row0346 =>
      exact evenK4TerminalGroup0021Row0010_global_counts
  | row0347 =>
      exact evenK4TerminalGroup0021Row0011_global_counts
  | row0348 =>
      exact evenK4TerminalGroup0021Row0012_global_counts
  | row0349 =>
      exact evenK4TerminalGroup0021Row0013_global_counts
  | row0350 =>
      exact evenK4TerminalGroup0021Row0014_global_counts
  | row0351 =>
      exact evenK4TerminalGroup0021Row0015_global_counts
  | row0352 =>
      exact evenK4TerminalGroup0022Row0000_global_counts
  | row0353 =>
      exact evenK4TerminalGroup0022Row0001_global_counts
  | row0354 =>
      exact evenK4TerminalGroup0022Row0002_global_counts
  | row0355 =>
      exact evenK4TerminalGroup0022Row0003_global_counts
  | row0356 =>
      exact evenK4TerminalGroup0022Row0004_global_counts
  | row0357 =>
      exact evenK4TerminalGroup0022Row0005_global_counts
  | row0358 =>
      exact evenK4TerminalGroup0022Row0006_global_counts
  | row0359 =>
      exact evenK4TerminalGroup0022Row0007_global_counts
  | row0360 =>
      exact evenK4TerminalGroup0022Row0008_global_counts
  | row0361 =>
      exact evenK4TerminalGroup0022Row0009_global_counts
  | row0362 =>
      exact evenK4TerminalGroup0022Row0010_global_counts
  | row0363 =>
      exact evenK4TerminalGroup0022Row0011_global_counts
  | row0364 =>
      exact evenK4TerminalGroup0022Row0012_global_counts
  | row0365 =>
      exact evenK4TerminalGroup0022Row0013_global_counts
  | row0366 =>
      exact evenK4TerminalGroup0022Row0014_global_counts
  | row0367 =>
      exact evenK4TerminalGroup0022Row0015_global_counts
  | row0368 =>
      exact evenK4TerminalGroup0023Row0000_global_counts
  | row0369 =>
      exact evenK4TerminalGroup0023Row0001_global_counts
  | row0370 =>
      exact evenK4TerminalGroup0023Row0002_global_counts
  | row0371 =>
      exact evenK4TerminalGroup0023Row0003_global_counts
  | row0372 =>
      exact evenK4TerminalGroup0023Row0004_global_counts
  | row0373 =>
      exact evenK4TerminalGroup0023Row0005_global_counts
  | row0374 =>
      exact evenK4TerminalGroup0023Row0006_global_counts
  | row0375 =>
      exact evenK4TerminalGroup0023Row0007_global_counts
  | row0376 =>
      exact evenK4TerminalGroup0023Row0008_global_counts
  | row0377 =>
      exact evenK4TerminalGroup0023Row0009_global_counts
  | row0378 =>
      exact evenK4TerminalGroup0023Row0010_global_counts
  | row0379 =>
      exact evenK4TerminalGroup0023Row0011_global_counts
  | row0380 =>
      exact evenK4TerminalGroup0023Row0012_global_counts
  | row0381 =>
      exact evenK4TerminalGroup0023Row0013_global_counts
  | row0382 =>
      exact evenK4TerminalGroup0023Row0014_global_counts
  | row0383 =>
      exact evenK4TerminalGroup0023Row0015_global_counts
  | row0384 =>
      exact evenK4TerminalGroup0024Row0000_global_counts
  | row0385 =>
      exact evenK4TerminalGroup0024Row0001_global_counts
  | row0386 =>
      exact evenK4TerminalGroup0024Row0002_global_counts
  | row0387 =>
      exact evenK4TerminalGroup0024Row0003_global_counts
  | row0388 =>
      exact evenK4TerminalGroup0024Row0004_global_counts
  | row0389 =>
      exact evenK4TerminalGroup0024Row0005_global_counts
  | row0390 =>
      exact evenK4TerminalGroup0024Row0006_global_counts
  | row0391 =>
      exact evenK4TerminalGroup0024Row0007_global_counts
  | row0392 =>
      exact evenK4TerminalGroup0024Row0008_global_counts
  | row0393 =>
      exact evenK4TerminalGroup0024Row0009_global_counts
  | row0394 =>
      exact evenK4TerminalGroup0024Row0010_global_counts
  | row0395 =>
      exact evenK4TerminalGroup0024Row0011_global_counts
  | row0396 =>
      exact evenK4TerminalGroup0024Row0012_global_counts
  | row0397 =>
      exact evenK4TerminalGroup0024Row0013_global_counts
  | row0398 =>
      exact evenK4TerminalGroup0024Row0014_global_counts
  | row0399 =>
      exact evenK4TerminalGroup0024Row0015_global_counts
  | row0400 =>
      exact evenK4TerminalGroup0025Row0000_global_counts
  | row0401 =>
      exact evenK4TerminalGroup0025Row0001_global_counts
  | row0402 =>
      exact evenK4TerminalGroup0025Row0002_global_counts
  | row0403 =>
      exact evenK4TerminalGroup0025Row0003_global_counts
  | row0404 =>
      exact evenK4TerminalGroup0025Row0004_global_counts
  | row0405 =>
      exact evenK4TerminalGroup0025Row0005_global_counts
  | row0406 =>
      exact evenK4TerminalGroup0025Row0006_global_counts
  | row0407 =>
      exact evenK4TerminalGroup0025Row0007_global_counts
  | row0408 =>
      exact evenK4TerminalGroup0025Row0008_global_counts
  | row0409 =>
      exact evenK4TerminalGroup0025Row0009_global_counts
  | row0410 =>
      exact evenK4TerminalGroup0025Row0010_global_counts
  | row0411 =>
      exact evenK4TerminalGroup0025Row0011_global_counts
  | row0412 =>
      exact evenK4TerminalGroup0025Row0012_global_counts
  | row0413 =>
      exact evenK4TerminalGroup0025Row0013_global_counts
  | row0414 =>
      exact evenK4TerminalGroup0025Row0014_global_counts
  | row0415 =>
      exact evenK4TerminalGroup0025Row0015_global_counts
  | row0416 =>
      exact evenK4TerminalGroup0026Row0000_global_counts
  | row0417 =>
      exact evenK4TerminalGroup0026Row0001_global_counts
  | row0418 =>
      exact evenK4TerminalGroup0026Row0002_global_counts
  | row0419 =>
      exact evenK4TerminalGroup0026Row0003_global_counts
  | row0420 =>
      exact evenK4TerminalGroup0026Row0004_global_counts
  | row0421 =>
      exact evenK4TerminalGroup0026Row0005_global_counts
  | row0422 =>
      exact evenK4TerminalGroup0026Row0006_global_counts
  | row0423 =>
      exact evenK4TerminalGroup0026Row0007_global_counts
  | row0424 =>
      exact evenK4TerminalGroup0026Row0008_global_counts
  | row0425 =>
      exact evenK4TerminalGroup0026Row0009_global_counts
  | row0426 =>
      exact evenK4TerminalGroup0026Row0010_global_counts
  | row0427 =>
      exact evenK4TerminalGroup0026Row0011_global_counts
  | row0428 =>
      exact evenK4TerminalGroup0026Row0012_global_counts
  | row0429 =>
      exact evenK4TerminalGroup0026Row0013_global_counts
  | row0430 =>
      exact evenK4TerminalGroup0026Row0014_global_counts
  | row0431 =>
      exact evenK4TerminalGroup0026Row0015_global_counts
  | row0432 =>
      exact evenK4TerminalGroup0027Row0000_global_counts
  | row0433 =>
      exact evenK4TerminalGroup0027Row0001_global_counts
  | row0434 =>
      exact evenK4TerminalGroup0027Row0002_global_counts
  | row0435 =>
      exact evenK4TerminalGroup0027Row0003_global_counts
  | row0436 =>
      exact evenK4TerminalGroup0027Row0004_global_counts
  | row0437 =>
      exact evenK4TerminalGroup0027Row0005_global_counts
  | row0438 =>
      exact evenK4TerminalGroup0027Row0006_global_counts
  | row0439 =>
      exact evenK4TerminalGroup0027Row0007_global_counts
  | row0440 =>
      exact evenK4TerminalGroup0027Row0008_global_counts
  | row0441 =>
      exact evenK4TerminalGroup0027Row0009_global_counts
  | row0442 =>
      exact evenK4TerminalGroup0027Row0010_global_counts
  | row0443 =>
      exact evenK4TerminalGroup0027Row0011_global_counts
  | row0444 =>
      exact evenK4TerminalGroup0027Row0012_global_counts
  | row0445 =>
      exact evenK4TerminalGroup0027Row0013_global_counts
  | row0446 =>
      exact evenK4TerminalGroup0027Row0014_global_counts
  | row0447 =>
      exact evenK4TerminalGroup0027Row0015_global_counts
  | row0448 =>
      exact evenK4TerminalGroup0028Row0000_global_counts
  | row0449 =>
      exact evenK4TerminalGroup0028Row0001_global_counts
  | row0450 =>
      exact evenK4TerminalGroup0028Row0002_global_counts
  | row0451 =>
      exact evenK4TerminalGroup0028Row0003_global_counts
  | row0452 =>
      exact evenK4TerminalGroup0028Row0004_global_counts
  | row0453 =>
      exact evenK4TerminalGroup0028Row0005_global_counts
  | row0454 =>
      exact evenK4TerminalGroup0028Row0006_global_counts
  | row0455 =>
      exact evenK4TerminalGroup0028Row0007_global_counts
  | row0456 =>
      exact evenK4TerminalGroup0028Row0008_global_counts
  | row0457 =>
      exact evenK4TerminalGroup0028Row0009_global_counts
  | row0458 =>
      exact evenK4TerminalGroup0028Row0010_global_counts
  | row0459 =>
      exact evenK4TerminalGroup0028Row0011_global_counts
  | row0460 =>
      exact evenK4TerminalGroup0028Row0012_global_counts
  | row0461 =>
      exact evenK4TerminalGroup0028Row0013_global_counts
  | row0462 =>
      exact evenK4TerminalGroup0028Row0014_global_counts
  | row0463 =>
      exact evenK4TerminalGroup0028Row0015_global_counts
  | row0464 =>
      exact evenK4TerminalGroup0029Row0000_global_counts
  | row0465 =>
      exact evenK4TerminalGroup0029Row0001_global_counts
  | row0466 =>
      exact evenK4TerminalGroup0029Row0002_global_counts
  | row0467 =>
      exact evenK4TerminalGroup0029Row0003_global_counts
  | row0468 =>
      exact evenK4TerminalGroup0029Row0004_global_counts
  | row0469 =>
      exact evenK4TerminalGroup0029Row0005_global_counts
  | row0470 =>
      exact evenK4TerminalGroup0029Row0006_global_counts
  | row0471 =>
      exact evenK4TerminalGroup0029Row0007_global_counts
  | row0472 =>
      exact evenK4TerminalGroup0029Row0008_global_counts
  | row0473 =>
      exact evenK4TerminalGroup0029Row0009_global_counts
  | row0474 =>
      exact evenK4TerminalGroup0029Row0010_global_counts
  | row0475 =>
      exact evenK4TerminalGroup0029Row0011_global_counts
  | row0476 =>
      exact evenK4TerminalGroup0029Row0012_global_counts
  | row0477 =>
      exact evenK4TerminalGroup0029Row0013_global_counts
  | row0478 =>
      exact evenK4TerminalGroup0029Row0014_global_counts
  | row0479 =>
      exact evenK4TerminalGroup0029Row0015_global_counts
  | row0480 =>
      exact evenK4TerminalGroup0030Row0000_global_counts
  | row0481 =>
      exact evenK4TerminalGroup0030Row0001_global_counts
  | row0482 =>
      exact evenK4TerminalGroup0030Row0002_global_counts
  | row0483 =>
      exact evenK4TerminalGroup0030Row0003_global_counts
  | row0484 =>
      exact evenK4TerminalGroup0030Row0004_global_counts
  | row0485 =>
      exact evenK4TerminalGroup0030Row0005_global_counts
  | row0486 =>
      exact evenK4TerminalGroup0030Row0006_global_counts
  | row0487 =>
      exact evenK4TerminalGroup0030Row0007_global_counts
  | row0488 =>
      exact evenK4TerminalGroup0030Row0008_global_counts
  | row0489 =>
      exact evenK4TerminalGroup0030Row0009_global_counts
  | row0490 =>
      exact evenK4TerminalGroup0030Row0010_global_counts
  | row0491 =>
      exact evenK4TerminalGroup0030Row0011_global_counts
  | row0492 =>
      exact evenK4TerminalGroup0030Row0012_global_counts
  | row0493 =>
      exact evenK4TerminalGroup0030Row0013_global_counts
  | row0494 =>
      exact evenK4TerminalGroup0030Row0014_global_counts
  | row0495 =>
      exact evenK4TerminalGroup0030Row0015_global_counts
  | row0496 =>
      exact evenK4TerminalGroup0031Row0000_global_counts
  | row0497 =>
      exact evenK4TerminalGroup0031Row0001_global_counts
  | row0498 =>
      exact evenK4TerminalGroup0031Row0002_global_counts
  | row0499 =>
      exact evenK4TerminalGroup0031Row0003_global_counts
  | row0500 =>
      exact evenK4TerminalGroup0031Row0004_global_counts
  | row0501 =>
      exact evenK4TerminalGroup0031Row0005_global_counts
  | row0502 =>
      exact evenK4TerminalGroup0031Row0006_global_counts
  | row0503 =>
      exact evenK4TerminalGroup0031Row0007_global_counts
  | row0504 =>
      exact evenK4TerminalGroup0031Row0008_global_counts
  | row0505 =>
      exact evenK4TerminalGroup0031Row0009_global_counts
  | row0506 =>
      exact evenK4TerminalGroup0031Row0010_global_counts
  | row0507 =>
      exact evenK4TerminalGroup0031Row0011_global_counts
  | row0508 =>
      exact evenK4TerminalGroup0031Row0012_global_counts
  | row0509 =>
      exact evenK4TerminalGroup0031Row0013_global_counts
  | row0510 =>
      exact evenK4TerminalGroup0031Row0014_global_counts
  | row0511 =>
      exact evenK4TerminalGroup0031Row0015_global_counts
  | row0512 =>
      exact evenK4TerminalGroup0032Row0000_global_counts
  | row0513 =>
      exact evenK4TerminalGroup0032Row0001_global_counts
  | row0514 =>
      exact evenK4TerminalGroup0032Row0002_global_counts
  | row0515 =>
      exact evenK4TerminalGroup0032Row0003_global_counts
  | row0516 =>
      exact evenK4TerminalGroup0032Row0004_global_counts
  | row0517 =>
      exact evenK4TerminalGroup0032Row0005_global_counts
  | row0518 =>
      exact evenK4TerminalGroup0032Row0006_global_counts
  | row0519 =>
      exact evenK4TerminalGroup0032Row0007_global_counts
  | row0520 =>
      exact evenK4TerminalGroup0032Row0008_global_counts
  | row0521 =>
      exact evenK4TerminalGroup0032Row0009_global_counts
  | row0522 =>
      exact evenK4TerminalGroup0032Row0010_global_counts
  | row0523 =>
      exact evenK4TerminalGroup0032Row0011_global_counts
  | row0524 =>
      exact evenK4TerminalGroup0032Row0012_global_counts
  | row0525 =>
      exact evenK4TerminalGroup0032Row0013_global_counts
  | row0526 =>
      exact evenK4TerminalGroup0032Row0014_global_counts
  | row0527 =>
      exact evenK4TerminalGroup0032Row0015_global_counts
  | row0528 =>
      exact evenK4TerminalGroup0033Row0000_global_counts
  | row0529 =>
      exact evenK4TerminalGroup0033Row0001_global_counts
  | row0530 =>
      exact evenK4TerminalGroup0033Row0002_global_counts
  | row0531 =>
      exact evenK4TerminalGroup0033Row0003_global_counts
  | row0532 =>
      exact evenK4TerminalGroup0033Row0004_global_counts
  | row0533 =>
      exact evenK4TerminalGroup0033Row0005_global_counts
  | row0534 =>
      exact evenK4TerminalGroup0033Row0006_global_counts
  | row0535 =>
      exact evenK4TerminalGroup0033Row0007_global_counts
  | row0536 =>
      exact evenK4TerminalGroup0033Row0008_global_counts
  | row0537 =>
      exact evenK4TerminalGroup0033Row0009_global_counts
  | row0538 =>
      exact evenK4TerminalGroup0033Row0010_global_counts
  | row0539 =>
      exact evenK4TerminalGroup0033Row0011_global_counts
  | row0540 =>
      exact evenK4TerminalGroup0033Row0012_global_counts
  | row0541 =>
      exact evenK4TerminalGroup0033Row0013_global_counts
  | row0542 =>
      exact evenK4TerminalGroup0033Row0014_global_counts
  | row0543 =>
      exact evenK4TerminalGroup0033Row0015_global_counts
  | row0544 =>
      exact evenK4TerminalGroup0034Row0000_global_counts
  | row0545 =>
      exact evenK4TerminalGroup0034Row0001_global_counts
  | row0546 =>
      exact evenK4TerminalGroup0034Row0002_global_counts
  | row0547 =>
      exact evenK4TerminalGroup0034Row0003_global_counts
  | row0548 =>
      exact evenK4TerminalGroup0034Row0004_global_counts
  | row0549 =>
      exact evenK4TerminalGroup0034Row0005_global_counts
  | row0550 =>
      exact evenK4TerminalGroup0034Row0006_global_counts
  | row0551 =>
      exact evenK4TerminalGroup0034Row0007_global_counts
  | row0552 =>
      exact evenK4TerminalGroup0034Row0008_global_counts
  | row0553 =>
      exact evenK4TerminalGroup0034Row0009_global_counts
  | row0554 =>
      exact evenK4TerminalGroup0034Row0010_global_counts
  | row0555 =>
      exact evenK4TerminalGroup0034Row0011_global_counts
  | row0556 =>
      exact evenK4TerminalGroup0034Row0012_global_counts
  | row0557 =>
      exact evenK4TerminalGroup0034Row0013_global_counts
  | row0558 =>
      exact evenK4TerminalGroup0034Row0014_global_counts
  | row0559 =>
      exact evenK4TerminalGroup0034Row0015_global_counts
  | row0560 =>
      exact evenK4TerminalGroup0035Row0000_global_counts
  | row0561 =>
      exact evenK4TerminalGroup0035Row0001_global_counts
  | row0562 =>
      exact evenK4TerminalGroup0035Row0002_global_counts
  | row0563 =>
      exact evenK4TerminalGroup0035Row0003_global_counts
  | row0564 =>
      exact evenK4TerminalGroup0035Row0004_global_counts
  | row0565 =>
      exact evenK4TerminalGroup0035Row0005_global_counts
  | row0566 =>
      exact evenK4TerminalGroup0035Row0006_global_counts
  | row0567 =>
      exact evenK4TerminalGroup0035Row0007_global_counts
  | row0568 =>
      exact evenK4TerminalGroup0035Row0008_global_counts
  | row0569 =>
      exact evenK4TerminalGroup0035Row0009_global_counts
  | row0570 =>
      exact evenK4TerminalGroup0035Row0010_global_counts
  | row0571 =>
      exact evenK4TerminalGroup0035Row0011_global_counts
  | row0572 =>
      exact evenK4TerminalGroup0035Row0012_global_counts
  | row0573 =>
      exact evenK4TerminalGroup0035Row0013_global_counts
  | row0574 =>
      exact evenK4TerminalGroup0035Row0014_global_counts
  | row0575 =>
      exact evenK4TerminalGroup0035Row0015_global_counts
  | row0576 =>
      exact evenK4TerminalGroup0036Row0000_global_counts
  | row0577 =>
      exact evenK4TerminalGroup0036Row0001_global_counts
  | row0578 =>
      exact evenK4TerminalGroup0036Row0002_global_counts
  | row0579 =>
      exact evenK4TerminalGroup0036Row0003_global_counts
  | row0580 =>
      exact evenK4TerminalGroup0036Row0004_global_counts
  | row0581 =>
      exact evenK4TerminalGroup0036Row0005_global_counts
  | row0582 =>
      exact evenK4TerminalGroup0036Row0006_global_counts
  | row0583 =>
      exact evenK4TerminalGroup0036Row0007_global_counts
  | row0584 =>
      exact evenK4TerminalGroup0036Row0008_global_counts
  | row0585 =>
      exact evenK4TerminalGroup0036Row0009_global_counts
  | row0586 =>
      exact evenK4TerminalGroup0036Row0010_global_counts
  | row0587 =>
      exact evenK4TerminalGroup0036Row0011_global_counts
  | row0588 =>
      exact evenK4TerminalGroup0036Row0012_global_counts
  | row0589 =>
      exact evenK4TerminalGroup0036Row0013_global_counts

#print axioms evenK4Choice_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
