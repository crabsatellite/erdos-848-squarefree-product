import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0114 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 117120
  | _ => True

theorem anchorPart3_0114 : anchorPartValid3_0114 anchorHistoryChunk0114 := by
  unfold anchorPartValid3_0114 anchorHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
