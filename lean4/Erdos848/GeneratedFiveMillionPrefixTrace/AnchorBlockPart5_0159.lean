import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0159 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 163456
  | _ => True

theorem anchorPart5_0159 : anchorPartValid5_0159 anchorHistoryChunk0159 := by
  unfold anchorPartValid5_0159 anchorHistoryChunk0159
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
