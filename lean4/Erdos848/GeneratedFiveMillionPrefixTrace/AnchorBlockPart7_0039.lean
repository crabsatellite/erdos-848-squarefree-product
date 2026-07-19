import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0039 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 40832
  | _ => True

theorem anchorPart7_0039 : anchorPartValid7_0039 anchorHistoryChunk0039 := by
  unfold anchorPartValid7_0039 anchorHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
