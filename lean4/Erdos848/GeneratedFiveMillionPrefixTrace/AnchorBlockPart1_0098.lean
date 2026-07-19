import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0098 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 100480
  | _ => True

theorem anchorPart1_0098 : anchorPartValid1_0098 anchorHistoryChunk0098 := by
  unfold anchorPartValid1_0098 anchorHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
