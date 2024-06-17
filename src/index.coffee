import * as Fn from "@dashkite/joy/function"
import * as K from "@dashkite/katana/sync"
import _Profile from "@dashkite/profile"

Profile = 

  save: K.peek _Profile.save

  load: K.push _Profile.load

  update: ( f ) ->
    Fn.pipe [
      Profile.load
      K.poke f
      Profile.save
    ]

  connected: K.push _Profile.connected

export default Profile
export { Profile }