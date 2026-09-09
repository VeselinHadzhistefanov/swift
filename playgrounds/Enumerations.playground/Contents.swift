enum ParticularComplications {
    case FollowedThroughTooDeep
    case NotAllowedToPassAndPassedThrough(ruptureArea : Double)
    case MedialComplicationsFromWidening
    case IncreasedSurcumferenceTribulations
}

print(ParticularComplications.FollowedThroughTooDeep)
print(ParticularComplications.NotAllowedToPassAndPassedThrough(ruptureArea: 15.0))

func practiceAnaliticalObservation(state : ParticularComplications) -> String{
    switch (state){
    case .FollowedThroughTooDeep: return "Your case seems to signal lack of sense of strong pull towards a specific depth and a resulting 'overshooting' behavior"
        
    case .NotAllowedToPassAndPassedThrough(ruptureArea: let ruptureArea): return "Massive congestion is the probable cause"
        
        
    case .MedialComplicationsFromWidening : return "Complications arisen"
        
    case .IncreasedSurcumferenceTribulations : return "Complications arisen"
    }
}

var lookedAtQuickly = ParticularComplications.FollowedThroughTooDeep
var result = practiceAnaliticalObservation(state : lookedAtQuickly)
print(result)
