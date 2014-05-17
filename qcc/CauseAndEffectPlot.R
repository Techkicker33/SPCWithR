library(qcc) 


cause.and.effect( 
           cause=list(Operator=c("operator #1", "operator #2", "operator #3"), 
           Environmet=c("height", "cleaning"),
           Tools=c("scisors", "tape"), 
           Design=c("rotor.length", "rotor.width2", "paperclip"),                                
           Raw.Material=c("thickness", "marks"), 
           Measure.Tool=c("callibrate", "model"), 
           other=c("other")), 
           effect="Flight time")
