import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0195 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 199960
  | _ => True

theorem anchorPart7_0195 : anchorPartValid7_0195 anchorHistoryChunk0195 := by
  unfold anchorPartValid7_0195 anchorHistoryChunk0195
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
