import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0162

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0162 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 166272
  | _ => True

theorem anchorPart3_0162 : anchorPartValid3_0162 anchorHistoryChunk0162 := by
  unfold anchorPartValid3_0162 anchorHistoryChunk0162
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
