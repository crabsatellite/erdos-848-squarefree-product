import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0177

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0177 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 181632
  | _ => True

theorem anchorPart3_0177 : anchorPartValid3_0177 anchorHistoryChunk0177 := by
  unfold anchorPartValid3_0177 anchorHistoryChunk0177
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
