import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0186

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0186 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 190848
  | _ => True

theorem anchorPart3_0186 : anchorPartValid3_0186 anchorHistoryChunk0186 := by
  unfold anchorPartValid3_0186 anchorHistoryChunk0186
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
