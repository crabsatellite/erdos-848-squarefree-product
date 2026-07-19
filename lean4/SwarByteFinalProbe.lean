import «SwarByteProbe»

namespace Erdos848

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem pack8_counts_mul_high
    (c7 c6 c5 c4 c3 c2 c1 c0 : BitVec 8)
    (h7 : c7.toNat ≤ 8) (h6 : c6.toNat ≤ 8)
    (h5 : c5.toNat ≤ 8) (h4 : c4.toNat ≤ 8)
    (h3 : c3.toNat ≤ 8) (h2 : c2.toNat ≤ 8)
    (h1 : c1.toNat ≤ 8) (h0 : c0.toNat ≤ 8) :
    ((pack8 c7 c6 c5 c4 c3 c2 c1 c0 * repeatOne) /
        BitVec.twoPow 64 56).toNat =
      c7.toNat + c6.toNat + c5.toNat + c4.toNat +
        c3.toNat + c2.toNat + c1.toNat + c0.toNat := by
  simp only [BitVec.toNat_udiv, BitVec.toNat_mul,
    BitVec.toNat_twoPow_eq_ite, show 56 < 64 by decide, ↓reduceIte]
  rw [pack8_toNat]
  rw [repeatOne_toNat]
  exact byteConvolution_mul_high_pow _ _ _ _ _ _ _ _
    h7 h6 h5 h4 h3 h2 h1 h0

#print axioms pack8_counts_mul_high

end Erdos848
