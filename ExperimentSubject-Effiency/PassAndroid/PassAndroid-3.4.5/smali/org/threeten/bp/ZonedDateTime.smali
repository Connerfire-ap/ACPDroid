.class public final Lorg/threeten/bp/ZonedDateTime;
.super Lorg/threeten/bp/chrono/ChronoZonedDateTime;
.source "ZonedDateTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/ZonedDateTime$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoZonedDateTime",
        "<",
        "Lorg/threeten/bp/LocalDate;",
        ">;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/ZonedDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Lorg/threeten/bp/LocalDateTime;

.field private final offset:Lorg/threeten/bp/ZoneOffset;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lorg/threeten/bp/ZonedDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/ZonedDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/ZonedDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V
    .locals 0
    .param p1, "dateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p3, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;-><init>()V

    .line 574
    iput-object p1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    .line 575
    iput-object p2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    .line 576
    iput-object p3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    .line 577
    return-void
.end method

.method private static create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 6
    .param p0, "epochSecond"    # J
    .param p2, "nanoOfSecond"    # I
    .param p3, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 419
    invoke-virtual {p3}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v3

    .line 420
    .local v3, "rules":Lorg/threeten/bp/zone/ZoneRules;
    int-to-long v4, p2

    invoke-static {p0, p1, v4, v5}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 421
    .local v0, "instant":Lorg/threeten/bp/Instant;
    invoke-virtual {v3, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    .line 422
    .local v2, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {p0, p1, p2, v2}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 423
    .local v1, "ldt":Lorg/threeten/bp/LocalDateTime;
    new-instance v4, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v4, v1, v2, p3}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v4
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZonedDateTime;
    .locals 9
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 511
    instance-of v6, p0, Lorg/threeten/bp/ZonedDateTime;

    if-eqz v6, :cond_0

    .line 512
    check-cast p0, Lorg/threeten/bp/ZonedDateTime;

    .line 527
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    .local v5, "zone":Lorg/threeten/bp/ZoneId;
    :goto_0
    return-object p0

    .line 515
    .end local v5    # "zone":Lorg/threeten/bp/ZoneId;
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/ZoneId;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneId;

    move-result-object v5

    .line 516
    .restart local v5    # "zone":Lorg/threeten/bp/ZoneId;
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    :try_start_1
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 519
    .local v0, "epochSecond":J
    sget-object v6, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v6}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v4

    .line 520
    .local v4, "nanoOfSecond":I
    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0

    .line 522
    .end local v0    # "epochSecond":J
    .end local v4    # "nanoOfSecond":I
    :catch_0
    move-exception v6

    .line 526
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v3

    .line 527
    .local v3, "ldt":Lorg/threeten/bp/LocalDateTime;
    invoke-static {v3, v5}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p0

    goto :goto_0

    .line 528
    .end local v3    # "ldt":Lorg/threeten/bp/LocalDateTime;
    .end local v5    # "zone":Lorg/threeten/bp/ZoneId;
    :catch_1
    move-exception v2

    .line 529
    .local v2, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v6, Lorg/threeten/bp/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static now()Lorg/threeten/bp/ZonedDateTime;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/ZonedDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 201
    const-string v1, "clock"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 203
    .local v0, "now":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 185
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/ZonedDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIIIIIILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoOfSecond"    # I
    .param p7, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 308
    invoke-static/range {p0 .. p6}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 309
    .local v0, "dt":Lorg/threeten/bp/LocalDateTime;
    const/4 v1, 0x0

    invoke-static {v0, p7, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;
    .param p1, "time"    # Lorg/threeten/bp/LocalTime;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 234
    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p0, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3
    .param p0, "instant"    # Lorg/threeten/bp/Instant;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 376
    const-string v0, "instant"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3
    .param p0, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 402
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    const-string v0, "zone"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static ofLenient(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p0, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 482
    const-string v0, "localDateTime"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    const-string v0, "zone"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    instance-of v0, p2, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZoneId must match ZoneOffset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;
    .locals 7
    .param p0, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;
    .param p2, "preferredOffset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    const/4 v6, 0x0

    .line 336
    const-string v4, "localDateTime"

    invoke-static {p0, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    const-string v4, "zone"

    invoke-static {p1, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    instance-of v4, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v4, :cond_0

    .line 339
    new-instance v5, Lorg/threeten/bp/ZonedDateTime;

    move-object v4, p1

    check-cast v4, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v5, p0, v4, p1}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object v4, v5

    .line 357
    :goto_0
    return-object v4

    .line 341
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v1

    .line 342
    .local v1, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;

    move-result-object v3

    .line 344
    .local v3, "validOffsets":Ljava/util/List;, "Ljava/util/List<Lorg/threeten/bp/ZoneOffset;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 345
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .line 357
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    :goto_1
    new-instance v4, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v4, p0, v0, p1}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    goto :goto_0

    .line 346
    .end local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 347
    invoke-virtual {v1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 348
    .local v2, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    invoke-virtual {v2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    .line 349
    invoke-virtual {v2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 350
    .restart local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1

    .line 351
    .end local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    .end local v2    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    move-object v0, p2

    .restart local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1

    .line 354
    .end local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "offset"

    invoke-static {v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .restart local v0    # "offset":Lorg/threeten/bp/ZoneOffset;
    goto :goto_1
.end method

.method public static ofStrict(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p0, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 441
    const-string v2, "localDateTime"

    invoke-static {p0, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    const-string v2, "offset"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    const-string v2, "zone"

    invoke-static {p2, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    invoke-virtual {p2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    .line 445
    .local v0, "rules":Lorg/threeten/bp/zone/ZoneRules;
    invoke-virtual {v0, p0, p1}, Lorg/threeten/bp/zone/ZoneRules;->isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 447
    .local v1, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_0
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneOffset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in zone \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    .end local v1    # "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_1
    new-instance v2, Lorg/threeten/bp/ZonedDateTime;

    invoke-direct {v2, p0, p1, p2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 547
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 561
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lorg/threeten/bp/ZonedDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZonedDateTime;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 2121
    .local v0, "dateTime":Lorg/threeten/bp/LocalDateTime;
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 2122
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-static {p0}, Lorg/threeten/bp/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/ZoneId;

    .line 2123
    .local v2, "zone":Lorg/threeten/bp/ZoneId;
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/ZonedDateTime;->ofLenient(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v3

    return-object v3
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2110
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "newDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "newDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 586
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method private resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 608
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/zone/ZoneRules;->isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v0, v1, p1, v2}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    .line 611
    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2101
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2042
    if-ne p0, p1, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return v1

    .line 2045
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/ZonedDateTime;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 2046
    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    .line 2047
    .local v0, "other":Lorg/threeten/bp/ZonedDateTime;
    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, v0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v4, v0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/ZonedDateTime;
    :cond_3
    move v1, v2

    .line 2051
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 2096
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 739
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 740
    sget-object v1, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 744
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 746
    :goto_0
    return v0

    .line 741
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field too large for an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    goto :goto_0

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 773
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 774
    sget-object v1, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 778
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 780
    :goto_0
    return-wide v0

    .line 775
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    goto :goto_0

    .line 776
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 780
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 668
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 673
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 674
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 676
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

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1699
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1665
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "days"    # J

    .prologue
    .line 1788
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusDays(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusHours(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "hours"    # J

    .prologue
    .line 1817
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "minutes"    # J

    .prologue
    .line 1835
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "months"    # J

    .prologue
    .line 1744
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusMonths(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "nanos"    # J

    .prologue
    .line 1871
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusNanos(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 1853
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusWeeks(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "weeks"    # J

    .prologue
    .line 1766
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "years"    # J

    .prologue
    .line 1722
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/ZonedDateTime;->plusYears(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1464
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_1

    .line 1465
    invoke-interface {p3}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 1471
    :goto_0
    return-object v0

    .line 1468
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 1471
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    goto :goto_0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1430
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "days"    # J

    .prologue
    .line 1560
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "hours"    # J

    .prologue
    .line 1589
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "minutes"    # J

    .prologue
    .line 1607
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMinutes(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "months"    # J

    .prologue
    .line 1516
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "nanos"    # J

    .prologue
    .line 1643
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 1625
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveInstant(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusWeeks(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "weeks"    # J

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "years"    # J

    .prologue
    .line 1494
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
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
    .line 1896
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1897
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 1899
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 703
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 704
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 709
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2078
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    if-eq v1, v2, :cond_0

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    :cond_0
    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1408
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1966
    invoke-static {p1}, Lorg/threeten/bp/ZonedDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 1967
    .local v0, "end":Lorg/threeten/bp/ZonedDateTime;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_1

    .line 1968
    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 1969
    invoke-interface {p2}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, v0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v2, p2}, Lorg/threeten/bp/LocalDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v2

    .line 1975
    :goto_0
    return-wide v2

    .line 1972
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v0}, Lorg/threeten/bp/ZonedDateTime;->toOffsetDateTime()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/threeten/bp/OffsetDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v2

    goto :goto_0

    .line 1975
    :cond_1
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;
    .locals 5
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 1115
    instance-of v1, p1, Lorg/threeten/bp/LocalDate;

    if-eqz v1, :cond_0

    .line 1116
    check-cast p1, Lorg/threeten/bp/LocalDate;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    .line 1127
    :goto_0
    return-object v1

    .line 1117
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v1, :cond_1

    .line 1118
    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-static {v1, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 1119
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_1
    instance-of v1, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v1, :cond_2

    .line 1120
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 1121
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_2
    instance-of v1, p1, Lorg/threeten/bp/Instant;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 1122
    check-cast v0, Lorg/threeten/bp/Instant;

    .line 1123
    .local v0, "instant":Lorg/threeten/bp/Instant;
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v1

    iget-object v4, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {v2, v3, v1, v4}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 1124
    .end local v0    # "instant":Lorg/threeten/bp/Instant;
    :cond_3
    instance-of v1, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v1, :cond_4

    .line 1125
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    invoke-direct {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 1127
    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/ZonedDateTime;

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 1184
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1185
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 1186
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v2, Lorg/threeten/bp/ZonedDateTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1193
    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v2, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    .line 1195
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v2

    .line 1187
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getNano()I

    move-result v2

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-static {p2, p3, v2, v3}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    goto :goto_0

    .line 1189
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    invoke-static {v2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 1190
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-direct {p0, v1}, Lorg/threeten/bp/ZonedDateTime;->resolveOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    goto :goto_0

    .line 1195
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/ZonedDateTime;

    goto :goto_0

    .line 1186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/ZonedDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "dayOfYear"    # I

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;
    .locals 5

    .prologue
    .line 814
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 815
    .local v1, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 817
    .local v0, "earlierOffset":Lorg/threeten/bp/ZoneOffset;
    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 818
    new-instance v2, Lorg/threeten/bp/ZonedDateTime;

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v2

    .line 821
    .end local v0    # "earlierOffset":Lorg/threeten/bp/ZoneOffset;
    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->withEarlierOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFixedOffsetZone()Lorg/threeten/bp/ZonedDateTime;
    .locals 4

    .prologue
    .line 936
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    new-instance v0, Lorg/threeten/bp/ZonedDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withHour(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 1309
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withHour(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;
    .locals 5

    .prologue
    .line 842
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v2

    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/zone/ZoneRules;->getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 843
    .local v1, "trans":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_0

    .line 844
    invoke-virtual {v1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 845
    .local v0, "laterOffset":Lorg/threeten/bp/ZoneOffset;
    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    new-instance v2, Lorg/threeten/bp/ZonedDateTime;

    iget-object v3, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-direct {v2, v3, v0, v4}, Lorg/threeten/bp/ZonedDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v2

    .line 849
    .end local v0    # "laterOffset":Lorg/threeten/bp/ZoneOffset;
    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/threeten/bp/ZonedDateTime;->withLaterOffsetAtOverlap()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinute(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMinute(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withNano(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 1375
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withNano(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withSecond(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 1353
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withSecond(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 1218
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/ZonedDateTime;->resolveLocal(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 3
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 913
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/ZonedDateTime;->create(JILorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 890
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/ZonedDateTime;
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->withZoneSameLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

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
    .line 2114
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 2115
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 2116
    iget-object v0, p0, Lorg/threeten/bp/ZonedDateTime;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneId;->write(Ljava/io/DataOutput;)V

    .line 2117
    return-void
.end method
