import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0160

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0160 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 164608
  | _ => True

theorem anchorPart6_0160 : anchorPartValid6_0160 anchorHistoryChunk0160 := by
  unfold anchorPartValid6_0160 anchorHistoryChunk0160
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
