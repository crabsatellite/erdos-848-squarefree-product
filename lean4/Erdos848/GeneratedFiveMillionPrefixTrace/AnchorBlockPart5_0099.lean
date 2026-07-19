import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0099 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 102016
  | _ => True

theorem anchorPart5_0099 : anchorPartValid5_0099 anchorHistoryChunk0099 := by
  unfold anchorPartValid5_0099 anchorHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
