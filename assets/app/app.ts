import { Notif } from "./notif";
import { Session } from "./session";

(window as any).APP = {
  session: new Session(),
  notif: new Notif(),
};