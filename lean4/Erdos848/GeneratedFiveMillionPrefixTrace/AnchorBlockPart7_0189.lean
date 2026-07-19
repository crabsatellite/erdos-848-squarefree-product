import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0189

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0189 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 194432
  | _ => True

theorem anchorPart7_0189 : anchorPartValid7_0189 anchorHistoryChunk0189 := by
  unfold anchorPartValid7_0189 anchorHistoryChunk0189
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
