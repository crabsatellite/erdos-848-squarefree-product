import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0067 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 69376
  | _ => True

theorem anchorPart6_0067 : anchorPartValid6_0067 anchorHistoryChunk0067 := by
  unfold anchorPartValid6_0067 anchorHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
