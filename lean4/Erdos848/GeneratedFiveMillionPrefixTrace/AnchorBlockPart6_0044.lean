import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0044 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 45824
  | _ => True

theorem anchorPart6_0044 : anchorPartValid6_0044 anchorHistoryChunk0044 := by
  unfold anchorPartValid6_0044 anchorHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
