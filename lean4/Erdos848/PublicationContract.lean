namespace Erdos848

/-!
# Paper/machine publication contract

These literals are deliberately boring.  The publication gate compares them
with the machine-readable markers in the TeX source and with `proof-state.json`.
Changing only one copy therefore fails closed.
-/

def publicationProofContractVersion : String :=
  "erdos-848-all-n-four-range-v1"

def publicationMachineStatus : String :=
  "closed"

end Erdos848
