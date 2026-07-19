import Erdos848.TailGlobalMixedSupportCheckerCore


namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k0PrefixGroup0000 : List (List ℕ × ℕ) :=
  [([], 3)]

def k0PrefixGroup0000NormalLookup (p : ℕ) : List ℕ :=
  []

def k0PrefixGroup0000TwistLookup (p : ℕ) : List ℕ :=
  []

def k0PrefixGroup0000Passes (row : List ℕ × ℕ) : Bool :=
  Erdos848.globalMixedCorePrefixPasses
    k0PrefixGroup0000NormalLookup
    k0PrefixGroup0000TwistLookup 0
    (max 5_000_000 (row.1.prod * row.2)) row.1

theorem k0PrefixGroup0000_passes :
    k0PrefixGroup0000.all
      k0PrefixGroup0000Passes = true := by
  rfl

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
