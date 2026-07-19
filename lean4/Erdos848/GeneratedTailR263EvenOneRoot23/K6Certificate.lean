import Erdos848.TailR263EvenOneRoot23Checker
import Erdos848.TailSupportProfileChecker

namespace Erdos848.GeneratedTailR263EvenOneRoot23

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k6PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17],
     [3, 7, 11, 13, 19],
     [3, 7, 11, 13, 23],
     [3, 7, 11, 13, 29],
     [3, 7, 11, 13, 31],
     [3, 7, 11, 13, 37],
     [3, 7, 11, 13, 41],
     [3, 7, 11, 13, 43],
     [3, 7, 11, 13, 47],
     [3, 7, 11, 13, 53],
     [3, 7, 11, 17, 19],
     [3, 7, 11, 17, 23],
     [3, 7, 11, 17, 29],
     [3, 7, 11, 17, 31],
     [3, 7, 11, 17, 37],
     [3, 7, 11, 17, 41]]

theorem k6PrefixGroup0000_root23_passes :
    k6PrefixGroup0000.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  decide

def k6PrefixGroup0001 : List (List ℕ) :=
  [[3, 7, 11, 17, 43],
     [3, 7, 11, 17, 47],
     [3, 7, 11, 19, 23],
     [3, 7, 11, 19, 29],
     [3, 7, 11, 19, 31],
     [3, 7, 11, 19, 37],
     [3, 7, 11, 19, 41],
     [3, 7, 11, 19, 43],
     [3, 7, 11, 23, 29],
     [3, 7, 11, 23, 31],
     [3, 7, 11, 23, 37],
     [3, 7, 11, 23, 41],
     [3, 7, 11, 29, 31],
     [3, 7, 13, 17, 19],
     [3, 7, 13, 17, 23],
     [3, 7, 13, 17, 29]]

theorem k6PrefixGroup0001_root23_passes :
    k6PrefixGroup0001.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  decide

def k6PrefixGroup0002 : List (List ℕ) :=
  [[3, 7, 13, 17, 31],
     [3, 7, 13, 17, 37],
     [3, 7, 13, 17, 41],
     [3, 7, 13, 17, 43],
     [3, 7, 13, 19, 23],
     [3, 7, 13, 19, 29],
     [3, 7, 13, 19, 31],
     [3, 7, 13, 19, 37],
     [3, 7, 13, 19, 41],
     [3, 7, 13, 23, 29],
     [3, 7, 13, 23, 31],
     [3, 7, 13, 23, 37],
     [3, 7, 13, 29, 31],
     [3, 7, 17, 19, 23],
     [3, 7, 17, 19, 29],
     [3, 7, 17, 19, 31]]

theorem k6PrefixGroup0002_root23_passes :
    k6PrefixGroup0002.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  decide

def k6PrefixGroup0003 : List (List ℕ) :=
  [[3, 7, 17, 23, 29],
     [3, 7, 17, 23, 31],
     [3, 7, 19, 23, 29],
     [3, 11, 13, 17, 19],
     [3, 11, 13, 17, 23],
     [3, 11, 13, 17, 29],
     [3, 11, 13, 17, 31],
     [3, 11, 13, 19, 23],
     [3, 11, 13, 19, 29],
     [3, 11, 13, 19, 31],
     [3, 11, 13, 23, 29],
     [3, 11, 17, 19, 23],
     [3, 11, 17, 19, 29],
     [3, 13, 17, 19, 23],
     [7, 11, 13, 17, 19]]

theorem k6PrefixGroup0003_root23_passes :
    k6PrefixGroup0003.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  decide

def k6CertifiedPrefixes : List (List Nat) :=
  k6PrefixGroup0000 ++
  k6PrefixGroup0001 ++
  k6PrefixGroup0002 ++
  k6PrefixGroup0003

theorem k6CertifiedPrefixes_eq :
    k6CertifiedPrefixes = Erdos848.fiveMillionOddRootK6FeasiblePrefixes := by
  decide

theorem k6CertifiedPrefixes_pass :
    k6CertifiedPrefixes.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  simp only [k6CertifiedPrefixes, List.all_append]
  rw [k6PrefixGroup0000_root23_passes]
  rw [k6PrefixGroup0001_root23_passes]
  rw [k6PrefixGroup0002_root23_passes]
  rw [k6PrefixGroup0003_root23_passes]
  decide

theorem k6FeasiblePrefixes_root23_pass :
    Erdos848.fiveMillionOddRootK6FeasiblePrefixes.all
      (Erdos848.fiveMillionR263EvenOneRoot23PrefixPasses 6) = true := by
  rw [← k6CertifiedPrefixes_eq]
  exact k6CertifiedPrefixes_pass

#print axioms k6FeasiblePrefixes_root23_pass

end Erdos848.GeneratedTailR263EvenOneRoot23
