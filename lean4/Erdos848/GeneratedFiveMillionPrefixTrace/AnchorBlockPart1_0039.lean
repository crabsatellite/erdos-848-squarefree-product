import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0039 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 40064
  | _ => True

theorem anchorPart1_0039 : anchorPartValid1_0039 anchorHistoryChunk0039 := by
  unfold anchorPartValid1_0039 anchorHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
