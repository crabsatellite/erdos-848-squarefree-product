import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid3_0020 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.IndexedValid squarefreeOracle 5000000 20864
  | _ => True

theorem anchorPart3_0020 : anchorPartValid3_0020 anchorHistoryChunk0020 := by
  unfold anchorPartValid3_0020 anchorHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
