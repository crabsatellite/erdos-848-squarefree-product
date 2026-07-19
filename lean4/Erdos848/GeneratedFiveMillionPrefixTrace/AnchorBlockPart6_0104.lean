import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0104

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0104 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 107264
  | _ => True

theorem anchorPart6_0104 : anchorPartValid6_0104 anchorHistoryChunk0104 := by
  unfold anchorPartValid6_0104 anchorHistoryChunk0104
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
