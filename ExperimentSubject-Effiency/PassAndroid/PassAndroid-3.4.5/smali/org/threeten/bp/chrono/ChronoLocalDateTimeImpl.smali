.class final Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
.super Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
        "<TD;>;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MICROS_PER_DAY:J = 0x141dd76000L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MINUTES_PER_DAY:I = 0x5a0

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field private static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field private static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final date:Lorg/threeten/bp/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V
    .locals 1
    .param p2, "time"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/threeten/bp/LocalTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "date":Lorg/threeten/bp/chrono/ChronoLocalDate;, "TD;"
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;-><init>()V

    .line 153
    const-string v0, "date"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string v0, "time"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 156
    iput-object p2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    .line 157
    return-void
.end method

.method static of(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 1
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/ChronoLocalDate;",
            ">(TR;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "date":Lorg/threeten/bp/chrono/ChronoLocalDate;, "TR;"
    new-instance v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method private plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 3
    .param p1, "days"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .param p1, "hours"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v4, 0x0

    .line 278
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusMinutes(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .param p1, "minutes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 282
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 290
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method private plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 18
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .local p1, "newDate":Lorg/threeten/bp/chrono/ChronoLocalDate;, "TD;"
    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    .line 312
    :goto_0
    return-object v7

    .line 299
    :cond_0
    const-wide v12, 0x4e94914f0000L

    div-long v12, p8, v12

    const-wide/32 v14, 0x15180

    div-long v14, p6, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x5a0

    div-long v14, p4, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x18

    div-long v14, p2, v14

    add-long v8, v12, v14

    .line 303
    .local v8, "totDays":J
    const-wide v12, 0x4e94914f0000L

    rem-long v12, p8, v12

    const-wide/32 v14, 0x15180

    rem-long v14, p6, v14

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    const-wide/16 v14, 0x5a0

    rem-long v14, p4, v14

    const-wide v16, 0xdf8475800L

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    const-wide/16 v14, 0x18

    rem-long v14, p2, v14

    const-wide v16, 0x34630b8a000L

    mul-long v14, v14, v16

    add-long v10, v12, v14

    .line 307
    .local v10, "totNanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v7}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 308
    .local v2, "curNoD":J
    add-long/2addr v10, v2

    .line 309
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 310
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v4

    .line 311
    .local v4, "newNoD":J
    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    .line 312
    .local v6, "newTime":Lorg/threeten/bp/LocalTime;
    :goto_1
    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v7}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    goto :goto_0

    .line 311
    .end local v6    # "newTime":Lorg/threeten/bp/LocalTime;
    :cond_1
    invoke-static {v4, v5}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v6

    goto :goto_1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 3
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 362
    .local v0, "date":Lorg/threeten/bp/chrono/ChronoLocalDate;
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalTime;

    .line 363
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method private with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .param p1, "newDate"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "newTime"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/Temporal;",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    if-ne v1, p2, :cond_0

    .line 173
    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_0
    return-object p0

    .line 172
    .restart local p0    # "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    .line 173
    .local v0, "cd":Lorg/threeten/bp/chrono/ChronoLocalDate;, "TD;"
    new-instance p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    .end local p0    # "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-direct {p0, v0, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;-><init>(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 352
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "zoneId"    # Lorg/threeten/bp/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ZoneId;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->ofBest(Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 214
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 222
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 225
    :goto_0
    return-wide v0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 191
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 193
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 199
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 201
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    .line 257
    instance-of v1, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 258
    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 259
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    sget-object v1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 268
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    .line 270
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_0
    return-object v1

    .line 260
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 261
    :pswitch_1
    div-long v2, p1, v8

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 262
    :pswitch_2
    div-long v2, p1, v6

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 265
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 266
    :pswitch_6
    div-long v2, p1, v4

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 270
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v1

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method plusSeconds(J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .param p1, "seconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    const-wide/16 v2, 0x0

    .line 286
    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Lorg/threeten/bp/chrono/ChronoLocalDate;JJJJ)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 206
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDate;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 10
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 325
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/threeten/bp/chrono/Chronology;->localDateTime(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v2

    .line 326
    .local v2, "end":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<TD;>;"
    instance-of v5, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v5, :cond_2

    move-object v4, p2

    .line 327
    check-cast v4, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 328
    .local v4, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    invoke-virtual {v4}, Lorg/threeten/bp/temporal/ChronoUnit;->isTimeBased()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, v5}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v6

    iget-object v5, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    sget-object v8, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v5, v8}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 330
    .local v0, "amount":J
    sget-object v5, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v4}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 339
    :goto_0
    iget-object v5, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/threeten/bp/LocalTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v6

    .line 347
    .end local v0    # "amount":J
    .end local v4    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_1
    return-wide v6

    .line 331
    .restart local v0    # "amount":J
    .restart local v4    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_0
    const-wide v6, 0x4e94914f0000L

    invoke-static {v0, v1, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 332
    :pswitch_1
    const-wide v6, 0x141dd76000L

    invoke-static {v0, v1, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 333
    :pswitch_2
    const-wide/32 v6, 0x5265c00

    invoke-static {v0, v1, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 334
    :pswitch_3
    const v5, 0x15180

    invoke-static {v0, v1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    goto :goto_0

    .line 335
    :pswitch_4
    const/16 v5, 0x5a0

    invoke-static {v0, v1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    goto :goto_0

    .line 336
    :pswitch_5
    const/16 v5, 0x18

    invoke-static {v0, v1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    goto :goto_0

    .line 337
    :pswitch_6
    const/4 v5, 0x2

    invoke-static {v0, v1, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    goto :goto_0

    .line 341
    .end local v0    # "amount":J
    :cond_0
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v3

    .line 342
    .local v3, "endDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v5

    iget-object v6, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v5, v6}, Lorg/threeten/bp/LocalTime;->isBefore(Lorg/threeten/bp/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    const-wide/16 v6, 0x1

    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v3, v6, v7, v5}, Lorg/threeten/bp/chrono/ChronoLocalDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v3

    .line 345
    :cond_1
    iget-object v5, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v5, v3, p2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v6

    goto :goto_1

    .line 347
    .end local v3    # "endDate":Lorg/threeten/bp/chrono/ChronoLocalDate;
    .end local v4    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_2
    invoke-interface {p2, p0, v2}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v6

    goto :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalAdjuster;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 234
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    goto :goto_0

    .line 236
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    goto :goto_0

    .line 239
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "J)",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDateTime(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 68
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;, "Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl<TD;>;"
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->date:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->time:Lorg/threeten/bp/LocalTime;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 358
    return-void
.end method
