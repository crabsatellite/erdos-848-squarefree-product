import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0118

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0118 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 121600
  | _ => True

theorem anchorPart6_0118 : anchorPartValid6_0118 anchorHistoryChunk0118 := by
  unfold anchorPartValid6_0118 anchorHistoryChunk0118
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
