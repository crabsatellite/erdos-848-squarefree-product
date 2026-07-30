import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0080
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0081
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0082
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0083
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0084
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0085
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0086
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0087
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0088
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0089
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0090
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0091
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0092
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0093
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0094
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0095
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0080
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0080) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0080 hp
  by_cases hp967 : p = 967
  · subst p
    simpa [block3SemanticBatchWords0080, block3QrMaskWords] using hlocal
  by_cases hp971 : p = 971
  · subst p
    simpa [block3SemanticBatchWords0080, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0080, semanticMaskPrimeGroupB3G0160, semanticMaskPrimeGroupB3G0161, hp967, hp971] at hp

theorem block3MaskBatchCertificate0081
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0081) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0081 hp
  by_cases hp977 : p = 977
  · subst p
    simpa [block3SemanticBatchWords0081, block3QrMaskWords] using hlocal
  by_cases hp983 : p = 983
  · subst p
    simpa [block3SemanticBatchWords0081, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0081, semanticMaskPrimeGroupB3G0162, semanticMaskPrimeGroupB3G0163, hp977, hp983] at hp

theorem block3MaskBatchCertificate0082
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0082) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0082 hp
  by_cases hp991 : p = 991
  · subst p
    simpa [block3SemanticBatchWords0082, block3QrMaskWords] using hlocal
  by_cases hp997 : p = 997
  · subst p
    simpa [block3SemanticBatchWords0082, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0082, semanticMaskPrimeGroupB3G0164, semanticMaskPrimeGroupB3G0165, hp991, hp997] at hp

theorem block3MaskBatchCertificate0083
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0083) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0083 hp
  by_cases hp1009 : p = 1009
  · subst p
    simpa [block3SemanticBatchWords0083, block3QrMaskWords] using hlocal
  by_cases hp1013 : p = 1013
  · subst p
    simpa [block3SemanticBatchWords0083, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0083, semanticMaskPrimeGroupB3G0166, semanticMaskPrimeGroupB3G0167, hp1009, hp1013] at hp

theorem block3MaskBatchCertificate0084
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0084) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0084 hp
  by_cases hp1019 : p = 1019
  · subst p
    simpa [block3SemanticBatchWords0084, block3QrMaskWords] using hlocal
  by_cases hp1021 : p = 1021
  · subst p
    simpa [block3SemanticBatchWords0084, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0084, semanticMaskPrimeGroupB3G0168, semanticMaskPrimeGroupB3G0169, hp1019, hp1021] at hp

theorem block3MaskBatchCertificate0085
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0085) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0085 hp
  by_cases hp1031 : p = 1031
  · subst p
    simpa [block3SemanticBatchWords0085, block3QrMaskWords] using hlocal
  by_cases hp1033 : p = 1033
  · subst p
    simpa [block3SemanticBatchWords0085, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0085, semanticMaskPrimeGroupB3G0170, semanticMaskPrimeGroupB3G0171, hp1031, hp1033] at hp

theorem block3MaskBatchCertificate0086
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0086) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0086 hp
  by_cases hp1039 : p = 1039
  · subst p
    simpa [block3SemanticBatchWords0086, block3QrMaskWords] using hlocal
  by_cases hp1049 : p = 1049
  · subst p
    simpa [block3SemanticBatchWords0086, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0086, semanticMaskPrimeGroupB3G0172, semanticMaskPrimeGroupB3G0173, hp1039, hp1049] at hp

theorem block3MaskBatchCertificate0087
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0087) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0087 hp
  by_cases hp1051 : p = 1051
  · subst p
    simpa [block3SemanticBatchWords0087, block3QrMaskWords] using hlocal
  by_cases hp1061 : p = 1061
  · subst p
    simpa [block3SemanticBatchWords0087, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0087, semanticMaskPrimeGroupB3G0174, semanticMaskPrimeGroupB3G0175, hp1051, hp1061] at hp

theorem block3MaskBatchCertificate0088
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0088) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0088 hp
  by_cases hp1063 : p = 1063
  · subst p
    simpa [block3SemanticBatchWords0088, block3QrMaskWords] using hlocal
  by_cases hp1069 : p = 1069
  · subst p
    simpa [block3SemanticBatchWords0088, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0088, semanticMaskPrimeGroupB3G0176, semanticMaskPrimeGroupB3G0177, hp1063, hp1069] at hp

theorem block3MaskBatchCertificate0089
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0089) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0089 hp
  by_cases hp1087 : p = 1087
  · subst p
    simpa [block3SemanticBatchWords0089, block3QrMaskWords] using hlocal
  by_cases hp1091 : p = 1091
  · subst p
    simpa [block3SemanticBatchWords0089, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0089, semanticMaskPrimeGroupB3G0178, semanticMaskPrimeGroupB3G0179, hp1087, hp1091] at hp

theorem block3MaskBatchCertificate0090
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0090) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0090 hp
  by_cases hp1093 : p = 1093
  · subst p
    simpa [block3SemanticBatchWords0090, block3QrMaskWords] using hlocal
  by_cases hp1097 : p = 1097
  · subst p
    simpa [block3SemanticBatchWords0090, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0090, semanticMaskPrimeGroupB3G0180, semanticMaskPrimeGroupB3G0181, hp1093, hp1097] at hp

theorem block3MaskBatchCertificate0091
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0091) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0091 hp
  by_cases hp1103 : p = 1103
  · subst p
    simpa [block3SemanticBatchWords0091, block3QrMaskWords] using hlocal
  by_cases hp1109 : p = 1109
  · subst p
    simpa [block3SemanticBatchWords0091, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0091, semanticMaskPrimeGroupB3G0182, semanticMaskPrimeGroupB3G0183, hp1103, hp1109] at hp

theorem block3MaskBatchCertificate0092
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0092) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0092 hp
  by_cases hp1117 : p = 1117
  · subst p
    simpa [block3SemanticBatchWords0092, block3QrMaskWords] using hlocal
  by_cases hp1123 : p = 1123
  · subst p
    simpa [block3SemanticBatchWords0092, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0092, semanticMaskPrimeGroupB3G0184, semanticMaskPrimeGroupB3G0185, hp1117, hp1123] at hp

theorem block3MaskBatchCertificate0093
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0093) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0093 hp
  by_cases hp1129 : p = 1129
  · subst p
    simpa [block3SemanticBatchWords0093, block3QrMaskWords] using hlocal
  by_cases hp1151 : p = 1151
  · subst p
    simpa [block3SemanticBatchWords0093, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0093, semanticMaskPrimeGroupB3G0186, semanticMaskPrimeGroupB3G0187, hp1129, hp1151] at hp

theorem block3MaskBatchCertificate0094
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0094) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0094 hp
  by_cases hp1153 : p = 1153
  · subst p
    simpa [block3SemanticBatchWords0094, block3QrMaskWords] using hlocal
  by_cases hp1163 : p = 1163
  · subst p
    simpa [block3SemanticBatchWords0094, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0094, semanticMaskPrimeGroupB3G0188, semanticMaskPrimeGroupB3G0189, hp1153, hp1163] at hp

theorem block3MaskBatchCertificate0095
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0095) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0095 hp
  by_cases hp1171 : p = 1171
  · subst p
    simpa [block3SemanticBatchWords0095, block3QrMaskWords] using hlocal
  by_cases hp1181 : p = 1181
  · subst p
    simpa [block3SemanticBatchWords0095, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0095, semanticMaskPrimeGroupB3G0190, semanticMaskPrimeGroupB3G0191, hp1171, hp1181] at hp

def block3SemanticChunkPrimes0005 : List Nat :=
    block3SemanticBatchPrimes0080 ++
    block3SemanticBatchPrimes0081 ++
    block3SemanticBatchPrimes0082 ++
    block3SemanticBatchPrimes0083 ++
    block3SemanticBatchPrimes0084 ++
    block3SemanticBatchPrimes0085 ++
    block3SemanticBatchPrimes0086 ++
    block3SemanticBatchPrimes0087 ++
    block3SemanticBatchPrimes0088 ++
    block3SemanticBatchPrimes0089 ++
    block3SemanticBatchPrimes0090 ++
    block3SemanticBatchPrimes0091 ++
    block3SemanticBatchPrimes0092 ++
    block3SemanticBatchPrimes0093 ++
    block3SemanticBatchPrimes0094 ++
    block3SemanticBatchPrimes0095

theorem block3MaskChunkCertificate0005
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0005) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0005, List.mem_append] at hp
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
                                block3MaskBatchCertificate0080 hp
                              | Or.inr hp => block3MaskBatchCertificate0081 hp
                            | Or.inr hp => block3MaskBatchCertificate0082 hp
                          | Or.inr hp => block3MaskBatchCertificate0083 hp
                        | Or.inr hp => block3MaskBatchCertificate0084 hp
                      | Or.inr hp => block3MaskBatchCertificate0085 hp
                    | Or.inr hp => block3MaskBatchCertificate0086 hp
                  | Or.inr hp => block3MaskBatchCertificate0087 hp
                | Or.inr hp => block3MaskBatchCertificate0088 hp
              | Or.inr hp => block3MaskBatchCertificate0089 hp
            | Or.inr hp => block3MaskBatchCertificate0090 hp
          | Or.inr hp => block3MaskBatchCertificate0091 hp
        | Or.inr hp => block3MaskBatchCertificate0092 hp
      | Or.inr hp => block3MaskBatchCertificate0093 hp
    | Or.inr hp => block3MaskBatchCertificate0094 hp
  | Or.inr hp => block3MaskBatchCertificate0095 hp

end Erdos848.GeneratedHybridPaperRootCoverage
