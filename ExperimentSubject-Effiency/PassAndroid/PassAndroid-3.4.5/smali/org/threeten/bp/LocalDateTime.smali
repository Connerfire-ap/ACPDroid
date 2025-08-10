.class public final Lorg/threeten/bp/LocalDateTime;
.super Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.source "LocalDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/LocalDateTime$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
        "<",
        "Lorg/threeten/bp/LocalDate;",
        ">;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/LocalDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/LocalDateTime;

.field public static final MIN:Lorg/threeten/bp/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Lorg/threeten/bp/LocalDate;

.field private final time:Lorg/threeten/bp/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lorg/threeten/bp/LocalDate;->MIN:Lorg/threeten/bp/LocalDate;

    sget-object v1, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDateTime;->MIN:Lorg/threeten/bp/LocalDateTime;

    .line 114
    sget-object v0, Lorg/threeten/bp/LocalDate;->MAX:Lorg/threeten/bp/LocalDate;

    sget-object v1, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    .line 118
    new-instance v0, Lorg/threeten/bp/LocalDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/LocalDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/LocalDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V
    .locals 0
    .param p1, "date"    # Lorg/threeten/bp/LocalDate;
    .param p2, "time"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 454
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;-><init>()V

    .line 455
    iput-object p1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    .line 456
    iput-object p2, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    .line 457
    return-void
.end method

.method private compareTo0(Lorg/threeten/bp/LocalDateTime;)I
    .locals 3
    .param p1, "other"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 1668
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDate;->compareTo0(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    .line 1669
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1670
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p1}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    .line 1672
    :cond_0
    return v0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;
    .locals 6
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 402
    instance-of v3, p0, Lorg/threeten/bp/LocalDateTime;

    if-eqz v3, :cond_0

    .line 403
    check-cast p0, Lorg/threeten/bp/LocalDateTime;

    .line 410
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    .local v2, "time":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 404
    .end local v0    # "date":Lorg/threeten/bp/LocalDate;
    .end local v2    # "time":Lorg/threeten/bp/LocalTime;
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    instance-of v3, p0, Lorg/threeten/bp/ZonedDateTime;

    if-eqz v3, :cond_1

    .line 405
    check-cast p0, Lorg/threeten/bp/ZonedDateTime;

    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    goto :goto_0

    .line 408
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 409
    .restart local v0    # "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    .line 410
    .restart local v2    # "time":Lorg/threeten/bp/LocalTime;
    new-instance v3, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v3, v0, v2}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto :goto_0

    .line 411
    .end local v0    # "date":Lorg/threeten/bp/LocalDate;
    .end local v2    # "time":Lorg/threeten/bp/LocalTime;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static now()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 182
    const-string v2, "clock"

    invoke-static {p0, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 184
    .local v0, "now":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 185
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 168
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIII)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 275
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 276
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 277
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIII)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 299
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4, p5}, Lorg/threeten/bp/LocalTime;->of(III)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 300
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(IIIIIII)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 322
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4, p5, p6}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 323
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(ILorg/threeten/bp/Month;III)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lorg/threeten/bp/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 206
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 207
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 208
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(ILorg/threeten/bp/Month;IIII)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lorg/threeten/bp/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 230
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4, p5}, Lorg/threeten/bp/LocalTime;->of(III)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 231
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(ILorg/threeten/bp/Month;IIIII)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # Lorg/threeten/bp/Month;
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I

    .prologue
    .line 252
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 253
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p3, p4, p5, p6}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 254
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    new-instance v2, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v2
.end method

.method public static of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 334
    const-string v0, "date"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    const-string v0, "time"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;
    .locals 10
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 376
    const-string v7, "offset"

    invoke-static {p3, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v7

    int-to-long v8, v7

    add-long v4, p0, v8

    .line 378
    .local v4, "localSecond":J
    const-wide/32 v8, 0x15180

    invoke-static {v4, v5, v8, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v2

    .line 379
    .local v2, "localEpochDay":J
    const v7, 0x15180

    invoke-static {v4, v5, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v1

    .line 380
    .local v1, "secsOfDay":I
    invoke-static {v2, v3}, Lorg/threeten/bp/LocalDate;->ofEpochDay(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 381
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    int-to-long v8, v1

    invoke-static {v8, v9, p2}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;

    move-result-object v6

    .line 382
    .local v6, "time":Lorg/threeten/bp/LocalTime;
    new-instance v7, Lorg/threeten/bp/LocalDateTime;

    invoke-direct {v7, v0, v6}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    return-object v7
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p0, "instant"    # Lorg/threeten/bp/Instant;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 354
    const-string v2, "instant"

    invoke-static {p0, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    const-string v2, "zone"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v1

    .line 357
    .local v1, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 358
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 429
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalDateTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 443
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method private plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;
    .locals 18
    .param p1, "newDate"    # Lorg/threeten/bp/LocalDate;
    .param p2, "hours"    # J
    .param p4, "minutes"    # J
    .param p6, "seconds"    # J
    .param p8, "nanos"    # J
    .param p10, "sign"    # I

    .prologue
    .line 1394
    or-long v12, p2, p4

    or-long v12, v12, p6

    or-long v12, v12, p8

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_0

    .line 1395
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v7

    .line 1411
    :goto_0
    return-object v7

    .line 1397
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

    .line 1401
    .local v8, "totDays":J
    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v8, v12

    .line 1402
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

    .line 1406
    .local v10, "totNanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v7}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 1407
    .local v2, "curNoD":J
    move/from16 v0, p10

    int-to-long v12, v0

    mul-long/2addr v12, v10

    add-long v10, v12, v2

    .line 1408
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 1409
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v4

    .line 1410
    .local v4, "newNoD":J
    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    .line 1411
    .local v6, "newTime":Lorg/threeten/bp/LocalTime;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v7

    goto :goto_0

    .line 1410
    .end local v6    # "newTime":Lorg/threeten/bp/LocalTime;
    :cond_1
    invoke-static {v4, v5}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v6

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1851
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1852
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-static {p0}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 1853
    .local v1, "time":Lorg/threeten/bp/LocalTime;
    invoke-static {v0, v1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1842
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p1, "newDate"    # Lorg/threeten/bp/LocalDate;
    .param p2, "newTime"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 468
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    if-ne v0, p2, :cond_0

    .line 471
    .end local p0    # "this":Lorg/threeten/bp/LocalDateTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/LocalDateTime;
    :cond_0
    new-instance p0, Lorg/threeten/bp/LocalDateTime;

    .end local p0    # "this":Lorg/threeten/bp/LocalDateTime;
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/LocalDateTime;-><init>(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1833
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1469
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 1580
    invoke-static {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 1614
    invoke-static {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1661
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_0

    .line 1662
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo0(Lorg/threeten/bp/LocalDateTime;)I

    move-result v0

    .line 1664
    :goto_0
    return v0

    .restart local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1774
    if-ne p0, p1, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return v1

    .line 1777
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1778
    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    .line 1779
    .local v0, "other":Lorg/threeten/bp/LocalDateTime;
    iget-object v3, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    iget-object v4, v0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    iget-object v4, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/LocalDateTime;
    :cond_3
    move v1, v2

    .line 1781
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1828
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 597
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 598
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 600
    :goto_0
    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 600
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 627
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 628
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 630
    :goto_0
    return-wide v0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    goto :goto_0

    .line 630
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1698
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1699
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo0(Lorg/threeten/bp/LocalDateTime;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1701
    :goto_0
    return v0

    .line 1699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1701
    .restart local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1727
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1728
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo0(Lorg/threeten/bp/LocalDateTime;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1730
    :goto_0
    return v0

    .line 1728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1730
    .restart local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEqual(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1756
    .local p1, "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_1

    .line 1757
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo0(Lorg/threeten/bp/LocalDateTime;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1759
    :goto_0
    return v0

    .line 1757
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1759
    .restart local p1    # "other":Lorg/threeten/bp/chrono/ChronoLocalDateTime;, "Lorg/threeten/bp/chrono/ChronoLocalDateTime<*>;"
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->isEqual(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 526
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 527
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 529
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 534
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 535
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 537
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

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1235
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1215
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p1, "days"    # J

    .prologue
    .line 1322
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "hours"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1336
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "minutes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1349
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMonths(J)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p1, "months"    # J

    .prologue
    .line 1284
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1375
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1362
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusWeeks(J)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p1, "weeks"    # J

    .prologue
    .line 1303
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Lorg/threeten/bp/LocalDateTime;
    .locals 5
    .param p1, "years"    # J

    .prologue
    .line 1260
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    .line 1036
    instance-of v1, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1037
    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 1038
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    sget-object v1, Lorg/threeten/bp/LocalDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1047
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 1049
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_0
    return-object v1

    .line 1039
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1040
    :pswitch_1
    div-long v2, p1, v8

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1041
    :pswitch_2
    div-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1042
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1043
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMinutes(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1044
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1045
    :pswitch_6
    div-long v2, p1, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 1049
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalDateTime;

    goto :goto_0

    .line 1038
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

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1016
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p1, "days"    # J

    .prologue
    .line 1139
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1140
    .local v0, "newDate":Lorg/threeten/bp/LocalDate;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusHours(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "hours"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1154
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "minutes"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1167
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p1, "months"    # J

    .prologue
    .line 1099
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1100
    .local v0, "newDate":Lorg/threeten/bp/LocalDate;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusNanos(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1193
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/LocalDateTime;
    .locals 11
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1180
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/LocalDateTime;->plusWithOverflow(Lorg/threeten/bp/LocalDate;JJJJI)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p1, "weeks"    # J

    .prologue
    .line 1119
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/LocalDate;->plusWeeks(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1120
    .local v0, "newDate":Lorg/threeten/bp/LocalDate;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusYears(J)Lorg/threeten/bp/LocalDateTime;
    .locals 3
    .param p1, "years"    # J

    .prologue
    .line 1074
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1075
    .local v0, "newDate":Lorg/threeten/bp/LocalDate;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1437
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1439
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 564
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 565
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 994
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 16
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1519
    invoke-static/range {p1 .. p1}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v6

    .line 1520
    .local v6, "end":Lorg/threeten/bp/LocalDateTime;
    move-object/from16 v0, p2

    instance-of v9, v0, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v9, :cond_5

    move-object/from16 v8, p2

    .line 1521
    check-cast v8, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 1522
    .local v8, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    invoke-virtual {v8}, Lorg/threeten/bp/temporal/ChronoUnit;->isTimeBased()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1523
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    iget-object v12, v6, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v9, v12}, Lorg/threeten/bp/LocalDate;->daysUntil(Lorg/threeten/bp/LocalDate;)J

    move-result-wide v4

    .line 1524
    .local v4, "daysUntil":J
    iget-object v9, v6, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v9}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v9}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 1525
    .local v10, "timeUntil":J
    const-wide/16 v12, 0x0

    cmp-long v9, v4, v12

    if-lez v9, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 1526
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    .line 1527
    const-wide v12, 0x4e94914f0000L

    add-long/2addr v10, v12

    .line 1532
    :cond_0
    :goto_0
    move-wide v2, v4

    .line 1533
    .local v2, "amount":J
    sget-object v9, Lorg/threeten/bp/LocalDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v8}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v12

    aget v9, v9, v12

    packed-switch v9, :pswitch_data_0

    .line 1556
    new-instance v9, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported unit: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1528
    .end local v2    # "amount":J
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v9, v4, v12

    if-gez v9, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 1529
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 1530
    const-wide v12, 0x4e94914f0000L

    sub-long/2addr v10, v12

    goto :goto_0

    .line 1535
    .restart local v2    # "amount":J
    :pswitch_0
    const-wide v12, 0x4e94914f0000L

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v2

    .line 1536
    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    .line 1566
    .end local v2    # "amount":J
    .end local v4    # "daysUntil":J
    .end local v8    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    .end local v10    # "timeUntil":J
    :goto_1
    return-wide v12

    .line 1538
    .restart local v2    # "amount":J
    .restart local v4    # "daysUntil":J
    .restart local v8    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    .restart local v10    # "timeUntil":J
    :pswitch_1
    const-wide v12, 0x141dd76000L

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v2

    .line 1539
    const-wide/16 v12, 0x3e8

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1541
    :pswitch_2
    const-wide/32 v12, 0x5265c00

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v2

    .line 1542
    const-wide/32 v12, 0xf4240

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1544
    :pswitch_3
    const v9, 0x15180

    invoke-static {v2, v3, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    .line 1545
    const-wide/32 v12, 0x3b9aca00

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1547
    :pswitch_4
    const/16 v9, 0x5a0

    invoke-static {v2, v3, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    .line 1548
    const-wide v12, 0xdf8475800L

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1550
    :pswitch_5
    const/16 v9, 0x18

    invoke-static {v2, v3, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    .line 1551
    const-wide v12, 0x34630b8a000L

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1553
    :pswitch_6
    const/4 v9, 0x2

    invoke-static {v2, v3, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    .line 1554
    const-wide v12, 0x274a48a78000L

    div-long v12, v10, v12

    invoke-static {v2, v3, v12, v13}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    goto :goto_1

    .line 1558
    .end local v2    # "amount":J
    .end local v4    # "daysUntil":J
    .end local v10    # "timeUntil":J
    :cond_2
    iget-object v7, v6, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    .line 1559
    .local v7, "endDate":Lorg/threeten/bp/LocalDate;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v7, v9}, Lorg/threeten/bp/LocalDate;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v9, v12}, Lorg/threeten/bp/LocalTime;->isBefore(Lorg/threeten/bp/LocalTime;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1560
    const-wide/16 v12, 0x1

    invoke-virtual {v7, v12, v13}, Lorg/threeten/bp/LocalDate;->minusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    .line 1564
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    move-object/from16 v0, p2

    invoke-virtual {v9, v7, v0}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v12

    goto/16 :goto_1

    .line 1561
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v7, v9}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v6, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v9, v12}, Lorg/threeten/bp/LocalTime;->isAfter(Lorg/threeten/bp/LocalTime;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1562
    const-wide/16 v12, 0x1

    invoke-virtual {v7, v12, v13}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    goto :goto_2

    .line 1566
    .end local v7    # "endDate":Lorg/threeten/bp/LocalDate;
    .end local v8    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v12

    goto/16 :goto_1

    .line 1533
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

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 799
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v0, :cond_0

    .line 800
    check-cast p1, Lorg/threeten/bp/LocalDate;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    .line 806
    :goto_0
    return-object p1

    .line 801
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    goto :goto_0

    .line 803
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_2

    .line 804
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    goto :goto_0

    .line 806
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    move-object p1, v0

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 844
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 845
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalDateTime;

    goto :goto_0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 898
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "dayOfYear"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 927
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 928
    .local v0, "newTime":Lorg/threeten/bp/LocalTime;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMinute(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "minute"    # I

    .prologue
    .line 941
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->withMinute(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 942
    .local v0, "newTime":Lorg/threeten/bp/LocalTime;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withMonth(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->withMonth(I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 969
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 970
    .local v0, "newTime":Lorg/threeten/bp/LocalTime;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withSecond(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 955
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalTime;->withSecond(I)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 956
    .local v0, "newTime":Lorg/threeten/bp/LocalTime;
    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public withYear(I)Lorg/threeten/bp/LocalDateTime;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->date:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 1847
    iget-object v0, p0, Lorg/threeten/bp/LocalDateTime;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1848
    return-void
.end method
