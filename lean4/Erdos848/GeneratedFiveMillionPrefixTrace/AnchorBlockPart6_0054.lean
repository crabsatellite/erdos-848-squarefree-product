import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0054

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0054 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 56064
  | _ => True

theorem anchorPart6_0054 : anchorPartValid6_0054 anchorHistoryChunk0054 := by
  unfold anchorPartValid6_0054 anchorHistoryChunk0054
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
