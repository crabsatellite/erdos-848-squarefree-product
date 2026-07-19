import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0154

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0154 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 157824
  | _ => True

theorem anchorPart1_0154 : anchorPartValid1_0154 anchorHistoryChunk0154 := by
  unfold anchorPartValid1_0154 anchorHistoryChunk0154
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
