import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0192

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0192 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 197504
  | _ => True

theorem anchorPart7_0192 : anchorPartValid7_0192 anchorHistoryChunk0192 := by
  unfold anchorPartValid7_0192 anchorHistoryChunk0192
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
