import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0087 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 89472
  | _ => True

theorem anchorPart3_0087 : anchorPartValid3_0087 anchorHistoryChunk0087 := by
  unfold anchorPartValid3_0087 anchorHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
