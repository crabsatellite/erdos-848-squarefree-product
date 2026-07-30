import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0016
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0017
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0018
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0019
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0020
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0021
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0022
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0023
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0024
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0025
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0026
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0027
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0028
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0029
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0030
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0031
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0016
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0016) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0016 hp
  by_cases hp149 : p = 149
  · subst p
    simpa [block3SemanticBatchWords0016, block3QrMaskWords] using hlocal
  by_cases hp151 : p = 151
  · subst p
    simpa [block3SemanticBatchWords0016, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0016, semanticMaskPrimeGroupB3G0032, semanticMaskPrimeGroupB3G0033, hp149, hp151] at hp

theorem block3MaskBatchCertificate0017
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0017) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0017 hp
  by_cases hp157 : p = 157
  · subst p
    simpa [block3SemanticBatchWords0017, block3QrMaskWords] using hlocal
  by_cases hp163 : p = 163
  · subst p
    simpa [block3SemanticBatchWords0017, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0017, semanticMaskPrimeGroupB3G0034, semanticMaskPrimeGroupB3G0035, hp157, hp163] at hp

theorem block3MaskBatchCertificate0018
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0018) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0018 hp
  by_cases hp167 : p = 167
  · subst p
    simpa [block3SemanticBatchWords0018, block3QrMaskWords] using hlocal
  by_cases hp173 : p = 173
  · subst p
    simpa [block3SemanticBatchWords0018, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0018, semanticMaskPrimeGroupB3G0036, semanticMaskPrimeGroupB3G0037, hp167, hp173] at hp

theorem block3MaskBatchCertificate0019
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0019) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0019 hp
  by_cases hp179 : p = 179
  · subst p
    simpa [block3SemanticBatchWords0019, block3QrMaskWords] using hlocal
  by_cases hp181 : p = 181
  · subst p
    simpa [block3SemanticBatchWords0019, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0019, semanticMaskPrimeGroupB3G0038, semanticMaskPrimeGroupB3G0039, hp179, hp181] at hp

theorem block3MaskBatchCertificate0020
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0020) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0020 hp
  by_cases hp191 : p = 191
  · subst p
    simpa [block3SemanticBatchWords0020, block3QrMaskWords] using hlocal
  by_cases hp193 : p = 193
  · subst p
    simpa [block3SemanticBatchWords0020, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0020, semanticMaskPrimeGroupB3G0040, semanticMaskPrimeGroupB3G0041, hp191, hp193] at hp

theorem block3MaskBatchCertificate0021
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0021) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0021 hp
  by_cases hp197 : p = 197
  · subst p
    simpa [block3SemanticBatchWords0021, block3QrMaskWords] using hlocal
  by_cases hp199 : p = 199
  · subst p
    simpa [block3SemanticBatchWords0021, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0021, semanticMaskPrimeGroupB3G0042, semanticMaskPrimeGroupB3G0043, hp197, hp199] at hp

theorem block3MaskBatchCertificate0022
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0022) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0022 hp
  by_cases hp211 : p = 211
  · subst p
    simpa [block3SemanticBatchWords0022, block3QrMaskWords] using hlocal
  by_cases hp223 : p = 223
  · subst p
    simpa [block3SemanticBatchWords0022, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0022, semanticMaskPrimeGroupB3G0044, semanticMaskPrimeGroupB3G0045, hp211, hp223] at hp

theorem block3MaskBatchCertificate0023
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0023) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0023 hp
  by_cases hp227 : p = 227
  · subst p
    simpa [block3SemanticBatchWords0023, block3QrMaskWords] using hlocal
  by_cases hp229 : p = 229
  · subst p
    simpa [block3SemanticBatchWords0023, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0023, semanticMaskPrimeGroupB3G0046, semanticMaskPrimeGroupB3G0047, hp227, hp229] at hp

theorem block3MaskBatchCertificate0024
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0024) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0024 hp
  by_cases hp233 : p = 233
  · subst p
    simpa [block3SemanticBatchWords0024, block3QrMaskWords] using hlocal
  by_cases hp239 : p = 239
  · subst p
    simpa [block3SemanticBatchWords0024, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0024, semanticMaskPrimeGroupB3G0048, semanticMaskPrimeGroupB3G0049, hp233, hp239] at hp

theorem block3MaskBatchCertificate0025
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0025) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0025 hp
  by_cases hp241 : p = 241
  · subst p
    simpa [block3SemanticBatchWords0025, block3QrMaskWords] using hlocal
  by_cases hp251 : p = 251
  · subst p
    simpa [block3SemanticBatchWords0025, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0025, semanticMaskPrimeGroupB3G0050, semanticMaskPrimeGroupB3G0051, hp241, hp251] at hp

theorem block3MaskBatchCertificate0026
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0026) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0026 hp
  by_cases hp257 : p = 257
  · subst p
    simpa [block3SemanticBatchWords0026, block3QrMaskWords] using hlocal
  by_cases hp263 : p = 263
  · subst p
    simpa [block3SemanticBatchWords0026, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0026, semanticMaskPrimeGroupB3G0052, semanticMaskPrimeGroupB3G0053, hp257, hp263] at hp

theorem block3MaskBatchCertificate0027
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0027) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0027 hp
  by_cases hp269 : p = 269
  · subst p
    simpa [block3SemanticBatchWords0027, block3QrMaskWords] using hlocal
  by_cases hp271 : p = 271
  · subst p
    simpa [block3SemanticBatchWords0027, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0027, semanticMaskPrimeGroupB3G0054, semanticMaskPrimeGroupB3G0055, hp269, hp271] at hp

theorem block3MaskBatchCertificate0028
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0028) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0028 hp
  by_cases hp277 : p = 277
  · subst p
    simpa [block3SemanticBatchWords0028, block3QrMaskWords] using hlocal
  by_cases hp281 : p = 281
  · subst p
    simpa [block3SemanticBatchWords0028, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0028, semanticMaskPrimeGroupB3G0056, semanticMaskPrimeGroupB3G0057, hp277, hp281] at hp

theorem block3MaskBatchCertificate0029
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0029) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0029 hp
  by_cases hp283 : p = 283
  · subst p
    simpa [block3SemanticBatchWords0029, block3QrMaskWords] using hlocal
  by_cases hp293 : p = 293
  · subst p
    simpa [block3SemanticBatchWords0029, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0029, semanticMaskPrimeGroupB3G0058, semanticMaskPrimeGroupB3G0059, hp283, hp293] at hp

theorem block3MaskBatchCertificate0030
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0030) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0030 hp
  by_cases hp307 : p = 307
  · subst p
    simpa [block3SemanticBatchWords0030, block3QrMaskWords] using hlocal
  by_cases hp311 : p = 311
  · subst p
    simpa [block3SemanticBatchWords0030, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0030, semanticMaskPrimeGroupB3G0060, semanticMaskPrimeGroupB3G0061, hp307, hp311] at hp

theorem block3MaskBatchCertificate0031
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0031) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0031 hp
  by_cases hp313 : p = 313
  · subst p
    simpa [block3SemanticBatchWords0031, block3QrMaskWords] using hlocal
  by_cases hp317 : p = 317
  · subst p
    simpa [block3SemanticBatchWords0031, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0031, semanticMaskPrimeGroupB3G0062, semanticMaskPrimeGroupB3G0063, hp313, hp317] at hp

def block3SemanticChunkPrimes0001 : List Nat :=
    block3SemanticBatchPrimes0016 ++
    block3SemanticBatchPrimes0017 ++
    block3SemanticBatchPrimes0018 ++
    block3SemanticBatchPrimes0019 ++
    block3SemanticBatchPrimes0020 ++
    block3SemanticBatchPrimes0021 ++
    block3SemanticBatchPrimes0022 ++
    block3SemanticBatchPrimes0023 ++
    block3SemanticBatchPrimes0024 ++
    block3SemanticBatchPrimes0025 ++
    block3SemanticBatchPrimes0026 ++
    block3SemanticBatchPrimes0027 ++
    block3SemanticBatchPrimes0028 ++
    block3SemanticBatchPrimes0029 ++
    block3SemanticBatchPrimes0030 ++
    block3SemanticBatchPrimes0031

theorem block3MaskChunkCertificate0001
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0001) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0001, List.mem_append] at hp
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
                                block3MaskBatchCertificate0016 hp
                              | Or.inr hp => block3MaskBatchCertificate0017 hp
                            | Or.inr hp => block3MaskBatchCertificate0018 hp
                          | Or.inr hp => block3MaskBatchCertificate0019 hp
                        | Or.inr hp => block3MaskBatchCertificate0020 hp
                      | Or.inr hp => block3MaskBatchCertificate0021 hp
                    | Or.inr hp => block3MaskBatchCertificate0022 hp
                  | Or.inr hp => block3MaskBatchCertificate0023 hp
                | Or.inr hp => block3MaskBatchCertificate0024 hp
              | Or.inr hp => block3MaskBatchCertificate0025 hp
            | Or.inr hp => block3MaskBatchCertificate0026 hp
          | Or.inr hp => block3MaskBatchCertificate0027 hp
        | Or.inr hp => block3MaskBatchCertificate0028 hp
      | Or.inr hp => block3MaskBatchCertificate0029 hp
    | Or.inr hp => block3MaskBatchCertificate0030 hp
  | Or.inr hp => block3MaskBatchCertificate0031 hp

end Erdos848.GeneratedHybridPaperRootCoverage
