import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0174

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0174 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 179072
  | _ => True

theorem anchorPart7_0174 : anchorPartValid7_0174 anchorHistoryChunk0174 := by
  unfold anchorPartValid7_0174 anchorHistoryChunk0174
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
