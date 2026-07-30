import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0048
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0049
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0050
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0051
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0052
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0053
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0054
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0055
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0056
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0057
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0058
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0059
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0060
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0061
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0062
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticBatch0063
import Erdos848.GeneratedHybridPaperRootCoverage.Block3Data

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem block3MaskBatchCertificate0048
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0048) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0048 hp
  by_cases hp523 : p = 523
  · subst p
    simpa [block3SemanticBatchWords0048, block3QrMaskWords] using hlocal
  by_cases hp541 : p = 541
  · subst p
    simpa [block3SemanticBatchWords0048, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0048, semanticMaskPrimeGroupB3G0096, semanticMaskPrimeGroupB3G0097, hp523, hp541] at hp

theorem block3MaskBatchCertificate0049
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0049) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0049 hp
  by_cases hp547 : p = 547
  · subst p
    simpa [block3SemanticBatchWords0049, block3QrMaskWords] using hlocal
  by_cases hp557 : p = 557
  · subst p
    simpa [block3SemanticBatchWords0049, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0049, semanticMaskPrimeGroupB3G0098, semanticMaskPrimeGroupB3G0099, hp547, hp557] at hp

theorem block3MaskBatchCertificate0050
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0050) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0050 hp
  by_cases hp563 : p = 563
  · subst p
    simpa [block3SemanticBatchWords0050, block3QrMaskWords] using hlocal
  by_cases hp569 : p = 569
  · subst p
    simpa [block3SemanticBatchWords0050, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0050, semanticMaskPrimeGroupB3G0100, semanticMaskPrimeGroupB3G0101, hp563, hp569] at hp

theorem block3MaskBatchCertificate0051
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0051) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0051 hp
  by_cases hp571 : p = 571
  · subst p
    simpa [block3SemanticBatchWords0051, block3QrMaskWords] using hlocal
  by_cases hp577 : p = 577
  · subst p
    simpa [block3SemanticBatchWords0051, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0051, semanticMaskPrimeGroupB3G0102, semanticMaskPrimeGroupB3G0103, hp571, hp577] at hp

theorem block3MaskBatchCertificate0052
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0052) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0052 hp
  by_cases hp587 : p = 587
  · subst p
    simpa [block3SemanticBatchWords0052, block3QrMaskWords] using hlocal
  by_cases hp593 : p = 593
  · subst p
    simpa [block3SemanticBatchWords0052, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0052, semanticMaskPrimeGroupB3G0104, semanticMaskPrimeGroupB3G0105, hp587, hp593] at hp

theorem block3MaskBatchCertificate0053
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0053) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0053 hp
  by_cases hp599 : p = 599
  · subst p
    simpa [block3SemanticBatchWords0053, block3QrMaskWords] using hlocal
  by_cases hp601 : p = 601
  · subst p
    simpa [block3SemanticBatchWords0053, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0053, semanticMaskPrimeGroupB3G0106, semanticMaskPrimeGroupB3G0107, hp599, hp601] at hp

theorem block3MaskBatchCertificate0054
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0054) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0054 hp
  by_cases hp607 : p = 607
  · subst p
    simpa [block3SemanticBatchWords0054, block3QrMaskWords] using hlocal
  by_cases hp613 : p = 613
  · subst p
    simpa [block3SemanticBatchWords0054, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0054, semanticMaskPrimeGroupB3G0108, semanticMaskPrimeGroupB3G0109, hp607, hp613] at hp

theorem block3MaskBatchCertificate0055
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0055) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0055 hp
  by_cases hp617 : p = 617
  · subst p
    simpa [block3SemanticBatchWords0055, block3QrMaskWords] using hlocal
  by_cases hp619 : p = 619
  · subst p
    simpa [block3SemanticBatchWords0055, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0055, semanticMaskPrimeGroupB3G0110, semanticMaskPrimeGroupB3G0111, hp617, hp619] at hp

theorem block3MaskBatchCertificate0056
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0056) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0056 hp
  by_cases hp631 : p = 631
  · subst p
    simpa [block3SemanticBatchWords0056, block3QrMaskWords] using hlocal
  by_cases hp641 : p = 641
  · subst p
    simpa [block3SemanticBatchWords0056, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0056, semanticMaskPrimeGroupB3G0112, semanticMaskPrimeGroupB3G0113, hp631, hp641] at hp

theorem block3MaskBatchCertificate0057
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0057) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0057 hp
  by_cases hp643 : p = 643
  · subst p
    simpa [block3SemanticBatchWords0057, block3QrMaskWords] using hlocal
  by_cases hp647 : p = 647
  · subst p
    simpa [block3SemanticBatchWords0057, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0057, semanticMaskPrimeGroupB3G0114, semanticMaskPrimeGroupB3G0115, hp643, hp647] at hp

theorem block3MaskBatchCertificate0058
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0058) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0058 hp
  by_cases hp653 : p = 653
  · subst p
    simpa [block3SemanticBatchWords0058, block3QrMaskWords] using hlocal
  by_cases hp659 : p = 659
  · subst p
    simpa [block3SemanticBatchWords0058, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0058, semanticMaskPrimeGroupB3G0116, semanticMaskPrimeGroupB3G0117, hp653, hp659] at hp

theorem block3MaskBatchCertificate0059
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0059) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0059 hp
  by_cases hp661 : p = 661
  · subst p
    simpa [block3SemanticBatchWords0059, block3QrMaskWords] using hlocal
  by_cases hp673 : p = 673
  · subst p
    simpa [block3SemanticBatchWords0059, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0059, semanticMaskPrimeGroupB3G0118, semanticMaskPrimeGroupB3G0119, hp661, hp673] at hp

theorem block3MaskBatchCertificate0060
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0060) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0060 hp
  by_cases hp677 : p = 677
  · subst p
    simpa [block3SemanticBatchWords0060, block3QrMaskWords] using hlocal
  by_cases hp683 : p = 683
  · subst p
    simpa [block3SemanticBatchWords0060, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0060, semanticMaskPrimeGroupB3G0120, semanticMaskPrimeGroupB3G0121, hp677, hp683] at hp

theorem block3MaskBatchCertificate0061
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0061) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0061 hp
  by_cases hp691 : p = 691
  · subst p
    simpa [block3SemanticBatchWords0061, block3QrMaskWords] using hlocal
  by_cases hp701 : p = 701
  · subst p
    simpa [block3SemanticBatchWords0061, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0061, semanticMaskPrimeGroupB3G0122, semanticMaskPrimeGroupB3G0123, hp691, hp701] at hp

theorem block3MaskBatchCertificate0062
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0062) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0062 hp
  by_cases hp709 : p = 709
  · subst p
    simpa [block3SemanticBatchWords0062, block3QrMaskWords] using hlocal
  by_cases hp719 : p = 719
  · subst p
    simpa [block3SemanticBatchWords0062, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0062, semanticMaskPrimeGroupB3G0124, semanticMaskPrimeGroupB3G0125, hp709, hp719] at hp

theorem block3MaskBatchCertificate0063
    {p : Nat} (hp : p ∈ block3SemanticBatchPrimes0063) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  have hlocal := block3MaskBatchLocalCertificate0063 hp
  by_cases hp727 : p = 727
  · subst p
    simpa [block3SemanticBatchWords0063, block3QrMaskWords] using hlocal
  by_cases hp733 : p = 733
  · subst p
    simpa [block3SemanticBatchWords0063, block3QrMaskWords] using hlocal
  · simp [block3SemanticBatchPrimes0063, semanticMaskPrimeGroupB3G0126, semanticMaskPrimeGroupB3G0127, hp727, hp733] at hp

def block3SemanticChunkPrimes0003 : List Nat :=
    block3SemanticBatchPrimes0048 ++
    block3SemanticBatchPrimes0049 ++
    block3SemanticBatchPrimes0050 ++
    block3SemanticBatchPrimes0051 ++
    block3SemanticBatchPrimes0052 ++
    block3SemanticBatchPrimes0053 ++
    block3SemanticBatchPrimes0054 ++
    block3SemanticBatchPrimes0055 ++
    block3SemanticBatchPrimes0056 ++
    block3SemanticBatchPrimes0057 ++
    block3SemanticBatchPrimes0058 ++
    block3SemanticBatchPrimes0059 ++
    block3SemanticBatchPrimes0060 ++
    block3SemanticBatchPrimes0061 ++
    block3SemanticBatchPrimes0062 ++
    block3SemanticBatchPrimes0063

theorem block3MaskChunkCertificate0003
    {p : Nat} (hp : p ∈ block3SemanticChunkPrimes0003) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (block3QrMaskWords p) := by
  simp only [block3SemanticChunkPrimes0003, List.mem_append] at hp
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
                                block3MaskBatchCertificate0048 hp
                              | Or.inr hp => block3MaskBatchCertificate0049 hp
                            | Or.inr hp => block3MaskBatchCertificate0050 hp
                          | Or.inr hp => block3MaskBatchCertificate0051 hp
                        | Or.inr hp => block3MaskBatchCertificate0052 hp
                      | Or.inr hp => block3MaskBatchCertificate0053 hp
                    | Or.inr hp => block3MaskBatchCertificate0054 hp
                  | Or.inr hp => block3MaskBatchCertificate0055 hp
                | Or.inr hp => block3MaskBatchCertificate0056 hp
              | Or.inr hp => block3MaskBatchCertificate0057 hp
            | Or.inr hp => block3MaskBatchCertificate0058 hp
          | Or.inr hp => block3MaskBatchCertificate0059 hp
        | Or.inr hp => block3MaskBatchCertificate0060 hp
      | Or.inr hp => block3MaskBatchCertificate0061 hp
    | Or.inr hp => block3MaskBatchCertificate0062 hp
  | Or.inr hp => block3MaskBatchCertificate0063 hp

end Erdos848.GeneratedHybridPaperRootCoverage
