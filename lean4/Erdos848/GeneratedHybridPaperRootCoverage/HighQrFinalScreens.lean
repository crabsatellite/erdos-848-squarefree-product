import Erdos848.TailHighQrRootEnvelopeCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalSemantic
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK05SquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK05SquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK05NonsquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK05NonsquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK06SquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK06SquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK06NonsquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK06NonsquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK07SquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK07SquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK07NonsquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK07NonsquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK08SquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK08SquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK08NonsquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK08NonsquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK09SquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK09SquareTwistScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK09NonsquareNormalScan
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalK09NonsquareTwistScan

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def highQrFinalSquareK00Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK00
      split := 125
      M := 15625
      target := 6_250
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK00_checked
  forcingLargeChecked := highQrFinalLargeK00_checked
  forcingChecked := highQrFinalForcingK00_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK00_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK00_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  checked := by decide

def highQrFinalNonsquareK00Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK00
      split := 125
      M := 15625
      target := 6_250
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK00_checked
  forcingLargeChecked := highQrFinalLargeK00_checked
  forcingChecked := highQrFinalForcingK00_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK00_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK00_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  checked := by decide

def highQrFinalK00Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK00Screen
  nonsquare := highQrFinalNonsquareK00Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK01Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK01
      split := 125
      M := 15625
      target := 6_250
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK01_checked
  forcingLargeChecked := highQrFinalLargeK01_checked
  forcingChecked := highQrFinalForcingK01_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK01_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK01_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  checked := by decide

def highQrFinalNonsquareK01Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK01
      split := 125
      M := 15625
      target := 6_250
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK01_checked
  forcingLargeChecked := highQrFinalLargeK01_checked
  forcingChecked := highQrFinalForcingK01_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK01_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK01_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  checked := by decide

def highQrFinalK01Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK01Screen
  nonsquare := highQrFinalNonsquareK01Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK02Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK02
      split := 125
      M := 15625
      target := 6_250
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK02_checked
  forcingLargeChecked := highQrFinalLargeK02_checked
  forcingChecked := highQrFinalForcingK02_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK02_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK02_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  checked := by decide

def highQrFinalNonsquareK02Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK02
      split := 125
      M := 15625
      target := 6_250
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK02_checked
  forcingLargeChecked := highQrFinalLargeK02_checked
  forcingChecked := highQrFinalForcingK02_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK02_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK02_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  checked := by decide

def highQrFinalK02Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK02Screen
  nonsquare := highQrFinalNonsquareK02Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK03Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK03
      split := 125
      M := 15625
      target := 6_250
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK03_checked
  forcingLargeChecked := highQrFinalLargeK03_checked
  forcingChecked := highQrFinalForcingK03_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK03_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK03_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  checked := by decide

def highQrFinalNonsquareK03Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK03
      split := 125
      M := 15625
      target := 6_250
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK03_checked
  forcingLargeChecked := highQrFinalLargeK03_checked
  forcingChecked := highQrFinalForcingK03_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK03_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK03_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  checked := by decide

def highQrFinalK03Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK03Screen
  nonsquare := highQrFinalNonsquareK03Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK04Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK04
      split := 125
      M := 15625
      target := 6_250
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK04_checked
  forcingLargeChecked := highQrFinalLargeK04_checked
  forcingChecked := highQrFinalForcingK04_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK04_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK04_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalSquareBaseCount)
  checked := by decide

def highQrFinalNonsquareK04Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK04
      split := 125
      M := 15625
      target := 6_250
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK04_checked
  forcingLargeChecked := highQrFinalLargeK04_checked
  forcingChecked := highQrFinalForcingK04_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK04_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK04_sublist.subset hp)
  normalScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  twistScanChecked := by
    simpa [Erdos848.highQrPrimeCompletionPrunedShardedSubsetScanPasses] using
      (le_of_eq highQrFinalNonsquareBaseCount)
  checked := by decide

def highQrFinalK04Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK04Screen
  nonsquare := highQrFinalNonsquareK04Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK05Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK05
      split := 125
      M := 15625
      target := 3_189
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK05_checked
  forcingLargeChecked := highQrFinalLargeK05_checked
  forcingChecked := highQrFinalForcingK05_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK05_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK05_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK05SquareNormalScan
  twistScanChecked :=
    highQrFinalK05SquareTwistScan
  checked := by decide

def highQrFinalNonsquareK05Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK05
      split := 125
      M := 15625
      target := 3_189
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK05_checked
  forcingLargeChecked := highQrFinalLargeK05_checked
  forcingChecked := highQrFinalForcingK05_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK05_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK05_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK05NonsquareNormalScan
  twistScanChecked :=
    highQrFinalK05NonsquareTwistScan
  checked := by decide

def highQrFinalK05Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK05Screen
  nonsquare := highQrFinalNonsquareK05Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK06Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK06
      split := 125
      M := 15625
      target := 1_589
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK06_checked
  forcingLargeChecked := highQrFinalLargeK06_checked
  forcingChecked := highQrFinalForcingK06_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK06_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK06_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK06SquareNormalScan
  twistScanChecked :=
    highQrFinalK06SquareTwistScan
  checked := by decide

def highQrFinalNonsquareK06Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK06
      split := 125
      M := 15625
      target := 1_589
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK06_checked
  forcingLargeChecked := highQrFinalLargeK06_checked
  forcingChecked := highQrFinalForcingK06_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK06_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK06_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK06NonsquareNormalScan
  twistScanChecked :=
    highQrFinalK06NonsquareTwistScan
  checked := by decide

def highQrFinalK06Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK06Screen
  nonsquare := highQrFinalNonsquareK06Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK07Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK07
      split := 125
      M := 15625
      target := 789
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK07_checked
  forcingLargeChecked := highQrFinalLargeK07_checked
  forcingChecked := highQrFinalForcingK07_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK07_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK07_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK07SquareNormalScan
  twistScanChecked :=
    highQrFinalK07SquareTwistScan
  checked := by decide

def highQrFinalNonsquareK07Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK07
      split := 125
      M := 15625
      target := 789
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK07_checked
  forcingLargeChecked := highQrFinalLargeK07_checked
  forcingChecked := highQrFinalForcingK07_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK07_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK07_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK07NonsquareNormalScan
  twistScanChecked :=
    highQrFinalK07NonsquareTwistScan
  checked := by decide

def highQrFinalK07Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK07Screen
  nonsquare := highQrFinalNonsquareK07Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK08Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK08
      split := 125
      M := 15625
      target := 389
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK08_checked
  forcingLargeChecked := highQrFinalLargeK08_checked
  forcingChecked := highQrFinalForcingK08_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK08_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK08_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK08SquareNormalScan
  twistScanChecked :=
    highQrFinalK08SquareTwistScan
  checked := by decide

def highQrFinalNonsquareK08Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK08
      split := 125
      M := 15625
      target := 389
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK08_checked
  forcingLargeChecked := highQrFinalLargeK08_checked
  forcingChecked := highQrFinalForcingK08_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK08_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK08_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK08NonsquareNormalScan
  twistScanChecked :=
    highQrFinalK08NonsquareTwistScan
  checked := by decide

def highQrFinalK08Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK08Screen
  nonsquare := highQrFinalNonsquareK08Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalSquareK09Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK09
      split := 125
      M := 15625
      target := 190
      squareCoset := true }
  forcingSmallChecked := highQrFinalSmallK09_checked
  forcingLargeChecked := highQrFinalLargeK09_checked
  forcingChecked := highQrFinalForcingK09_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3SquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3SquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK09_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK09_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK09SquareNormalScan
  twistScanChecked :=
    highQrFinalK09SquareTwistScan
  checked := by decide

def highQrFinalNonsquareK09Screen :
    Erdos848.CertifiedHighQrScreenRow where
  row :=
    { forcing := highQrFinalForcingK09
      split := 125
      M := 15625
      target := 190
      squareCoset := false }
  forcingSmallChecked := highQrFinalSmallK09_checked
  forcingLargeChecked := highQrFinalLargeK09_checked
  forcingChecked := highQrFinalForcingK09_checked
  completion := highQrFinalCompletionCertificate
  completionLower := rfl
  baseWords := block3NonsquareBaseWords
  normalLookup := highQrFinalNormalMaskWords
  twistLookup := highQrFinalTwistMaskWords
  baseCertificate := block3NonsquareBaseCertificate
  normalCertificate := by
    intro p hp
    exact highQrFinalNormalCertificate
      (highQrFinalSmallK09_sublist.subset hp)
  twistCertificate := by
    intro p hp
    exact highQrFinalTwistCertificate
      (highQrFinalSmallK09_sublist.subset hp)
  normalScanChecked :=
    highQrFinalK09NonsquareNormalScan
  twistScanChecked :=
    highQrFinalK09NonsquareTwistScan
  checked := by decide

def highQrFinalK09Pair : Erdos848.CertifiedHighQrScreenPair where
  square := highQrFinalSquareK09Screen
  nonsquare := highQrFinalNonsquareK09Screen
  forcingAligned := rfl
  splitAligned := rfl
  MAligned := rfl
  targetAligned := rfl
  squareCoset := rfl
  nonsquareCoset := rfl

def highQrFinalScreenPairs : Fin 10 → Erdos848.CertifiedHighQrScreenPair :=
  ![highQrFinalK00Pair, highQrFinalK01Pair, highQrFinalK02Pair, highQrFinalK03Pair, highQrFinalK04Pair, highQrFinalK05Pair, highQrFinalK06Pair, highQrFinalK07Pair, highQrFinalK08Pair, highQrFinalK09Pair]

theorem highQrFinalScreenSupportLength
    (k : Fin 10) :
    (highQrFinalScreenPairs k).square.row.forcing.supportLength = k := by
  fin_cases k <;> rfl

theorem highQrFinalScreenTarget
    (k : Fin 10) :
    (highQrFinalScreenPairs k).square.row.target =
      highQrFinalTargets k := by
  fin_cases k <;> rfl

theorem highQrFinalScreenSplit
    (k : Fin 10) :
    (highQrFinalScreenPairs k).square.row.split =
      Erdos848.highQrSplit := by
  fin_cases k <;> rfl

theorem highQrFinalScreenStop
    {upper : Nat} (hupper : upper < Erdos848.highQrFiniteStop)
    (k : Fin 10) :
    upper < (highQrFinalScreenPairs k).square.row.forcing.stop := by
  fin_cases k <;>
    simpa [highQrFinalScreenPairs, highQrFinalK00Pair, highQrFinalSquareK00Screen, highQrFinalForcingK00, highQrFinalK01Pair, highQrFinalSquareK01Screen, highQrFinalForcingK01, highQrFinalK02Pair, highQrFinalSquareK02Screen, highQrFinalForcingK02, highQrFinalK03Pair, highQrFinalSquareK03Screen, highQrFinalForcingK03, highQrFinalK04Pair, highQrFinalSquareK04Screen, highQrFinalForcingK04, highQrFinalK05Pair, highQrFinalSquareK05Screen, highQrFinalForcingK05, highQrFinalK06Pair, highQrFinalSquareK06Screen, highQrFinalForcingK06, highQrFinalK07Pair, highQrFinalSquareK07Screen, highQrFinalForcingK07, highQrFinalK08Pair, highQrFinalSquareK08Screen, highQrFinalForcingK08, highQrFinalK09Pair, highQrFinalSquareK09Screen, highQrFinalForcingK09,
      Erdos848.highQrFiniteStop] using hupper

end Erdos848.GeneratedHybridPaperRootCoverage
