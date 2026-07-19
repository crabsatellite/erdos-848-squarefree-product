import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0028 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 28672
  | _ => True

theorem anchorPart0_0028 : anchorPartValid0_0028 anchorHistoryChunk0028 := by
  unfold anchorPartValid0_0028 anchorHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
