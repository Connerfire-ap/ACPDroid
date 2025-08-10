.class public final Lorg/threeten/bp/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static toDate(Lorg/threeten/bp/Instant;)Ljava/util/Date;
    .locals 4
    .param p0, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toGregorianCalendar(Lorg/threeten/bp/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .locals 6
    .param p0, "zdt"    # Lorg/threeten/bp/ZonedDateTime;

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v3

    invoke-static {v3}, Lorg/threeten/bp/DateTimeUtils;->toTimeZone(Lorg/threeten/bp/ZoneId;)Ljava/util/TimeZone;

    move-result-object v2

    .line 121
    .local v2, "zone":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 122
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 123
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 124
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toInstant()Lorg/threeten/bp/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toInstant(Ljava/sql/Timestamp;)Lorg/threeten/bp/Instant;
    .locals 4
    .param p0, "sqlTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static toInstant(Ljava/util/Calendar;)Lorg/threeten/bp/Instant;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 89
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static toInstant(Ljava/util/Date;)Lorg/threeten/bp/Instant;
    .locals 2
    .param p0, "utilDate"    # Ljava/util/Date;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static toLocalDate(Ljava/sql/Date;)Lorg/threeten/bp/LocalDate;
    .locals 3
    .param p0, "sqlDate"    # Ljava/sql/Date;

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/sql/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p0}, Ljava/sql/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/sql/Date;->getDate()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static toLocalDateTime(Ljava/sql/Timestamp;)Lorg/threeten/bp/LocalDateTime;
    .locals 7
    .param p0, "sqlTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getDate()I

    move-result v2

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getHours()I

    move-result v3

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v4

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getSeconds()I

    move-result v5

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static toLocalTime(Ljava/sql/Time;)Lorg/threeten/bp/LocalTime;
    .locals 3
    .param p0, "sqlTime"    # Ljava/sql/Time;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/sql/Time;->getHours()I

    move-result v0

    invoke-virtual {p0}, Ljava/sql/Time;->getMinutes()I

    move-result v1

    invoke-virtual {p0}, Ljava/sql/Time;->getSeconds()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/LocalTime;->of(III)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static toSqlDate(Lorg/threeten/bp/LocalDate;)Ljava/sql/Date;
    .locals 4
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 180
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/Date;-><init>(III)V

    return-object v0
.end method

.method public static toSqlTime(Lorg/threeten/bp/LocalTime;)Ljava/sql/Time;
    .locals 4
    .param p0, "time"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 203
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->getSecond()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/Time;-><init>(III)V

    return-object v0
.end method

.method public static toSqlTimestamp(Lorg/threeten/bp/Instant;)Ljava/sql/Timestamp;
    .locals 6
    .param p0, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 251
    :try_start_0
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 252
    .local v1, "ts":Ljava/sql/Timestamp;
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-object v1

    .line 254
    .end local v1    # "ts":Ljava/sql/Timestamp;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toSqlTimestamp(Lorg/threeten/bp/LocalDateTime;)Ljava/sql/Timestamp;
    .locals 8
    .param p0, "dateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 215
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getMinute()I

    move-result v5

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v6

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static toTimeZone(Lorg/threeten/bp/ZoneId;)Ljava/util/TimeZone;
    .locals 3
    .param p0, "zoneId"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/threeten/bp/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "tzid":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 154
    :cond_2
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v0, "UTC"

    goto :goto_0
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Lorg/threeten/bp/ZoneId;
    .locals 2
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/threeten/bp/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Lorg/threeten/bp/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static toZonedDateTime(Ljava/util/Calendar;)Lorg/threeten/bp/ZonedDateTime;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 103
    .local v0, "instant":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lorg/threeten/bp/DateTimeUtils;->toZoneId(Ljava/util/TimeZone;)Lorg/threeten/bp/ZoneId;

    move-result-object v1

    .line 104
    .local v1, "zone":Lorg/threeten/bp/ZoneId;
    invoke-static {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    return-object v2
.end method
