import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0011 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 12032
  | _ => True

theorem anchorPart6_0011 : anchorPartValid6_0011 anchorHistoryChunk0011 := by
  unfold anchorPartValid6_0011 anchorHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
