--
-- (C) 2019-20 - ntop.org
--
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path
local format_utils = require "format_utils"

local function formatPeriodicActivityNotExecuted(ifid, alert, info)
   return(i18n("alert_messages.periodic_activity_not_executed",
	       {
		  script = info.ps_name,
		  pending_since = format_utils.formatPastEpochShort(info.last_queued_time),
   }))
end

-- #######################################################

return {
  i18n_title = "alerts_dashboard.periodic_activity_not_executed",
  i18n_description = formatPeriodicActivityNotExecuted,
  icon = "fas fa-undo",
}
