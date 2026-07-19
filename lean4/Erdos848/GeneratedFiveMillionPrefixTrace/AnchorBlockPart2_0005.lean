import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0005 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 5376
  | _ => True

theorem anchorPart2_0005 : anchorPartValid2_0005 anchorHistoryChunk0005 := by
  unfold anchorPartValid2_0005 anchorHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
