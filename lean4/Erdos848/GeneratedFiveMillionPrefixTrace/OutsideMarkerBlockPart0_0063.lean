import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64512
  | _ => True

theorem outsideMarkerPart0_0063 : outsideMarkerPartValid0_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid0_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid1_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64640
  | _ => True

theorem outsideMarkerPart1_0063 : outsideMarkerPartValid1_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid1_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid2_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64768
  | _ => True

theorem outsideMarkerPart2_0063 : outsideMarkerPartValid2_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid2_0063 outsideHistoryChunk0063
  decide

def outsideMarkerPartValid3_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64896
  | _ => True

theorem outsideMarkerPart3_0063 : outsideMarkerPartValid3_0063 outsideHistoryChunk0063 := by
  unfold outsideMarkerPartValid3_0063 outsideHistoryChunk0063
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
