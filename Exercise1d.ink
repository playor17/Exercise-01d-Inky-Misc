/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 
It is {advance_time() }

+ [Stroll down the beach] -> beach2
+ {time == 0}[Have breakfast] -> Breakfast
+ {time == 1}[Have lunch] -> Lunch
+ {time == 2}[Have dinner] -> Dinner
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time() }
* {time == 1 } [Pick up some seashells] -> shells 
+ {time == 2} [Counting stars] -> stars

+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== Breakfast ==
You have breakfast and make plans for a day.
-> seashore
== Lunch ==
You have lunch and take a walk along the beach.
-> seashore
== Dinner ==
You have dinner and spendthe night relaxing.
-> seashore

==stars==
The sky is full of stars. You end your day by counting stars.
-> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
