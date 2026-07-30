import Erdos848.TailHybridSmallPrimeListChunk0
import Erdos848.TailHybridSmallPrimeListChunk1
import Erdos848.TailHybridSmallPrimeListChunk2
import Erdos848.TailHybridSmallPrimeListChunk3
import Erdos848.TailHybridSmallPrimeListChunk4
import Erdos848.TailHybridSmallPrimeListChunk5
import Erdos848.TailHybridSmallPrimeListChunk6
import Erdos848.TailHybridSmallPrimeListChunk7

namespace Erdos848

def paperSmallDiagonalPrimesFast : Finset Nat :=
  paperSmallDiagonalPrimesFastChunk0 ∪
  paperSmallDiagonalPrimesFastChunk1 ∪
  paperSmallDiagonalPrimesFastChunk2 ∪
  paperSmallDiagonalPrimesFastChunk3 ∪
  paperSmallDiagonalPrimesFastChunk4 ∪
  paperSmallDiagonalPrimesFastChunk5 ∪
  paperSmallDiagonalPrimesFastChunk6 ∪
  paperSmallDiagonalPrimesFastChunk7

theorem paperSmallDiagonalPrimesFast_eq :
    paperSmallDiagonalPrimesFast = paperSmallDiagonalPrimes := by
  rw [paperSmallDiagonalPrimesFast,
    paperSmallDiagonalPrimesFastChunk0_eq,
    paperSmallDiagonalPrimesFastChunk1_eq,
    paperSmallDiagonalPrimesFastChunk2_eq,
    paperSmallDiagonalPrimesFastChunk3_eq,
    paperSmallDiagonalPrimesFastChunk4_eq,
    paperSmallDiagonalPrimesFastChunk5_eq,
    paperSmallDiagonalPrimesFastChunk6_eq,
    paperSmallDiagonalPrimesFastChunk7_eq]
  ext p
  simp [paperSmallDiagonalPrimesSemanticChunk0,
    paperSmallDiagonalPrimesSemanticChunk1,
    paperSmallDiagonalPrimesSemanticChunk2,
    paperSmallDiagonalPrimesSemanticChunk3,
    paperSmallDiagonalPrimesSemanticChunk4,
    paperSmallDiagonalPrimesSemanticChunk5,
    paperSmallDiagonalPrimesSemanticChunk6,
    paperSmallDiagonalPrimesSemanticChunk7,
    paperSmallDiagonalPrimes]
  constructor
  · rintro (h | h | h | h | h | h | h | h)
    all_goals exact ⟨by omega, h.2⟩
  · rintro ⟨h1001, hprime⟩
    by_cases h125 : p < 125
    · exact Or.inl ⟨h125, hprime⟩
    by_cases h250 : p < 250
    · exact Or.inr (Or.inl ⟨⟨by omega, h250⟩, hprime⟩)
    by_cases h375 : p < 375
    · exact Or.inr (Or.inr (Or.inl
        ⟨⟨by omega, h375⟩, hprime⟩))
    by_cases h500 : p < 500
    · exact Or.inr (Or.inr (Or.inr (Or.inl
        ⟨⟨by omega, h500⟩, hprime⟩)))
    by_cases h625 : p < 625
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl
        ⟨⟨by omega, h625⟩, hprime⟩))))
    by_cases h750 : p < 750
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl
        ⟨⟨by omega, h750⟩, hprime⟩)))))
    by_cases h875 : p < 875
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr
        (Or.inl ⟨⟨by omega, h875⟩, hprime⟩))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr
        (Or.inr ⟨⟨by omega, h1001⟩, hprime⟩))))))

#print axioms paperSmallDiagonalPrimesFast_eq

end Erdos848
