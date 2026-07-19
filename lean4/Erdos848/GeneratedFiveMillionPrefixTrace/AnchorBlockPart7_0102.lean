import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0102 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 105344
  | _ => True

theorem anchorPart7_0102 : anchorPartValid7_0102 anchorHistoryChunk0102 := by
  unfold anchorPartValid7_0102 anchorHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
