import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0099 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 101760
  | _ => True

theorem anchorPart3_0099 : anchorPartValid3_0099 anchorHistoryChunk0099 := by
  unfold anchorPartValid3_0099 anchorHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
