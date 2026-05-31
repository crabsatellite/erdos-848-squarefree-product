import Lake
open Lake DSL

package Erdos848 where

require chainAudit from "../../../tools/chain-audit"

@[default_target]
lean_lib Erdos848 where
  roots := #[`Erdos848]

lean_exe erdos848_status where
  root := `Erdos848.Scripts.StatusEntry
  supportInterpreter := true

lean_exe erdos848_check where
  root := `Erdos848.Scripts.CheckEntry
  supportInterpreter := true
