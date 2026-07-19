import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0048

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0048 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 49920
  | _ => True

theorem anchorPart6_0048 : anchorPartValid6_0048 anchorHistoryChunk0048 := by
  unfold anchorPartValid6_0048 anchorHistoryChunk0048
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
