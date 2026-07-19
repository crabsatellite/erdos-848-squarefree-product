import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0086

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0086 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 88960
  | _ => True

theorem anchorPart7_0086 : anchorPartValid7_0086 anchorHistoryChunk0086 := by
  unfold anchorPartValid7_0086 anchorHistoryChunk0086
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
