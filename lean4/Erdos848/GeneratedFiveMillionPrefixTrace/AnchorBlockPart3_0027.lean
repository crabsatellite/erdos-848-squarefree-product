import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0027 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 28032
  | _ => True

theorem anchorPart3_0027 : anchorPartValid3_0027 anchorHistoryChunk0027 := by
  unfold anchorPartValid3_0027 anchorHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
