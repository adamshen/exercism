package clock

import (
	"fmt"
)

const testVersion = 4

type Clock struct {
	hour, minute int
}

func FormatTimeNum(hourNum, minuteNum int) (int, int) {
	hour := hourNum + minuteNum/60
	minute := minuteNum % 60

	if minute < 0 {
		minute = minute + 60
		hour--
	}

	if h := hour % 24; h >= 0 {
		hour = h
	} else {
		hour = 24 + h
	}

	return hour, minute
}

func New(hourNum, minuteNum int) Clock {
	hour, minute := FormatTimeNum(hourNum, minuteNum)
	return Clock{hour, minute}
}

func (clock Clock) String() string {
	return fmt.Sprintf("%02d:%02d", clock.hour, clock.minute)
}

func (clock Clock) Add(minutes int) Clock {
	hour, minute := FormatTimeNum(clock.hour, clock.minute+minutes)
	return Clock{hour, minute}
}
