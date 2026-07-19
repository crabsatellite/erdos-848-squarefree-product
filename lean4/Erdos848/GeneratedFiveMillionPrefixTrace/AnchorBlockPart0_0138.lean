import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0138

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0138 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 141312
  | _ => True

theorem anchorPart0_0138 : anchorPartValid0_0138 anchorHistoryChunk0138 := by
  unfold anchorPartValid0_0138 anchorHistoryChunk0138
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
