import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0071 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 73472
  | _ => True

theorem anchorPart6_0071 : anchorPartValid6_0071 anchorHistoryChunk0071 := by
  unfold anchorPartValid6_0071 anchorHistoryChunk0071
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
