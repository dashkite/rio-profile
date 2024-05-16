import * as K from "@dashkite/katana"
import _Profile from "@dashkite/profile"

Profile = 

  save: K.peek _Profile.save

  load: K.push _Profile.load

  connected: K.push _Profile.connected

export default Profile
export { Profile }