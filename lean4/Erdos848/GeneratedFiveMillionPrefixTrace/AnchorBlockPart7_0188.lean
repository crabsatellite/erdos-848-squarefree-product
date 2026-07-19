import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0188

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0188 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 193408
  | _ => True

theorem anchorPart7_0188 : anchorPartValid7_0188 anchorHistoryChunk0188 := by
  unfold anchorPartValid7_0188 anchorHistoryChunk0188
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
