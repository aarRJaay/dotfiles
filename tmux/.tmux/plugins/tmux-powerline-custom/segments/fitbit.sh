#!/usr/bin/bash

run_segment() {
                #jq '."activities-heart-intraday".dataset[-1].value' heart.json
                # HEART=$(jq '."activities-heart-intraday".dataset[-1].value' ~/Scripting/Python/Utilities/StepGrabber/heart.json)
#                HEART=$(jq '."activities-heart-intraday".dataset[-1].value' ~/Scripting/Python/StepGrabber/heart.json)
                # HEART=$(jq '."summary".restingHeartRate' ~/Scripting/Javascript/StepGrabber/fitbitLog.json)
                                # HEART=$(jq '."summary".restingHeartRate' ~/.config/fitbitGetter/fitbitLog.json)
                #jq '."activities-steps"[].value' steps.json
                # STEPS=$(jq '."activities-steps"[].value' ~/Scripting/Python/Utilities/StepGrabber/steps.json)
#                STEPS=$(jq '."activities-steps"[].value' ~/Scripting/Python/StepGrabber/steps.json)
              #  STEPS=$(jq '."summary".steps' ~/Scripting/Javascript/StepGrabber/fitbitLog.json)
                STEPS=$(jq '."summary".steps' ~/.config/fitbitGetter/fitbitLog.json)

                # Remove beginning and end "
                STEPS=${STEPS#"\""}
                STEPS=${STEPS%"\""}


                #echo 💓 $HEART 👣 $STEPS
                echo 👣 $STEPS
               # echo "$HEART / $STEPS"
}
return 0
