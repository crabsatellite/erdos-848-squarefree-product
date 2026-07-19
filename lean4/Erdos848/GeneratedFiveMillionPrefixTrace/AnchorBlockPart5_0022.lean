import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0022

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0022 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 23168
  | _ => True

theorem anchorPart5_0022 : anchorPartValid5_0022 anchorHistoryChunk0022 := by
  unfold anchorPartValid5_0022 anchorHistoryChunk0022
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
