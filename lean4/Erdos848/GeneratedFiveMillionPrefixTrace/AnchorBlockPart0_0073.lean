import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0073 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 74752
  | _ => True

theorem anchorPart0_0073 : anchorPartValid0_0073 anchorHistoryChunk0073 := by
  unfold anchorPartValid0_0073 anchorHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
