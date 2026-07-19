import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0003 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 3840
  | _ => True

theorem anchorPart6_0003 : anchorPartValid6_0003 anchorHistoryChunk0003 := by
  unfold anchorPartValid6_0003 anchorHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
