import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0168 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 172928
  | _ => True

theorem anchorPart7_0168 : anchorPartValid7_0168 anchorHistoryChunk0168 := by
  unfold anchorPartValid7_0168 anchorHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
