package org.motechproject.scheduler.builder;

import org.motechproject.model.Time;

public class CronJobExpressionBuilder {

    private Time startTime;
    private Integer repeatWindowInHours;
    private Integer repeatIntervalInMinutes;

    private static final String CRON_JOB_EXPR = "0 %d/%d %d-%d * * ?";

    public CronJobExpressionBuilder(Time startTime, Integer repeatWindowInHours, Integer repeatIntervalInMinutes) {
        this.startTime = startTime;
        this.repeatWindowInHours = repeatWindowInHours;
        this.repeatIntervalInMinutes = repeatIntervalInMinutes;
    }

    public String build() {
        return String.format(CRON_JOB_EXPR, startTime.getMinute(), repeatIntervalInMinutes, startTime.getHour(), getEndHour());
    }

    private int getEndHour() {
        final int lastHourOfDay = 23;
        int currentEndHour = startTime.getHour() + repeatWindowInHours;
        return (currentEndHour > lastHourOfDay) ? lastHourOfDay : currentEndHour;
    }
}
