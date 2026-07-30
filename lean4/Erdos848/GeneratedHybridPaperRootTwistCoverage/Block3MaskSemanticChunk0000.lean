import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0000
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0001
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0002
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0003
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0004
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0005
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0006
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0007
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0008
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0009
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0010
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0011
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0012
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0013
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0014
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticBatch0015
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootTwistCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3TwistMaskBatchCertificate0000
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0000) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0000 hp
  by_cases hp3 : p = 3
  · subst p
    simpa [block3TwistBatchNormalWords0000, block3TwistBatchWords0000, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp7 : p = 7
  · subst p
    simpa [block3TwistBatchNormalWords0000, block3TwistBatchWords0000, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0000, hp3, hp7] at hp

theorem block3TwistMaskBatchCertificate0001
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0001) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0001 hp
  by_cases hp11 : p = 11
  · subst p
    simpa [block3TwistBatchNormalWords0001, block3TwistBatchWords0001, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp13 : p = 13
  · subst p
    simpa [block3TwistBatchNormalWords0001, block3TwistBatchWords0001, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0001, hp11, hp13] at hp

theorem block3TwistMaskBatchCertificate0002
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0002) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0002 hp
  by_cases hp17 : p = 17
  · subst p
    simpa [block3TwistBatchNormalWords0002, block3TwistBatchWords0002, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp19 : p = 19
  · subst p
    simpa [block3TwistBatchNormalWords0002, block3TwistBatchWords0002, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0002, hp17, hp19] at hp

theorem block3TwistMaskBatchCertificate0003
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0003) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0003 hp
  by_cases hp23 : p = 23
  · subst p
    simpa [block3TwistBatchNormalWords0003, block3TwistBatchWords0003, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp29 : p = 29
  · subst p
    simpa [block3TwistBatchNormalWords0003, block3TwistBatchWords0003, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0003, hp23, hp29] at hp

theorem block3TwistMaskBatchCertificate0004
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0004) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0004 hp
  by_cases hp31 : p = 31
  · subst p
    simpa [block3TwistBatchNormalWords0004, block3TwistBatchWords0004, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp37 : p = 37
  · subst p
    simpa [block3TwistBatchNormalWords0004, block3TwistBatchWords0004, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0004, hp31, hp37] at hp

theorem block3TwistMaskBatchCertificate0005
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0005) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0005 hp
  by_cases hp41 : p = 41
  · subst p
    simpa [block3TwistBatchNormalWords0005, block3TwistBatchWords0005, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp43 : p = 43
  · subst p
    simpa [block3TwistBatchNormalWords0005, block3TwistBatchWords0005, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0005, hp41, hp43] at hp

theorem block3TwistMaskBatchCertificate0006
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0006) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0006 hp
  by_cases hp47 : p = 47
  · subst p
    simpa [block3TwistBatchNormalWords0006, block3TwistBatchWords0006, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp53 : p = 53
  · subst p
    simpa [block3TwistBatchNormalWords0006, block3TwistBatchWords0006, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0006, hp47, hp53] at hp

theorem block3TwistMaskBatchCertificate0007
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0007) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0007 hp
  by_cases hp59 : p = 59
  · subst p
    simpa [block3TwistBatchNormalWords0007, block3TwistBatchWords0007, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp61 : p = 61
  · subst p
    simpa [block3TwistBatchNormalWords0007, block3TwistBatchWords0007, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0007, hp59, hp61] at hp

theorem block3TwistMaskBatchCertificate0008
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0008) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0008 hp
  by_cases hp67 : p = 67
  · subst p
    simpa [block3TwistBatchNormalWords0008, block3TwistBatchWords0008, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp71 : p = 71
  · subst p
    simpa [block3TwistBatchNormalWords0008, block3TwistBatchWords0008, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0008, hp67, hp71] at hp

theorem block3TwistMaskBatchCertificate0009
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0009) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0009 hp
  by_cases hp73 : p = 73
  · subst p
    simpa [block3TwistBatchNormalWords0009, block3TwistBatchWords0009, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp79 : p = 79
  · subst p
    simpa [block3TwistBatchNormalWords0009, block3TwistBatchWords0009, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0009, hp73, hp79] at hp

theorem block3TwistMaskBatchCertificate0010
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0010) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0010 hp
  by_cases hp83 : p = 83
  · subst p
    simpa [block3TwistBatchNormalWords0010, block3TwistBatchWords0010, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp89 : p = 89
  · subst p
    simpa [block3TwistBatchNormalWords0010, block3TwistBatchWords0010, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0010, hp83, hp89] at hp

theorem block3TwistMaskBatchCertificate0011
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0011) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0011 hp
  by_cases hp97 : p = 97
  · subst p
    simpa [block3TwistBatchNormalWords0011, block3TwistBatchWords0011, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp101 : p = 101
  · subst p
    simpa [block3TwistBatchNormalWords0011, block3TwistBatchWords0011, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0011, hp97, hp101] at hp

theorem block3TwistMaskBatchCertificate0012
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0012) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0012 hp
  by_cases hp103 : p = 103
  · subst p
    simpa [block3TwistBatchNormalWords0012, block3TwistBatchWords0012, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp107 : p = 107
  · subst p
    simpa [block3TwistBatchNormalWords0012, block3TwistBatchWords0012, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0012, hp103, hp107] at hp

theorem block3TwistMaskBatchCertificate0013
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0013) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0013 hp
  by_cases hp109 : p = 109
  · subst p
    simpa [block3TwistBatchNormalWords0013, block3TwistBatchWords0013, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp113 : p = 113
  · subst p
    simpa [block3TwistBatchNormalWords0013, block3TwistBatchWords0013, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0013, hp109, hp113] at hp

theorem block3TwistMaskBatchCertificate0014
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0014) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0014 hp
  by_cases hp127 : p = 127
  · subst p
    simpa [block3TwistBatchNormalWords0014, block3TwistBatchWords0014, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp131 : p = 131
  · subst p
    simpa [block3TwistBatchNormalWords0014, block3TwistBatchWords0014, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0014, hp127, hp131] at hp

theorem block3TwistMaskBatchCertificate0015
    {p : Nat} (hp : p ∈ block3TwistSemanticBatchPrimes0015) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  have hlocal := block3TwistMaskBatchLocalCertificate0015 hp
  by_cases hp137 : p = 137
  · subst p
    simpa [block3TwistBatchNormalWords0015, block3TwistBatchWords0015, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  by_cases hp139 : p = 139
  · subst p
    simpa [block3TwistBatchNormalWords0015, block3TwistBatchWords0015, Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords, block3TwistQrMaskWords] using hlocal
  · simp [block3TwistSemanticBatchPrimes0015, hp137, hp139] at hp

def block3TwistSemanticChunkPrimes0000 : List Nat :=
    block3TwistSemanticBatchPrimes0000 ++
    block3TwistSemanticBatchPrimes0001 ++
    block3TwistSemanticBatchPrimes0002 ++
    block3TwistSemanticBatchPrimes0003 ++
    block3TwistSemanticBatchPrimes0004 ++
    block3TwistSemanticBatchPrimes0005 ++
    block3TwistSemanticBatchPrimes0006 ++
    block3TwistSemanticBatchPrimes0007 ++
    block3TwistSemanticBatchPrimes0008 ++
    block3TwistSemanticBatchPrimes0009 ++
    block3TwistSemanticBatchPrimes0010 ++
    block3TwistSemanticBatchPrimes0011 ++
    block3TwistSemanticBatchPrimes0012 ++
    block3TwistSemanticBatchPrimes0013 ++
    block3TwistSemanticBatchPrimes0014 ++
    block3TwistSemanticBatchPrimes0015

theorem block3TwistMaskChunkCertificate0000
    {p : Nat} (hp : p ∈ block3TwistSemanticChunkPrimes0000) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (Erdos848.GeneratedHybridPaperRootCoverage.block3QrMaskWords p)
      (block3TwistQrMaskWords p) := by
  simp only [block3TwistSemanticChunkPrimes0000, List.mem_append] at hp
  exact match hp with
  | Or.inl hp =>
    match hp with
    | Or.inl hp =>
      match hp with
      | Or.inl hp =>
        match hp with
        | Or.inl hp =>
          match hp with
          | Or.inl hp =>
            match hp with
            | Or.inl hp =>
              match hp with
              | Or.inl hp =>
                match hp with
                | Or.inl hp =>
                  match hp with
                  | Or.inl hp =>
                    match hp with
                    | Or.inl hp =>
                      match hp with
                      | Or.inl hp =>
                        match hp with
                        | Or.inl hp =>
                          match hp with
                          | Or.inl hp =>
                            match hp with
                            | Or.inl hp =>
                              match hp with
                              | Or.inl hp =>
                                block3TwistMaskBatchCertificate0000 hp
                              | Or.inr hp => block3TwistMaskBatchCertificate0001 hp
                            | Or.inr hp => block3TwistMaskBatchCertificate0002 hp
                          | Or.inr hp => block3TwistMaskBatchCertificate0003 hp
                        | Or.inr hp => block3TwistMaskBatchCertificate0004 hp
                      | Or.inr hp => block3TwistMaskBatchCertificate0005 hp
                    | Or.inr hp => block3TwistMaskBatchCertificate0006 hp
                  | Or.inr hp => block3TwistMaskBatchCertificate0007 hp
                | Or.inr hp => block3TwistMaskBatchCertificate0008 hp
              | Or.inr hp => block3TwistMaskBatchCertificate0009 hp
            | Or.inr hp => block3TwistMaskBatchCertificate0010 hp
          | Or.inr hp => block3TwistMaskBatchCertificate0011 hp
        | Or.inr hp => block3TwistMaskBatchCertificate0012 hp
      | Or.inr hp => block3TwistMaskBatchCertificate0013 hp
    | Or.inr hp => block3TwistMaskBatchCertificate0014 hp
  | Or.inr hp => block3TwistMaskBatchCertificate0015 hp

end Erdos848.GeneratedHybridPaperRootTwistCoverage
