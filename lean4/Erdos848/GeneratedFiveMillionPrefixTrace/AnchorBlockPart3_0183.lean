import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0183

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0183 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 187776
  | _ => True

theorem anchorPart3_0183 : anchorPartValid3_0183 anchorHistoryChunk0183 := by
  unfold anchorPartValid3_0183 anchorHistoryChunk0183
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
