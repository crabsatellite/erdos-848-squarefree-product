import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0103 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 106368
  | _ => True

theorem anchorPart7_0103 : anchorPartValid7_0103 anchorHistoryChunk0103 := by
  unfold anchorPartValid7_0103 anchorHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
