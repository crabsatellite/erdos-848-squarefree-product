import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0079 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 81280
  | _ => True

theorem anchorPart3_0079 : anchorPartValid3_0079 anchorHistoryChunk0079 := by
  unfold anchorPartValid3_0079 anchorHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
