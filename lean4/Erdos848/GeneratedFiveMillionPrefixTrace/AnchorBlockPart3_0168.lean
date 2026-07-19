import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0168 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 172416
  | _ => True

theorem anchorPart3_0168 : anchorPartValid3_0168 anchorHistoryChunk0168 := by
  unfold anchorPartValid3_0168 anchorHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
