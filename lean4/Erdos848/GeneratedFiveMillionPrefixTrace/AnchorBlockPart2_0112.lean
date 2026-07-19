import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0112 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 114944
  | _ => True

theorem anchorPart2_0112 : anchorPartValid2_0112 anchorHistoryChunk0112 := by
  unfold anchorPartValid2_0112 anchorHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
