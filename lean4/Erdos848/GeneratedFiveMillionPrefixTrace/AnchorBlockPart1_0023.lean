import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0023 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 23680
  | _ => True

theorem anchorPart1_0023 : anchorPartValid1_0023 anchorHistoryChunk0023 := by
  unfold anchorPartValid1_0023 anchorHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
