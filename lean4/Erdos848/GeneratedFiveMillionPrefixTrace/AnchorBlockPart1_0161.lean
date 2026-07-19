import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0161

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0161 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 164992
  | _ => True

theorem anchorPart1_0161 : anchorPartValid1_0161 anchorHistoryChunk0161 := by
  unfold anchorPartValid1_0161 anchorHistoryChunk0161
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
