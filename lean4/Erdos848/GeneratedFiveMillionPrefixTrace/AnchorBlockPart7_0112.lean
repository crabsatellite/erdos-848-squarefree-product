import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0112 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 115584
  | _ => True

theorem anchorPart7_0112 : anchorPartValid7_0112 anchorHistoryChunk0112 := by
  unfold anchorPartValid7_0112 anchorHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
