import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0000
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0001
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0002
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0003
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0004
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0005
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0006
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0007
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0008
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0009
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0010
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0011
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0012
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0013
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0014
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0015
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0000
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0000) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0000 hp
  by_cases hp3 : p = 3
  · subst p
    simpa [block3SemanticBatchWords0000, block3QrMaskWords] using hlocal
  by_cases hp7 : p = 7
  · subst p
    simpa [block3SemanticBatchWords0000, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0000, semanticMaskPrimeGroupB3G0000, semanticMaskPrimeGroupB3G0001, hp3, hp7] at hp

theorem block3MaskBatchCertificate0001
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0001) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0001 hp
  by_cases hp11 : p = 11
  · subst p
    simpa [block3SemanticBatchWords0001, block3QrMaskWords] using hlocal
  by_cases hp13 : p = 13
  · subst p
    simpa [block3SemanticBatchWords0001, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0001, semanticMaskPrimeGroupB3G0002, semanticMaskPrimeGroupB3G0003, hp11, hp13] at hp

theorem block3MaskBatchCertificate0002
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0002) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0002 hp
  by_cases hp17 : p = 17
  · subst p
    simpa [block3SemanticBatchWords0002, block3QrMaskWords] using hlocal
  by_cases hp19 : p = 19
  · subst p
    simpa [block3SemanticBatchWords0002, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0002, semanticMaskPrimeGroupB3G0004, semanticMaskPrimeGroupB3G0005, hp17, hp19] at hp

theorem block3MaskBatchCertificate0003
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0003) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0003 hp
  by_cases hp23 : p = 23
  · subst p
    simpa [block3SemanticBatchWords0003, block3QrMaskWords] using hlocal
  by_cases hp29 : p = 29
  · subst p
    simpa [block3SemanticBatchWords0003, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0003, semanticMaskPrimeGroupB3G0006, semanticMaskPrimeGroupB3G0007, hp23, hp29] at hp

theorem block3MaskBatchCertificate0004
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0004) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0004 hp
  by_cases hp31 : p = 31
  · subst p
    simpa [block3SemanticBatchWords0004, block3QrMaskWords] using hlocal
  by_cases hp37 : p = 37
  · subst p
    simpa [block3SemanticBatchWords0004, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0004, semanticMaskPrimeGroupB3G0008, semanticMaskPrimeGroupB3G0009, hp31, hp37] at hp

theorem block3MaskBatchCertificate0005
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0005) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0005 hp
  by_cases hp41 : p = 41
  · subst p
    simpa [block3SemanticBatchWords0005, block3QrMaskWords] using hlocal
  by_cases hp43 : p = 43
  · subst p
    simpa [block3SemanticBatchWords0005, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0005, semanticMaskPrimeGroupB3G0010, semanticMaskPrimeGroupB3G0011, hp41, hp43] at hp

theorem block3MaskBatchCertificate0006
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0006) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0006 hp
  by_cases hp47 : p = 47
  · subst p
    simpa [block3SemanticBatchWords0006, block3QrMaskWords] using hlocal
  by_cases hp53 : p = 53
  · subst p
    simpa [block3SemanticBatchWords0006, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0006, semanticMaskPrimeGroupB3G0012, semanticMaskPrimeGroupB3G0013, hp47, hp53] at hp

theorem block3MaskBatchCertificate0007
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0007) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0007 hp
  by_cases hp59 : p = 59
  · subst p
    simpa [block3SemanticBatchWords0007, block3QrMaskWords] using hlocal
  by_cases hp61 : p = 61
  · subst p
    simpa [block3SemanticBatchWords0007, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0007, semanticMaskPrimeGroupB3G0014, semanticMaskPrimeGroupB3G0015, hp59, hp61] at hp

theorem block3MaskBatchCertificate0008
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0008) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0008 hp
  by_cases hp67 : p = 67
  · subst p
    simpa [block3SemanticBatchWords0008, block3QrMaskWords] using hlocal
  by_cases hp71 : p = 71
  · subst p
    simpa [block3SemanticBatchWords0008, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0008, semanticMaskPrimeGroupB3G0016, semanticMaskPrimeGroupB3G0017, hp67, hp71] at hp

theorem block3MaskBatchCertificate0009
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0009) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0009 hp
  by_cases hp73 : p = 73
  · subst p
    simpa [block3SemanticBatchWords0009, block3QrMaskWords] using hlocal
  by_cases hp79 : p = 79
  · subst p
    simpa [block3SemanticBatchWords0009, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0009, semanticMaskPrimeGroupB3G0018, semanticMaskPrimeGroupB3G0019, hp73, hp79] at hp

theorem block3MaskBatchCertificate0010
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0010) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0010 hp
  by_cases hp83 : p = 83
  · subst p
    simpa [block3SemanticBatchWords0010, block3QrMaskWords] using hlocal
  by_cases hp89 : p = 89
  · subst p
    simpa [block3SemanticBatchWords0010, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0010, semanticMaskPrimeGroupB3G0020, semanticMaskPrimeGroupB3G0021, hp83, hp89] at hp

theorem block3MaskBatchCertificate0011
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0011) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0011 hp
  by_cases hp97 : p = 97
  · subst p
    simpa [block3SemanticBatchWords0011, block3QrMaskWords] using hlocal
  by_cases hp101 : p = 101
  · subst p
    simpa [block3SemanticBatchWords0011, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0011, semanticMaskPrimeGroupB3G0022, semanticMaskPrimeGroupB3G0023, hp97, hp101] at hp

theorem block3MaskBatchCertificate0012
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0012) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0012 hp
  by_cases hp103 : p = 103
  · subst p
    simpa [block3SemanticBatchWords0012, block3QrMaskWords] using hlocal
  by_cases hp107 : p = 107
  · subst p
    simpa [block3SemanticBatchWords0012, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0012, semanticMaskPrimeGroupB3G0024, semanticMaskPrimeGroupB3G0025, hp103, hp107] at hp

theorem block3MaskBatchCertificate0013
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0013) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0013 hp
  by_cases hp109 : p = 109
  · subst p
    simpa [block3SemanticBatchWords0013, block3QrMaskWords] using hlocal
  by_cases hp113 : p = 113
  · subst p
    simpa [block3SemanticBatchWords0013, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0013, semanticMaskPrimeGroupB3G0026, semanticMaskPrimeGroupB3G0027, hp109, hp113] at hp

theorem block3MaskBatchCertificate0014
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0014) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0014 hp
  by_cases hp127 : p = 127
  · subst p
    simpa [block3SemanticBatchWords0014, block3QrMaskWords] using hlocal
  by_cases hp131 : p = 131
  · subst p
    simpa [block3SemanticBatchWords0014, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0014, semanticMaskPrimeGroupB3G0028, semanticMaskPrimeGroupB3G0029, hp127, hp131] at hp

theorem block3MaskBatchCertificate0015
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0015) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0015 hp
  by_cases hp137 : p = 137
  · subst p
    simpa [block3SemanticBatchWords0015, block3QrMaskWords] using hlocal
  by_cases hp139 : p = 139
  · subst p
    simpa [block3SemanticBatchWords0015, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0015, semanticMaskPrimeGroupB3G0030, semanticMaskPrimeGroupB3G0031, hp137, hp139] at hp

def block3SemanticChunkPrimes0000 : List Nat :=
    block3SemanticBatchPrimes0000 ++
    block3SemanticBatchPrimes0001 ++
    block3SemanticBatchPrimes0002 ++
    block3SemanticBatchPrimes0003 ++
    block3SemanticBatchPrimes0004 ++
    block3SemanticBatchPrimes0005 ++
    block3SemanticBatchPrimes0006 ++
    block3SemanticBatchPrimes0007 ++
    block3SemanticBatchPrimes0008 ++
    block3SemanticBatchPrimes0009 ++
    block3SemanticBatchPrimes0010 ++
    block3SemanticBatchPrimes0011 ++
    block3SemanticBatchPrimes0012 ++
    block3SemanticBatchPrimes0013 ++
    block3SemanticBatchPrimes0014 ++
    block3SemanticBatchPrimes0015

theorem block3MaskChunkCertificate0000
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0000) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0000, List.mem_append] at hp
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
                                block3MaskBatchCertificate0000 hp
                              | Or.inr hp => block3MaskBatchCertificate0001 hp
                            | Or.inr hp => block3MaskBatchCertificate0002 hp
                          | Or.inr hp => block3MaskBatchCertificate0003 hp
                        | Or.inr hp => block3MaskBatchCertificate0004 hp
                      | Or.inr hp => block3MaskBatchCertificate0005 hp
                    | Or.inr hp => block3MaskBatchCertificate0006 hp
                  | Or.inr hp => block3MaskBatchCertificate0007 hp
                | Or.inr hp => block3MaskBatchCertificate0008 hp
              | Or.inr hp => block3MaskBatchCertificate0009 hp
            | Or.inr hp => block3MaskBatchCertificate0010 hp
          | Or.inr hp => block3MaskBatchCertificate0011 hp
        | Or.inr hp => block3MaskBatchCertificate0012 hp
      | Or.inr hp => block3MaskBatchCertificate0013 hp
    | Or.inr hp => block3MaskBatchCertificate0014 hp
  | Or.inr hp => block3MaskBatchCertificate0015 hp

end Erdos848.GeneratedHybridPaperRootCoverage
