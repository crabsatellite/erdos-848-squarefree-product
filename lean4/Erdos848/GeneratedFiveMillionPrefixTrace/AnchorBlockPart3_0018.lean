import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0018

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0018 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 18816
  | _ => True

theorem anchorPart3_0018 : anchorPartValid3_0018 anchorHistoryChunk0018 := by
  unfold anchorPartValid3_0018 anchorHistoryChunk0018
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
