import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0092

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0092 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 94976
  | _ => True

theorem anchorPart6_0092 : anchorPartValid6_0092 anchorHistoryChunk0092 := by
  unfold anchorPartValid6_0092 anchorHistoryChunk0092
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
