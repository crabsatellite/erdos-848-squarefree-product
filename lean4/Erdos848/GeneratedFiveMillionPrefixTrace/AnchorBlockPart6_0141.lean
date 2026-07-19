import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0141 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 145152
  | _ => True

theorem anchorPart6_0141 : anchorPartValid6_0141 anchorHistoryChunk0141 := by
  unfold anchorPartValid6_0141 anchorHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
