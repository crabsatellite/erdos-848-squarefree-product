import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0183

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0183 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 188288
  | _ => True

theorem anchorPart7_0183 : anchorPartValid7_0183 anchorHistoryChunk0183 := by
  unfold anchorPartValid7_0183 anchorHistoryChunk0183
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
