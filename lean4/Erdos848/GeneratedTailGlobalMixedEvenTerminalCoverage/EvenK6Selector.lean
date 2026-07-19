import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Certificate
import Erdos848.TailGlobalMixedEvenTerminalCoverageCore

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

inductive EvenK6Choice where
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
  | row0028
  | row0029
  | row0030
  | row0031
  | row0032
  | row0033
  | row0034
  | row0035
  | row0036
  | row0037
  | row0038
  | row0039
  | row0040
  | row0041
  | row0042
  | row0043
  | row0044
  | row0045
  | row0046
  | row0047
  | row0048
  | row0049
  | row0050
  | row0051
  | row0052
  | row0053
  | row0054
  | row0055
  | row0056
  | row0057
  | row0058
  | row0059
  | row0060
  | row0061
  | row0062
  | row0063
  | row0064
  | row0065
  | row0066
  | row0067
  | row0068
  | row0069
  | row0070
  | row0071
  | row0072
  | row0073
  | row0074
  | row0075
  | row0076
  | row0077
  | row0078
  | row0079
  | row0080
  | row0081
  | row0082
  | row0083
  | row0084
  | row0085
  | row0086
  | row0087
  | row0088
  | row0089
  | row0090
  | row0091
  | row0092
  | row0093
  | row0094
  | row0095
  | row0096
  | row0097
  | row0098
  | row0099
  | row0100
  | row0101
  | row0102
  | row0103
  | row0104
  | row0105
  | row0106
  | row0107
  | row0108
  | row0109
  | row0110
  | row0111
  | row0112
  | row0113
  | row0114
  | row0115
  | row0116
  | row0117
  | row0118
  | row0119
  | row0120
  | row0121
  | row0122
  | row0123
  | row0124
  | row0125
  | row0126
  | row0127
  | row0128
  | row0129
  | row0130
  | row0131
  | row0132
  | row0133
  | row0134
  | row0135
  | row0136
  | row0137
  | row0138
  | row0139
  | row0140
  | row0141
  | row0142
  | row0143
  | row0144
  | row0145
  | row0146
  | row0147
  | row0148
  | row0149
  | row0150
  | row0151
  | row0152
  | row0153
  | row0154
  | row0155
  | row0156
  | row0157
  | row0158
  | row0159
  | row0160
  | row0161
  | row0162
  | row0163
  | row0164
  | row0165
  | row0166
  | row0167
  | row0168
  | row0169
  | row0170
  | row0171
  | row0172
  | row0173
  | row0174
  | row0175
  | row0176
  | row0177
  | row0178
  | row0179
  | row0180
  | row0181
  | row0182
  | row0183
  | row0184
  | row0185
  | row0186
  | row0187
  | row0188
  | row0189
  | row0190
  | row0191
  | row0192
  | row0193
  | row0194
  | row0195
  | row0196
  | row0197
  | row0198
  | row0199
  | row0200
  | row0201
  | row0202
  | row0203
  | row0204
  | row0205
  | row0206
  | row0207
  | row0208
  | row0209
  | row0210
  | row0211
  | row0212
  | row0213
  | row0214
  | row0215
  | row0216
  | row0217
  | row0218
  | row0219
  | row0220
  | row0221
  | row0222
  | row0223
  | row0224
  | row0225
  | row0226
  | row0227
  | row0228
  | row0229
  | row0230
  | row0231
  | row0232
  | row0233
  | row0234
  | row0235
  | row0236
  | row0237
  | row0238
  | row0239
  | row0240
  | row0241
  | row0242
  | row0243
  | row0244
  | row0245
  | row0246
  | row0247
  | row0248
  | row0249
  | row0250
  | row0251
  | row0252
  | row0253
  | row0254
  | row0255
  | row0256
  | row0257
  | row0258
  | row0259
  | row0260
  | row0261
  | row0262
  | row0263
  | row0264
  | row0265
  | row0266
  | row0267
  | row0268
  | row0269
  | row0270
  | row0271
  | row0272
  | row0273
  | row0274
  | row0275
  | row0276
  | row0277
  | row0278
  | row0279
  | row0280
  | row0281
  | row0282
  | row0283
  | row0284
  | row0285
  | row0286
  | row0287
  | row0288
  | row0289
  | row0290
  | row0291
  | row0292
  | row0293
  | row0294
  | row0295
  | row0296
  | row0297
  | row0298
  | row0299
  | row0300
  | row0301
  | row0302
  | row0303

def EvenK6Choice.terminal : EvenK6Choice -> Erdos848.GlobalMixedEvenTerminal
  | .row0000 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0000Row0000
  | .row0001 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0001Row0000
  | .row0002 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0002Row0000
  | .row0003 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0003Row0000
  | .row0004 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0004Row0000
  | .row0005 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0005Row0000
  | .row0006 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0006Row0000
  | .row0007 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0007Row0000
  | .row0008 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0008Row0000
  | .row0009 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0009Row0000
  | .row0010 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0010Row0000
  | .row0011 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0011Row0000
  | .row0012 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0012Row0000
  | .row0013 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0013Row0000
  | .row0014 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0014Row0000
  | .row0015 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0015Row0000
  | .row0016 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0016Row0000
  | .row0017 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0017Row0000
  | .row0018 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0018Row0000
  | .row0019 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0019Row0000
  | .row0020 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0020Row0000
  | .row0021 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0021Row0000
  | .row0022 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0022Row0000
  | .row0023 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0023Row0000
  | .row0024 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0024Row0000
  | .row0025 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0025Row0000
  | .row0026 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0026Row0000
  | .row0027 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0027Row0000
  | .row0028 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0028Row0000
  | .row0029 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0029Row0000
  | .row0030 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0030Row0000
  | .row0031 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0031Row0000
  | .row0032 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0032Row0000
  | .row0033 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0033Row0000
  | .row0034 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0034Row0000
  | .row0035 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0035Row0000
  | .row0036 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0036Row0000
  | .row0037 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0037Row0000
  | .row0038 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0038Row0000
  | .row0039 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0039Row0000
  | .row0040 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0040Row0000
  | .row0041 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0041Row0000
  | .row0042 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0042Row0000
  | .row0043 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0043Row0000
  | .row0044 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0044Row0000
  | .row0045 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0045Row0000
  | .row0046 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0046Row0000
  | .row0047 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0047Row0000
  | .row0048 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0048Row0000
  | .row0049 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0049Row0000
  | .row0050 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0050Row0000
  | .row0051 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0051Row0000
  | .row0052 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0052Row0000
  | .row0053 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0053Row0000
  | .row0054 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0054Row0000
  | .row0055 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0055Row0000
  | .row0056 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0056Row0000
  | .row0057 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0057Row0000
  | .row0058 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0058Row0000
  | .row0059 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0059Row0000
  | .row0060 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0060Row0000
  | .row0061 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0061Row0000
  | .row0062 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0062Row0000
  | .row0063 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0063Row0000
  | .row0064 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0064Row0000
  | .row0065 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0065Row0000
  | .row0066 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0066Row0000
  | .row0067 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0067Row0000
  | .row0068 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0068Row0000
  | .row0069 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0069Row0000
  | .row0070 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0070Row0000
  | .row0071 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0071Row0000
  | .row0072 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0072Row0000
  | .row0073 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0073Row0000
  | .row0074 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0074Row0000
  | .row0075 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0075Row0000
  | .row0076 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0076Row0000
  | .row0077 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0077Row0000
  | .row0078 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0078Row0000
  | .row0079 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0079Row0000
  | .row0080 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0080Row0000
  | .row0081 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0081Row0000
  | .row0082 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0082Row0000
  | .row0083 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0083Row0000
  | .row0084 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0084Row0000
  | .row0085 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0085Row0000
  | .row0086 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0086Row0000
  | .row0087 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0087Row0000
  | .row0088 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0088Row0000
  | .row0089 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0089Row0000
  | .row0090 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0090Row0000
  | .row0091 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0091Row0000
  | .row0092 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0092Row0000
  | .row0093 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0093Row0000
  | .row0094 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0094Row0000
  | .row0095 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0095Row0000
  | .row0096 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0096Row0000
  | .row0097 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0097Row0000
  | .row0098 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0098Row0000
  | .row0099 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0099Row0000
  | .row0100 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0100Row0000
  | .row0101 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0101Row0000
  | .row0102 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0102Row0000
  | .row0103 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0103Row0000
  | .row0104 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0104Row0000
  | .row0105 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0105Row0000
  | .row0106 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0106Row0000
  | .row0107 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0107Row0000
  | .row0108 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0108Row0000
  | .row0109 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0109Row0000
  | .row0110 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0110Row0000
  | .row0111 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0111Row0000
  | .row0112 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0112Row0000
  | .row0113 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0113Row0000
  | .row0114 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0114Row0000
  | .row0115 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0115Row0000
  | .row0116 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0116Row0000
  | .row0117 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0117Row0000
  | .row0118 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0118Row0000
  | .row0119 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0119Row0000
  | .row0120 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0120Row0000
  | .row0121 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0121Row0000
  | .row0122 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0122Row0000
  | .row0123 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0123Row0000
  | .row0124 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0124Row0000
  | .row0125 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0125Row0000
  | .row0126 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0126Row0000
  | .row0127 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0127Row0000
  | .row0128 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0128Row0000
  | .row0129 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0129Row0000
  | .row0130 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0130Row0000
  | .row0131 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0131Row0000
  | .row0132 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0132Row0000
  | .row0133 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0133Row0000
  | .row0134 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0134Row0000
  | .row0135 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0135Row0000
  | .row0136 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0136Row0000
  | .row0137 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0137Row0000
  | .row0138 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0138Row0000
  | .row0139 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0139Row0000
  | .row0140 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0140Row0000
  | .row0141 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0141Row0000
  | .row0142 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0142Row0000
  | .row0143 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0143Row0000
  | .row0144 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0144Row0000
  | .row0145 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0145Row0000
  | .row0146 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0146Row0000
  | .row0147 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0147Row0000
  | .row0148 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0148Row0000
  | .row0149 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0149Row0000
  | .row0150 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0150Row0000
  | .row0151 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0151Row0000
  | .row0152 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0152Row0000
  | .row0153 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0153Row0000
  | .row0154 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0154Row0000
  | .row0155 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0155Row0000
  | .row0156 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0156Row0000
  | .row0157 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0157Row0000
  | .row0158 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0158Row0000
  | .row0159 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0159Row0000
  | .row0160 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0160Row0000
  | .row0161 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0161Row0000
  | .row0162 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0162Row0000
  | .row0163 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0163Row0000
  | .row0164 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0164Row0000
  | .row0165 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0165Row0000
  | .row0166 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0166Row0000
  | .row0167 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0167Row0000
  | .row0168 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0168Row0000
  | .row0169 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0169Row0000
  | .row0170 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0170Row0000
  | .row0171 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0171Row0000
  | .row0172 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0172Row0000
  | .row0173 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0173Row0000
  | .row0174 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0174Row0000
  | .row0175 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0175Row0000
  | .row0176 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0176Row0000
  | .row0177 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0177Row0000
  | .row0178 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0178Row0000
  | .row0179 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0179Row0000
  | .row0180 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0180Row0000
  | .row0181 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0181Row0000
  | .row0182 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0182Row0000
  | .row0183 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0183Row0000
  | .row0184 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0184Row0000
  | .row0185 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0185Row0000
  | .row0186 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0186Row0000
  | .row0187 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0187Row0000
  | .row0188 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0188Row0000
  | .row0189 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0189Row0000
  | .row0190 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0190Row0000
  | .row0191 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0191Row0000
  | .row0192 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0192Row0000
  | .row0193 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0193Row0000
  | .row0194 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0194Row0000
  | .row0195 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0195Row0000
  | .row0196 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0196Row0000
  | .row0197 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0197Row0000
  | .row0198 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0198Row0000
  | .row0199 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0199Row0000
  | .row0200 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0200Row0000
  | .row0201 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0201Row0000
  | .row0202 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0202Row0000
  | .row0203 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0203Row0000
  | .row0204 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0204Row0000
  | .row0205 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0205Row0000
  | .row0206 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0206Row0000
  | .row0207 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0207Row0000
  | .row0208 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0208Row0000
  | .row0209 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0209Row0000
  | .row0210 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0210Row0000
  | .row0211 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0211Row0000
  | .row0212 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0212Row0000
  | .row0213 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0213Row0000
  | .row0214 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0214Row0000
  | .row0215 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0215Row0000
  | .row0216 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0216Row0000
  | .row0217 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0217Row0000
  | .row0218 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0218Row0000
  | .row0219 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0219Row0000
  | .row0220 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0220Row0000
  | .row0221 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0221Row0000
  | .row0222 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0222Row0000
  | .row0223 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0223Row0000
  | .row0224 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0224Row0000
  | .row0225 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0225Row0000
  | .row0226 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0226Row0000
  | .row0227 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0227Row0000
  | .row0228 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0228Row0000
  | .row0229 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0229Row0000
  | .row0230 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0230Row0000
  | .row0231 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0231Row0000
  | .row0232 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0232Row0000
  | .row0233 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0233Row0000
  | .row0234 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0234Row0000
  | .row0235 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0235Row0000
  | .row0236 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0236Row0000
  | .row0237 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0237Row0000
  | .row0238 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0238Row0000
  | .row0239 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0239Row0000
  | .row0240 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0240Row0000
  | .row0241 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0241Row0000
  | .row0242 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0242Row0000
  | .row0243 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0243Row0000
  | .row0244 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0244Row0000
  | .row0245 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0245Row0000
  | .row0246 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0246Row0000
  | .row0247 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0247Row0000
  | .row0248 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0248Row0000
  | .row0249 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0249Row0000
  | .row0250 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0250Row0000
  | .row0251 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0251Row0000
  | .row0252 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0252Row0000
  | .row0253 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0253Row0000
  | .row0254 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0254Row0000
  | .row0255 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0255Row0000
  | .row0256 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0256Row0000
  | .row0257 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0257Row0000
  | .row0258 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0258Row0000
  | .row0259 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0259Row0000
  | .row0260 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0260Row0000
  | .row0261 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0261Row0000
  | .row0262 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0262Row0000
  | .row0263 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0263Row0000
  | .row0264 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0264Row0000
  | .row0265 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0265Row0000
  | .row0266 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0266Row0000
  | .row0267 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0267Row0000
  | .row0268 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0268Row0000
  | .row0269 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0269Row0000
  | .row0270 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0270Row0000
  | .row0271 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0271Row0000
  | .row0272 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0272Row0000
  | .row0273 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0273Row0000
  | .row0274 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0274Row0000
  | .row0275 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0275Row0000
  | .row0276 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0276Row0000
  | .row0277 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0277Row0000
  | .row0278 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0278Row0000
  | .row0279 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0279Row0000
  | .row0280 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0280Row0000
  | .row0281 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0281Row0000
  | .row0282 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0282Row0000
  | .row0283 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0283Row0000
  | .row0284 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0284Row0000
  | .row0285 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0285Row0000
  | .row0286 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0286Row0000
  | .row0287 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0287Row0000
  | .row0288 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0288Row0000
  | .row0289 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0289Row0000
  | .row0290 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0290Row0000
  | .row0291 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0291Row0000
  | .row0292 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0292Row0000
  | .row0293 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0293Row0000
  | .row0294 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0294Row0000
  | .row0295 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0295Row0000
  | .row0296 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0296Row0000
  | .row0297 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0297Row0000
  | .row0298 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0298Row0000
  | .row0299 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0299Row0000
  | .row0300 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0300Row0000
  | .row0301 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0301Row0000
  | .row0302 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0302Row0000
  | .row0303 => Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.evenK6TerminalGroup0303Row0000

def evenK6Selector : List Nat -> Option EvenK6Choice
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
  | 3 :: 7 :: 11 :: 53 :: _ => some .row0010
  | 3 :: 7 :: 11 :: 59 :: _ => some .row0011
  | 3 :: 7 :: 11 :: 61 :: _ => some .row0012
  | 3 :: 7 :: 11 :: 67 :: _ => some .row0013
  | 3 :: 7 :: 11 :: 71 :: _ => some .row0014
  | 3 :: 7 :: 11 :: 73 :: _ => some .row0015
  | 3 :: 7 :: 11 :: 79 :: _ => some .row0016
  | 3 :: 7 :: 11 :: 83 :: _ => some .row0017
  | 3 :: 7 :: 11 :: 89 :: _ => some .row0018
  | 3 :: 7 :: 11 :: 97 :: _ => some .row0019
  | 3 :: 7 :: 11 :: 101 :: _ => some .row0020
  | 3 :: 7 :: 11 :: 103 :: _ => some .row0021
  | 3 :: 7 :: 11 :: 107 :: _ => some .row0022
  | 3 :: 7 :: 11 :: 109 :: _ => some .row0023
  | 3 :: 7 :: 11 :: 113 :: _ => some .row0024
  | 3 :: 7 :: 11 :: 127 :: _ => some .row0025
  | 3 :: 7 :: 11 :: 131 :: _ => some .row0026
  | 3 :: 7 :: 11 :: 137 :: _ => some .row0027
  | 3 :: 7 :: 11 :: 139 :: _ => some .row0028
  | 3 :: 7 :: 11 :: 149 :: _ => some .row0029
  | 3 :: 7 :: 11 :: 151 :: _ => some .row0030
  | 3 :: 7 :: 11 :: 157 :: _ => some .row0031
  | 3 :: 7 :: 11 :: 163 :: _ => some .row0032
  | 3 :: 7 :: 11 :: 167 :: _ => some .row0033
  | 3 :: 7 :: 11 :: 173 :: _ => some .row0034
  | 3 :: 7 :: 13 :: 17 :: _ => some .row0035
  | 3 :: 7 :: 13 :: 19 :: _ => some .row0036
  | 3 :: 7 :: 13 :: 23 :: _ => some .row0037
  | 3 :: 7 :: 13 :: 29 :: _ => some .row0038
  | 3 :: 7 :: 13 :: 31 :: _ => some .row0039
  | 3 :: 7 :: 13 :: 37 :: _ => some .row0040
  | 3 :: 7 :: 13 :: 41 :: _ => some .row0041
  | 3 :: 7 :: 13 :: 43 :: _ => some .row0042
  | 3 :: 7 :: 13 :: 47 :: _ => some .row0043
  | 3 :: 7 :: 13 :: 53 :: _ => some .row0044
  | 3 :: 7 :: 13 :: 59 :: _ => some .row0045
  | 3 :: 7 :: 13 :: 61 :: _ => some .row0046
  | 3 :: 7 :: 13 :: 67 :: _ => some .row0047
  | 3 :: 7 :: 13 :: 71 :: _ => some .row0048
  | 3 :: 7 :: 13 :: 73 :: _ => some .row0049
  | 3 :: 7 :: 13 :: 79 :: _ => some .row0050
  | 3 :: 7 :: 13 :: 83 :: _ => some .row0051
  | 3 :: 7 :: 13 :: 89 :: _ => some .row0052
  | 3 :: 7 :: 13 :: 97 :: _ => some .row0053
  | 3 :: 7 :: 13 :: 101 :: _ => some .row0054
  | 3 :: 7 :: 13 :: 103 :: _ => some .row0055
  | 3 :: 7 :: 13 :: 107 :: _ => some .row0056
  | 3 :: 7 :: 13 :: 109 :: _ => some .row0057
  | 3 :: 7 :: 13 :: 113 :: _ => some .row0058
  | 3 :: 7 :: 13 :: 127 :: _ => some .row0059
  | 3 :: 7 :: 13 :: 131 :: _ => some .row0060
  | 3 :: 7 :: 13 :: 137 :: _ => some .row0061
  | 3 :: 7 :: 13 :: 139 :: _ => some .row0062
  | 3 :: 7 :: 13 :: 149 :: _ => some .row0063
  | 3 :: 7 :: 13 :: 151 :: _ => some .row0064
  | 3 :: 7 :: 13 :: 157 :: _ => some .row0065
  | 3 :: 7 :: 13 :: 163 :: _ => some .row0066
  | 3 :: 7 :: 17 :: 19 :: _ => some .row0067
  | 3 :: 7 :: 17 :: 23 :: _ => some .row0068
  | 3 :: 7 :: 17 :: 29 :: _ => some .row0069
  | 3 :: 7 :: 17 :: 31 :: _ => some .row0070
  | 3 :: 7 :: 17 :: 37 :: _ => some .row0071
  | 3 :: 7 :: 17 :: 41 :: _ => some .row0072
  | 3 :: 7 :: 17 :: 43 :: _ => some .row0073
  | 3 :: 7 :: 17 :: 47 :: _ => some .row0074
  | 3 :: 7 :: 17 :: 53 :: _ => some .row0075
  | 3 :: 7 :: 17 :: 59 :: _ => some .row0076
  | 3 :: 7 :: 17 :: 61 :: _ => some .row0077
  | 3 :: 7 :: 17 :: 67 :: _ => some .row0078
  | 3 :: 7 :: 17 :: 71 :: _ => some .row0079
  | 3 :: 7 :: 17 :: 73 :: _ => some .row0080
  | 3 :: 7 :: 17 :: 79 :: _ => some .row0081
  | 3 :: 7 :: 17 :: 83 :: _ => some .row0082
  | 3 :: 7 :: 17 :: 89 :: _ => some .row0083
  | 3 :: 7 :: 17 :: 97 :: _ => some .row0084
  | 3 :: 7 :: 17 :: 101 :: _ => some .row0085
  | 3 :: 7 :: 17 :: 103 :: _ => some .row0086
  | 3 :: 7 :: 17 :: 107 :: _ => some .row0087
  | 3 :: 7 :: 17 :: 109 :: _ => some .row0088
  | 3 :: 7 :: 17 :: 113 :: _ => some .row0089
  | 3 :: 7 :: 17 :: 127 :: _ => some .row0090
  | 3 :: 7 :: 17 :: 131 :: _ => some .row0091
  | 3 :: 7 :: 17 :: 137 :: _ => some .row0092
  | 3 :: 7 :: 17 :: 139 :: _ => some .row0093
  | 3 :: 7 :: 17 :: 149 :: _ => some .row0094
  | 3 :: 7 :: 19 :: _ => some .row0095
  | 3 :: 7 :: 23 :: _ => some .row0096
  | 3 :: 7 :: 29 :: _ => some .row0097
  | 3 :: 7 :: 31 :: _ => some .row0098
  | 3 :: 7 :: 37 :: _ => some .row0099
  | 3 :: 7 :: 41 :: _ => some .row0100
  | 3 :: 7 :: 43 :: _ => some .row0101
  | 3 :: 7 :: 47 :: _ => some .row0102
  | 3 :: 7 :: 53 :: _ => some .row0103
  | 3 :: 7 :: 59 :: _ => some .row0104
  | 3 :: 7 :: 61 :: _ => some .row0105
  | 3 :: 7 :: 67 :: _ => some .row0106
  | 3 :: 7 :: 71 :: _ => some .row0107
  | 3 :: 7 :: 73 :: _ => some .row0108
  | 3 :: 7 :: 79 :: _ => some .row0109
  | 3 :: 11 :: 13 :: 17 :: 19 :: _ => some .row0110
  | 3 :: 11 :: 13 :: 17 :: 23 :: _ => some .row0111
  | 3 :: 11 :: 13 :: 17 :: 29 :: _ => some .row0112
  | 3 :: 11 :: 13 :: 17 :: 31 :: _ => some .row0113
  | 3 :: 11 :: 13 :: 17 :: 37 :: _ => some .row0114
  | 3 :: 11 :: 13 :: 17 :: 41 :: _ => some .row0115
  | 3 :: 11 :: 13 :: 17 :: 43 :: _ => some .row0116
  | 3 :: 11 :: 13 :: 17 :: 47 :: _ => some .row0117
  | 3 :: 11 :: 13 :: 17 :: 53 :: _ => some .row0118
  | 3 :: 11 :: 13 :: 17 :: 59 :: _ => some .row0119
  | 3 :: 11 :: 13 :: 17 :: 61 :: _ => some .row0120
  | 3 :: 11 :: 13 :: 17 :: 67 :: _ => some .row0121
  | 3 :: 11 :: 13 :: 17 :: 71 :: _ => some .row0122
  | 3 :: 11 :: 13 :: 17 :: 73 :: _ => some .row0123
  | 3 :: 11 :: 13 :: 17 :: 79 :: _ => some .row0124
  | 3 :: 11 :: 13 :: 17 :: 83 :: _ => some .row0125
  | 3 :: 11 :: 13 :: 17 :: 89 :: _ => some .row0126
  | 3 :: 11 :: 13 :: 17 :: 97 :: _ => some .row0127
  | 3 :: 11 :: 13 :: 17 :: 101 :: _ => some .row0128
  | 3 :: 11 :: 13 :: 17 :: 103 :: _ => some .row0129
  | 3 :: 11 :: 13 :: 17 :: 107 :: _ => some .row0130
  | 3 :: 11 :: 13 :: 17 :: 109 :: _ => some .row0131
  | 3 :: 11 :: 13 :: 17 :: 113 :: _ => some .row0132
  | 3 :: 11 :: 13 :: 17 :: 127 :: _ => some .row0133
  | 3 :: 11 :: 13 :: 17 :: 131 :: _ => some .row0134
  | 3 :: 11 :: 13 :: 17 :: 137 :: _ => some .row0135
  | 3 :: 11 :: 13 :: 17 :: 139 :: _ => some .row0136
  | 3 :: 11 :: 13 :: 17 :: 149 :: _ => some .row0137
  | 3 :: 11 :: 13 :: 17 :: 151 :: _ => some .row0138
  | 3 :: 11 :: 13 :: 17 :: 157 :: _ => some .row0139
  | 3 :: 11 :: 13 :: 17 :: 163 :: _ => some .row0140
  | 3 :: 11 :: 13 :: 17 :: 167 :: _ => some .row0141
  | 3 :: 11 :: 13 :: 17 :: 173 :: _ => some .row0142
  | 3 :: 11 :: 13 :: 17 :: 179 :: _ => some .row0143
  | 3 :: 11 :: 13 :: 17 :: 181 :: _ => some .row0144
  | 3 :: 11 :: 13 :: 17 :: 191 :: _ => some .row0145
  | 3 :: 11 :: 13 :: 17 :: 193 :: _ => some .row0146
  | 3 :: 11 :: 13 :: 17 :: 197 :: _ => some .row0147
  | 3 :: 11 :: 13 :: 17 :: 199 :: _ => some .row0148
  | 3 :: 11 :: 13 :: 17 :: 211 :: _ => some .row0149
  | 3 :: 11 :: 13 :: 17 :: 223 :: _ => some .row0150
  | 3 :: 11 :: 13 :: 17 :: 227 :: _ => some .row0151
  | 3 :: 11 :: 13 :: 17 :: 229 :: _ => some .row0152
  | 3 :: 11 :: 13 :: 17 :: 233 :: _ => some .row0153
  | 3 :: 11 :: 13 :: 17 :: 239 :: _ => some .row0154
  | 3 :: 11 :: 13 :: 17 :: 241 :: _ => some .row0155
  | 3 :: 11 :: 13 :: 17 :: 251 :: _ => some .row0156
  | 3 :: 11 :: 13 :: 17 :: 257 :: _ => some .row0157
  | 3 :: 11 :: 13 :: 17 :: 263 :: _ => some .row0158
  | 3 :: 11 :: 13 :: 17 :: 269 :: _ => some .row0159
  | 3 :: 11 :: 13 :: 17 :: 271 :: _ => some .row0160
  | 3 :: 11 :: 13 :: 17 :: 277 :: _ => some .row0161
  | 3 :: 11 :: 13 :: 17 :: 281 :: _ => some .row0162
  | 3 :: 11 :: 13 :: 17 :: 283 :: _ => some .row0163
  | 3 :: 11 :: 13 :: 17 :: 293 :: _ => some .row0164
  | 3 :: 11 :: 13 :: 17 :: 307 :: _ => some .row0165
  | 3 :: 11 :: 13 :: 17 :: 311 :: _ => some .row0166
  | 3 :: 11 :: 13 :: 17 :: 313 :: _ => some .row0167
  | 3 :: 11 :: 13 :: 17 :: 317 :: _ => some .row0168
  | 3 :: 11 :: 13 :: 17 :: 331 :: _ => some .row0169
  | 3 :: 11 :: 13 :: 17 :: 337 :: _ => some .row0170
  | 3 :: 11 :: 13 :: 17 :: 347 :: _ => some .row0171
  | 3 :: 11 :: 13 :: 17 :: 349 :: _ => some .row0172
  | 3 :: 11 :: 13 :: 17 :: 353 :: _ => some .row0173
  | 3 :: 11 :: 13 :: 17 :: 359 :: _ => some .row0174
  | 3 :: 11 :: 13 :: 17 :: 367 :: _ => some .row0175
  | 3 :: 11 :: 13 :: 17 :: 373 :: _ => some .row0176
  | 3 :: 11 :: 13 :: 17 :: 379 :: _ => some .row0177
  | 3 :: 11 :: 13 :: 17 :: 383 :: _ => some .row0178
  | 3 :: 11 :: 13 :: 17 :: 389 :: _ => some .row0179
  | 3 :: 11 :: 13 :: 17 :: 397 :: _ => some .row0180
  | 3 :: 11 :: 13 :: 17 :: 401 :: _ => some .row0181
  | 3 :: 11 :: 13 :: 17 :: 409 :: _ => some .row0182
  | 3 :: 11 :: 13 :: 17 :: 419 :: _ => some .row0183
  | 3 :: 11 :: 13 :: 17 :: 421 :: _ => some .row0184
  | 3 :: 11 :: 13 :: 19 :: _ => some .row0185
  | 3 :: 11 :: 13 :: 23 :: _ => some .row0186
  | 3 :: 11 :: 13 :: 29 :: _ => some .row0187
  | 3 :: 11 :: 13 :: 31 :: _ => some .row0188
  | 3 :: 11 :: 13 :: 37 :: _ => some .row0189
  | 3 :: 11 :: 13 :: 41 :: _ => some .row0190
  | 3 :: 11 :: 13 :: 43 :: _ => some .row0191
  | 3 :: 11 :: 13 :: 47 :: _ => some .row0192
  | 3 :: 11 :: 13 :: 53 :: _ => some .row0193
  | 3 :: 11 :: 13 :: 59 :: _ => some .row0194
  | 3 :: 11 :: 13 :: 61 :: _ => some .row0195
  | 3 :: 11 :: 13 :: 67 :: _ => some .row0196
  | 3 :: 11 :: 13 :: 71 :: _ => some .row0197
  | 3 :: 11 :: 13 :: 73 :: _ => some .row0198
  | 3 :: 11 :: 13 :: 79 :: _ => some .row0199
  | 3 :: 11 :: 13 :: 83 :: _ => some .row0200
  | 3 :: 11 :: 13 :: 89 :: _ => some .row0201
  | 3 :: 11 :: 13 :: 97 :: _ => some .row0202
  | 3 :: 11 :: 13 :: 101 :: _ => some .row0203
  | 3 :: 11 :: 13 :: 103 :: _ => some .row0204
  | 3 :: 11 :: 13 :: 107 :: _ => some .row0205
  | 3 :: 11 :: 13 :: 109 :: _ => some .row0206
  | 3 :: 11 :: 13 :: 113 :: _ => some .row0207
  | 3 :: 11 :: 13 :: 127 :: _ => some .row0208
  | 3 :: 11 :: 13 :: 131 :: _ => some .row0209
  | 3 :: 11 :: 13 :: 137 :: _ => some .row0210
  | 3 :: 11 :: 13 :: 139 :: _ => some .row0211
  | 3 :: 11 :: 17 :: _ => some .row0212
  | 3 :: 11 :: 19 :: _ => some .row0213
  | 3 :: 11 :: 23 :: _ => some .row0214
  | 3 :: 11 :: 29 :: _ => some .row0215
  | 3 :: 11 :: 31 :: _ => some .row0216
  | 3 :: 11 :: 37 :: _ => some .row0217
  | 3 :: 11 :: 41 :: _ => some .row0218
  | 3 :: 11 :: 43 :: _ => some .row0219
  | 3 :: 11 :: 47 :: _ => some .row0220
  | 3 :: 11 :: 53 :: _ => some .row0221
  | 3 :: 11 :: 59 :: _ => some .row0222
  | 3 :: 11 :: 61 :: _ => some .row0223
  | 3 :: 11 :: 67 :: _ => some .row0224
  | 3 :: 11 :: 71 :: _ => some .row0225
  | 3 :: 13 :: 17 :: _ => some .row0226
  | 3 :: 13 :: 19 :: _ => some .row0227
  | 3 :: 13 :: 23 :: _ => some .row0228
  | 3 :: 13 :: 29 :: _ => some .row0229
  | 3 :: 13 :: 31 :: _ => some .row0230
  | 3 :: 13 :: 37 :: _ => some .row0231
  | 3 :: 13 :: 41 :: _ => some .row0232
  | 3 :: 13 :: 43 :: _ => some .row0233
  | 3 :: 13 :: 47 :: _ => some .row0234
  | 3 :: 13 :: 53 :: _ => some .row0235
  | 3 :: 13 :: 59 :: _ => some .row0236
  | 3 :: 13 :: 61 :: _ => some .row0237
  | 3 :: 13 :: 67 :: _ => some .row0238
  | 3 :: 13 :: 71 :: _ => some .row0239
  | 3 :: 17 :: _ => some .row0240
  | 3 :: 19 :: _ => some .row0241
  | 3 :: 23 :: _ => some .row0242
  | 3 :: 29 :: _ => some .row0243
  | 3 :: 31 :: _ => some .row0244
  | 3 :: 37 :: _ => some .row0245
  | 3 :: 41 :: _ => some .row0246
  | 3 :: 43 :: _ => some .row0247
  | 7 :: 11 :: 13 :: _ => some .row0248
  | 7 :: 11 :: 17 :: _ => some .row0249
  | 7 :: 11 :: 19 :: _ => some .row0250
  | 7 :: 11 :: 23 :: _ => some .row0251
  | 7 :: 11 :: 29 :: _ => some .row0252
  | 7 :: 11 :: 31 :: _ => some .row0253
  | 7 :: 11 :: 37 :: _ => some .row0254
  | 7 :: 11 :: 41 :: _ => some .row0255
  | 7 :: 11 :: 43 :: _ => some .row0256
  | 7 :: 11 :: 47 :: _ => some .row0257
  | 7 :: 11 :: 53 :: _ => some .row0258
  | 7 :: 11 :: 59 :: _ => some .row0259
  | 7 :: 13 :: 17 :: _ => some .row0260
  | 7 :: 13 :: 19 :: _ => some .row0261
  | 7 :: 13 :: 23 :: _ => some .row0262
  | 7 :: 13 :: 29 :: _ => some .row0263
  | 7 :: 13 :: 31 :: _ => some .row0264
  | 7 :: 13 :: 37 :: _ => some .row0265
  | 7 :: 13 :: 41 :: _ => some .row0266
  | 7 :: 13 :: 43 :: _ => some .row0267
  | 7 :: 13 :: 47 :: _ => some .row0268
  | 7 :: 13 :: 53 :: _ => some .row0269
  | 7 :: 17 :: 19 :: _ => some .row0270
  | 7 :: 17 :: 23 :: _ => some .row0271
  | 7 :: 17 :: 29 :: _ => some .row0272
  | 7 :: 17 :: 31 :: _ => some .row0273
  | 7 :: 17 :: 37 :: _ => some .row0274
  | 7 :: 17 :: 41 :: _ => some .row0275
  | 7 :: 17 :: 43 :: _ => some .row0276
  | 7 :: 17 :: 47 :: _ => some .row0277
  | 7 :: 19 :: _ => some .row0278
  | 7 :: 23 :: _ => some .row0279
  | 7 :: 29 :: _ => some .row0280
  | 7 :: 31 :: _ => some .row0281
  | 7 :: 37 :: _ => some .row0282
  | 11 :: 13 :: 17 :: _ => some .row0283
  | 11 :: 13 :: 19 :: _ => some .row0284
  | 11 :: 13 :: 23 :: _ => some .row0285
  | 11 :: 13 :: 29 :: _ => some .row0286
  | 11 :: 13 :: 31 :: _ => some .row0287
  | 11 :: 13 :: 37 :: _ => some .row0288
  | 11 :: 13 :: 41 :: _ => some .row0289
  | 11 :: 13 :: 43 :: _ => some .row0290
  | 11 :: 13 :: 47 :: _ => some .row0291
  | 11 :: 17 :: _ => some .row0292
  | 11 :: 19 :: _ => some .row0293
  | 11 :: 23 :: _ => some .row0294
  | 11 :: 29 :: _ => some .row0295
  | 11 :: 31 :: _ => some .row0296
  | 13 :: 17 :: _ => some .row0297
  | 13 :: 19 :: _ => some .row0298
  | 13 :: 23 :: _ => some .row0299
  | 13 :: 29 :: _ => some .row0300
  | 13 :: 31 :: _ => some .row0301
  | 17 :: _ => some .row0302
  | 19 :: _ => some .row0303
  | _ => none

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
