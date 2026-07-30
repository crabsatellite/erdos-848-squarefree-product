import Erdos848.TailHighQrScreenCertificate

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def highQrFinalTargets : Fin 10 → Nat :=
  ![6_250, 6_250, 6_250, 6_250, 6_250, 3_189, 1_589, 789, 389, 190]

def highQrFinalMaskPrimes : List Nat :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    , 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197
    , 199]

def highQrFinalCompletionData : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 229
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    , 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197
    , 199, 211, 223, 227, 229]

def highQrFinalSmallK00 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 0
  primes :=
  []

def highQrFinalLargeK00 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 0
  primes :=
  []

def highQrFinalForcingK00 : Erdos848.HighQrProductForcingRowData where
  supportLength := 0
  choose := 0
  stop := 500_000_000_000
  small := highQrFinalSmallK00
  large := highQrFinalLargeK00

def highQrFinalSmallK01 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 3
  primes :=
  [3]

def highQrFinalLargeK01 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 3
  upper := 7
  primes :=
  [7]

def highQrFinalForcingK01 : Erdos848.HighQrProductForcingRowData where
  supportLength := 1
  choose := 0
  stop := 500_000_000_000
  small := highQrFinalSmallK01
  large := highQrFinalLargeK01

def highQrFinalSmallK02 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 7
  primes :=
  [3, 7]

def highQrFinalLargeK02 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 7
  upper := 13
  primes :=
  [11, 13]

def highQrFinalForcingK02 : Erdos848.HighQrProductForcingRowData where
  supportLength := 2
  choose := 0
  stop := 500_000_000_000
  small := highQrFinalSmallK02
  large := highQrFinalLargeK02

def highQrFinalSmallK03 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 11
  primes :=
  [3, 7, 11]

def highQrFinalLargeK03 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 11
  upper := 19
  primes :=
  [13, 17, 19]

def highQrFinalForcingK03 : Erdos848.HighQrProductForcingRowData where
  supportLength := 3
  choose := 0
  stop := 500_000_000_000
  small := highQrFinalSmallK03
  large := highQrFinalLargeK03

def highQrFinalSmallK04 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 13
  primes :=
  [3, 7, 11, 13]

def highQrFinalLargeK04 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 13
  upper := 29
  primes :=
  [17, 19, 23, 29]

def highQrFinalForcingK04 : Erdos848.HighQrProductForcingRowData where
  supportLength := 4
  choose := 0
  stop := 500_000_000_000
  small := highQrFinalSmallK04
  large := highQrFinalLargeK04

def highQrFinalSmallK05 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 199
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    , 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197
    , 199]

def highQrFinalLargeK05 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 199
  upper := 233
  primes :=
  [211, 223, 227, 229, 233]

def highQrFinalForcingK05 : Erdos848.HighQrProductForcingRowData where
  supportLength := 5
  choose := 1
  stop := 500_000_000_000
  small := highQrFinalSmallK05
  large := highQrFinalLargeK05

def highQrFinalSmallK06 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 163
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    , 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163]

def highQrFinalLargeK06 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 163
  upper := 193
  primes :=
  [167, 173, 179, 181, 191, 193]

def highQrFinalForcingK06 : Erdos848.HighQrProductForcingRowData where
  supportLength := 6
  choose := 2
  stop := 500_000_000_000
  small := highQrFinalSmallK06
  large := highQrFinalLargeK06

def highQrFinalSmallK07 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 107
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    , 103, 107]

def highQrFinalLargeK07 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 107
  upper := 149
  primes :=
  [109, 113, 127, 131, 137, 139, 149]

def highQrFinalForcingK07 : Erdos848.HighQrProductForcingRowData where
  supportLength := 7
  choose := 3
  stop := 500_000_000_000
  small := highQrFinalSmallK07
  large := highQrFinalLargeK07

def highQrFinalSmallK08 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 61
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61]

def highQrFinalLargeK08 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 61
  upper := 101
  primes :=
  [67, 71, 73, 79, 83, 89, 97, 101]

def highQrFinalForcingK08 : Erdos848.HighQrProductForcingRowData where
  supportLength := 8
  choose := 4
  stop := 500_000_000_000
  small := highQrFinalSmallK08
  large := highQrFinalLargeK08

def highQrFinalSmallK09 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 0
  upper := 37
  primes :=
  [3, 7, 11, 13, 17, 19, 23, 29, 31, 37]

def highQrFinalLargeK09 : Erdos848.HighQrSupportPrimeIntervalData where
  lower := 37
  upper := 73
  primes :=
  [41, 43, 47, 53, 59, 61, 67, 71, 73]

def highQrFinalForcingK09 : Erdos848.HighQrProductForcingRowData where
  supportLength := 9
  choose := 5
  stop := 500_000_000_000
  small := highQrFinalSmallK09
  large := highQrFinalLargeK09

def highQrFinalForcings : Fin 10 → Erdos848.HighQrProductForcingRowData :=
  ![highQrFinalForcingK00, highQrFinalForcingK01, highQrFinalForcingK02, highQrFinalForcingK03, highQrFinalForcingK04, highQrFinalForcingK05, highQrFinalForcingK06, highQrFinalForcingK07, highQrFinalForcingK08, highQrFinalForcingK09]

end Erdos848.GeneratedHybridPaperRootCoverage
