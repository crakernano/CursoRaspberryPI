from datetime import datetime, date, time, timedelta
import calendar

ahora = datetime.now()
hora = time(ahora.hour, ahora.minute, ahora.second)
print ahora

humbral = time(14, 00, 00)

if hora < humbral:
	print "buenos dias"
else:
	print "buenas tardes"
