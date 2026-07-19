import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0150

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0150 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 154368
  | _ => True

theorem anchorPart6_0150 : anchorPartValid6_0150 anchorHistoryChunk0150 := by
  unfold anchorPartValid6_0150 anchorHistoryChunk0150
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
