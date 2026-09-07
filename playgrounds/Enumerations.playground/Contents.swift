enum particularComplications {
    case FollowedThroughTooDeep
    case NotAllowedToPassAndPassedThrough(ruptureArea : Double)
    case MedialComplicationsFromWidening
    case IncreasedSurcumferenceTribulations
}

print(particularComplications.FollowedThroughTooDeep)
print(particularComplications.NotAllowedToPassAndPassedThrough(ruptureArea: 15.0))
