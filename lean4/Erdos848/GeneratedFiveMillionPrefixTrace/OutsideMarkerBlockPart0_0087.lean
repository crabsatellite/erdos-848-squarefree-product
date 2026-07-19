import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89088
  | _ => True

theorem outsideMarkerPart0_0087 : outsideMarkerPartValid0_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid0_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid1_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89216
  | _ => True

theorem outsideMarkerPart1_0087 : outsideMarkerPartValid1_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid1_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid2_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89344
  | _ => True

theorem outsideMarkerPart2_0087 : outsideMarkerPartValid2_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid2_0087 outsideHistoryChunk0087
  decide

def outsideMarkerPartValid3_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89472
  | _ => True

theorem outsideMarkerPart3_0087 : outsideMarkerPartValid3_0087 outsideHistoryChunk0087 := by
  unfold outsideMarkerPartValid3_0087 outsideHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
