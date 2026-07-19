import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0161

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0161 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 164864
  | _ => True

theorem anchorPart0_0161 : anchorPartValid0_0161 anchorHistoryChunk0161 := by
  unfold anchorPartValid0_0161 anchorHistoryChunk0161
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
