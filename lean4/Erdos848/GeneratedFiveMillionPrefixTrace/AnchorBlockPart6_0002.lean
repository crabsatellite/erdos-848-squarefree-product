import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0002 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 2816
  | _ => True

theorem anchorPart6_0002 : anchorPartValid6_0002 anchorHistoryChunk0002 := by
  unfold anchorPartValid6_0002 anchorHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
