import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0129

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0129 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 132736
  | _ => True

theorem anchorPart5_0129 : anchorPartValid5_0129 anchorHistoryChunk0129 := by
  unfold anchorPartValid5_0129 anchorHistoryChunk0129
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
