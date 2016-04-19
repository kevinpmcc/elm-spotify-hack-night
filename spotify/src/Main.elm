module Main (..) where

import Effects exposing (Never)
import StartApp
import State
import Task exposing (Task)
import View
import Types

app : StartApp.App Types.Model
app =
  StartApp.start
    { init = State.init
    , update = State.update
    , view = View.root
    , inputs = []
    }


main =
  app.html


port tasks : Signal (Task Never ())
port tasks =
  app.tasks
