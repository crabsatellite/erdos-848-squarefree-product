import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0168 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 172800
  | _ => True

theorem anchorPart6_0168 : anchorPartValid6_0168 anchorHistoryChunk0168 := by
  unfold anchorPartValid6_0168 anchorHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
