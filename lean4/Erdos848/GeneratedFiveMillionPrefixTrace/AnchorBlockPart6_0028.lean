import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0028 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 29440
  | _ => True

theorem anchorPart6_0028 : anchorPartValid6_0028 anchorHistoryChunk0028 := by
  unfold anchorPartValid6_0028 anchorHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
