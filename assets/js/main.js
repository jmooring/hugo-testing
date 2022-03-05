import { register, format as timeAgo } from "timeago.js";
window.timeAgo = timeAgo;

// Register other locales.
// en_US and zh_CN are included by default.

import de_DE from "timeago.js/lib/lang/de";
register("de_DE", de_DE);

import es_ES from "timeago.js/lib/lang/es";
register("es_ES", es_ES);

import fr_FR from "timeago.js/lib/lang/fr";
register("fr_FR", fr_FR);

import it_IT from "timeago.js/lib/lang/it";
register("it_IT", it_IT);
