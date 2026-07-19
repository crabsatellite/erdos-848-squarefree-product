import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0079 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 81024
  | _ => True

theorem anchorPart1_0079 : anchorPartValid1_0079 anchorHistoryChunk0079 := by
  unfold anchorPartValid1_0079 anchorHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
