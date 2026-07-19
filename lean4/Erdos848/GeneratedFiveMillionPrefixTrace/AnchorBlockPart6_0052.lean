import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0052 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 54016
  | _ => True

theorem anchorPart6_0052 : anchorPartValid6_0052 anchorHistoryChunk0052 := by
  unfold anchorPartValid6_0052 anchorHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
