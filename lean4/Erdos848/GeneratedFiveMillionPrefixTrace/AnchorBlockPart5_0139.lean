import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0139 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 142976
  | _ => True

theorem anchorPart5_0139 : anchorPartValid5_0139 anchorHistoryChunk0139 := by
  unfold anchorPartValid5_0139 anchorHistoryChunk0139
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
