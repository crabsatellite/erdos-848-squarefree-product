import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0125

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0125 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 128640
  | _ => True

theorem anchorPart5_0125 : anchorPartValid5_0125 anchorHistoryChunk0125 := by
  unfold anchorPartValid5_0125 anchorHistoryChunk0125
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
