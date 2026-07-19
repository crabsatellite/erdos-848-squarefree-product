import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0074 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 76160
  | _ => True

theorem anchorPart3_0074 : anchorPartValid3_0074 anchorHistoryChunk0074 := by
  unfold anchorPartValid3_0074 anchorHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
