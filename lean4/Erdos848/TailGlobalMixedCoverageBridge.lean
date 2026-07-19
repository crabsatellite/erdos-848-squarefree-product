import Erdos848.TailGlobalMixedCoreBridge

namespace Erdos848

/-! Small list lemma used by the generated mixed-support coverage certificates. -/

theorem all_map_fst_eq_true_of_forall_mem
    {rows : List (List ℕ × ℕ)} {predicate : List ℕ → Bool}
    (hrows : ∀ row ∈ rows, predicate row.1 = true) :
    (rows.map Prod.fst).all predicate = true := by
  induction rows with
  | nil => rfl
  | cons row rows ih =>
      simp only [List.map_cons, List.all_cons, Bool.and_eq_true]
      constructor
      · exact hrows row (by simp)
      · exact ih (fun next hnext => hrows next (by simp [hnext]))

#print axioms all_map_fst_eq_true_of_forall_mem

end Erdos848
