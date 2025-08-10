.class public final Lorg/threeten/bp/Instant;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "Instant.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/Instant$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Lorg/threeten/bp/Instant;

.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/Instant;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MILLIS_PER_SEC:J = 0x3e8L

.field public static final MIN:Lorg/threeten/bp/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 164
    new-instance v0, Lorg/threeten/bp/Instant;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/threeten/bp/Instant;-><init>(JI)V

    sput-object v0, Lorg/threeten/bp/Instant;->EPOCH:Lorg/threeten/bp/Instant;

    .line 183
    const-wide v0, -0x701cefeb9bec00L

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Instant;->MIN:Lorg/threeten/bp/Instant;

    .line 194
    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/Instant;->MAX:Lorg/threeten/bp/Instant;

    .line 198
    new-instance v0, Lorg/threeten/bp/Instant$1;

    invoke-direct {v0}, Lorg/threeten/bp/Instant$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/Instant;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1
    .param p1, "epochSecond"    # J
    .param p3, "nanos"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 392
    iput-wide p1, p0, Lorg/threeten/bp/Instant;->seconds:J

    .line 393
    iput p3, p0, Lorg/threeten/bp/Instant;->nanos:I

    .line 394
    return-void
.end method

.method private static create(JI)Lorg/threeten/bp/Instant;
    .locals 4
    .param p0, "seconds"    # J
    .param p2, "nanoOfSecond"    # I

    .prologue
    .line 374
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Lorg/threeten/bp/Instant;->EPOCH:Lorg/threeten/bp/Instant;

    .line 380
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 378
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    new-instance v0, Lorg/threeten/bp/Instant;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/Instant;-><init>(JI)V

    goto :goto_0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;
    .locals 7
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 340
    :try_start_0
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    .line 341
    .local v2, "instantSecs":J
    sget-object v4, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v4}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 342
    .local v1, "nanoOfSecond":I
    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 343
    .end local v1    # "nanoOfSecond":I
    .end local v2    # "instantSecs":J
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private nanosUntil(Lorg/threeten/bp/Instant;)J
    .locals 8
    .param p1, "end"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 991
    iget-wide v4, p1, Lorg/threeten/bp/Instant;->seconds:J

    iget-wide v6, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v0

    .line 992
    .local v0, "secsDiff":J
    const v4, 0x3b9aca00

    invoke-static {v0, v1, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    .line 993
    .local v2, "totalNanos":J
    iget v4, p1, Lorg/threeten/bp/Instant;->nanos:I

    iget v5, p0, Lorg/threeten/bp/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static now()Lorg/threeten/bp/Instant;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lorg/threeten/bp/Clock;->systemUTC()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/Instant;
    .locals 1
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 260
    const-string v0, "clock"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochMilli(J)Lorg/threeten/bp/Instant;
    .locals 6
    .param p0, "epochMilli"    # J

    .prologue
    .line 316
    const-wide/16 v4, 0x3e8

    invoke-static {p0, p1, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v2

    .line 317
    .local v2, "secs":J
    const/16 v1, 0x3e8

    invoke-static {p0, p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v0

    .line 318
    .local v0, "mos":I
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-static {v2, v3, v1}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static ofEpochSecond(J)Lorg/threeten/bp/Instant;
    .locals 2
    .param p0, "epochSecond"    # J

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochSecond(JJ)Lorg/threeten/bp/Instant;
    .locals 6
    .param p0, "epochSecond"    # J
    .param p2, "nanoAdjustment"    # J

    .prologue
    .line 300
    const-wide/32 v4, 0x3b9aca00

    invoke-static {p2, p3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    .line 301
    .local v2, "secs":J
    const v1, 0x3b9aca00

    invoke-static {p2, p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v0

    .line 302
    .local v0, "nos":I
    invoke-static {v2, v3, v0}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Instant;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 362
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

    sget-object v1, Lorg/threeten/bp/Instant;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {v0, p0, v1}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Instant;

    return-object v0
.end method

.method private plus(JJ)Lorg/threeten/bp/Instant;
    .locals 11
    .param p1, "secondsToAdd"    # J
    .param p3, "nanosToAdd"    # J

    .prologue
    const-wide/32 v8, 0x3b9aca00

    .line 782
    or-long v4, p1, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 789
    .end local p0    # "this":Lorg/threeten/bp/Instant;
    :goto_0
    return-object p0

    .line 785
    .restart local p0    # "this":Lorg/threeten/bp/Instant;
    :cond_0
    iget-wide v4, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v4, v5, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 786
    .local v0, "epochSec":J
    div-long v4, p3, v8

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 787
    rem-long/2addr p3, v8

    .line 788
    iget v4, p0, Lorg/threeten/bp/Instant;->nanos:I

    int-to-long v4, v4

    add-long v2, v4, p3

    .line 789
    .local v2, "nanoAdjustment":J
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object p0

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Instant;
    .locals 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 1186
    .local v2, "seconds":J
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1187
    .local v0, "nanos":I
    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object v1

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1176
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private secondsUntil(Lorg/threeten/bp/Instant;)J
    .locals 12
    .param p1, "end"    # Lorg/threeten/bp/Instant;

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 997
    iget-wide v4, p1, Lorg/threeten/bp/Instant;->seconds:J

    iget-wide v6, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v2

    .line 998
    .local v2, "secsDiff":J
    iget v4, p1, Lorg/threeten/bp/Instant;->nanos:I

    iget v5, p0, Lorg/threeten/bp/Instant;->nanos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 999
    .local v0, "nanosDiff":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    cmp-long v4, v0, v8

    if-gez v4, :cond_1

    .line 1000
    sub-long/2addr v2, v10

    .line 1004
    :cond_0
    :goto_0
    return-wide v2

    .line 1001
    :cond_1
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 1002
    add-long/2addr v2, v10

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1167
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 926
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 1022
    invoke-static {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 1040
    invoke-static {p0, p1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lorg/threeten/bp/Instant;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->compareTo(Lorg/threeten/bp/Instant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/Instant;)I
    .locals 6
    .param p1, "otherInstant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 1087
    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    iget-wide v4, p1, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    .line 1088
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 1091
    .end local v0    # "cmp":I
    :goto_0
    return v0

    .restart local v0    # "cmp":I
    :cond_0
    iget v1, p0, Lorg/threeten/bp/Instant;->nanos:I

    iget v2, p1, Lorg/threeten/bp/Instant;->nanos:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherInstant"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1131
    if-ne p0, p1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return v1

    .line 1134
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/Instant;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1135
    check-cast v0, Lorg/threeten/bp/Instant;

    .line 1136
    .local v0, "other":Lorg/threeten/bp/Instant;
    iget-wide v4, p0, Lorg/threeten/bp/Instant;->seconds:J

    iget-wide v6, v0, Lorg/threeten/bp/Instant;->seconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Lorg/threeten/bp/Instant;->nanos:I

    iget v4, v0, Lorg/threeten/bp/Instant;->nanos:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/Instant;
    :cond_3
    move v1, v2

    .line 1139
    goto :goto_0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 491
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 492
    sget-object v1, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 497
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    .line 499
    :goto_0
    return v0

    .line 494
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 495
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEpochSecond()J
    .locals 2

    .prologue
    .line 549
    iget-wide v0, p0, Lorg/threeten/bp/Instant;->seconds:J

    return-wide v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 526
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 527
    sget-object v1, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    int-to-long v0, v0

    .line 535
    :goto_0
    return-wide v0

    .line 529
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    .line 530
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 531
    :pswitch_3
    iget-wide v0, p0, Lorg/threeten/bp/Instant;->seconds:J

    goto :goto_0

    .line 535
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1149
    iget-wide v0, p0, Lorg/threeten/bp/Instant;->seconds:J

    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/Instant;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/Instant;)Z
    .locals 1
    .param p1, "otherInstant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->compareTo(Lorg/threeten/bp/Instant;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/Instant;)Z
    .locals 1
    .param p1, "otherInstant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->compareTo(Lorg/threeten/bp/Instant;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 424
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 425
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 427
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

    .line 432
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 433
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 435
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

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 810
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Instant;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/Instant;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/Instant;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Instant;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 800
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Instant;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Instant;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public minusMillis(J)Lorg/threeten/bp/Instant;
    .locals 5
    .param p1, "millisToSubtract"    # J

    .prologue
    .line 842
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 843
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusMillis(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Instant;->plusMillis(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 845
    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusMillis(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0
.end method

.method public minusNanos(J)Lorg/threeten/bp/Instant;
    .locals 5
    .param p1, "nanosToSubtract"    # J

    .prologue
    .line 859
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 860
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Instant;->plusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/Instant;
    .locals 5
    .param p1, "secondsToSubtract"    # J

    .prologue
    .line 825
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 826
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 828
    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;
    .locals 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const-wide/32 v2, 0xf4240

    .line 711
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 712
    sget-object v1, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 722
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Instant;->plusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    .line 714
    :pswitch_1
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->plus(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 715
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Instant;->plusMillis(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 716
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 717
    :pswitch_4
    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 718
    :pswitch_5
    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 719
    :pswitch_6
    const v0, 0xa8c0

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 720
    :pswitch_7
    const v0, 0x15180

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/Instant;->plusSeconds(J)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Instant;

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Instant;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 701
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Instant;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Instant;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Lorg/threeten/bp/Instant;
    .locals 7
    .param p1, "millisToAdd"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 753
    div-long v0, p1, v2

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/threeten/bp/Instant;->plus(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Lorg/threeten/bp/Instant;
    .locals 3
    .param p1, "nanosToAdd"    # J

    .prologue
    .line 767
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/threeten/bp/Instant;->plus(JJ)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/Instant;
    .locals 3
    .param p1, "secondsToAdd"    # J

    .prologue
    .line 739
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/threeten/bp/Instant;->plus(JJ)Lorg/threeten/bp/Instant;

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
    .line 887
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 888
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 896
    :goto_0
    return-object v0

    .line 891
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 894
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 896
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 462
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochMilli()J
    .locals 9

    .prologue
    const v8, 0xf4240

    const-wide/16 v6, 0x3e8

    .line 1059
    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1060
    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v2, v3, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1061
    .local v0, "millis":J
    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    div-int/2addr v2, v8

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    .line 1070
    :goto_0
    return-wide v2

    .line 1069
    .end local v0    # "millis":J
    :cond_0
    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1070
    .restart local v0    # "millis":J
    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    div-int/2addr v2, v8

    int-to-long v2, v2

    sub-long v2, v6, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_INSTANT:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/Instant;
    .locals 14
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    const-wide/32 v12, 0x15180

    .line 677
    sget-object v7, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v7, :cond_0

    .line 690
    .end local p0    # "this":Lorg/threeten/bp/Instant;
    :goto_0
    return-object p0

    .line 680
    .restart local p0    # "this":Lorg/threeten/bp/Instant;
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v6

    .line 681
    .local v6, "unitDur":Lorg/threeten/bp/Duration;
    invoke-virtual {v6}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-lez v7, :cond_1

    .line 682
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    const-string v8, "Unit is too large to be used for truncation"

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 684
    :cond_1
    invoke-virtual {v6}, Lorg/threeten/bp/Duration;->toNanos()J

    move-result-wide v0

    .line 685
    .local v0, "dur":J
    const-wide v8, 0x4e94914f0000L

    rem-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 686
    new-instance v7, Lorg/threeten/bp/DateTimeException;

    const-string v8, "Unit must divide into a standard day without remainder"

    invoke-direct {v7, v8}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 688
    :cond_2
    iget-wide v8, p0, Lorg/threeten/bp/Instant;->seconds:J

    rem-long/2addr v8, v12

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    iget v7, p0, Lorg/threeten/bp/Instant;->nanos:I

    int-to-long v10, v7

    add-long v2, v8, v10

    .line 689
    .local v2, "nod":J
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v8

    mul-long v4, v8, v0

    .line 690
    .local v4, "result":J
    sub-long v8, v4, v2

    invoke-virtual {p0, v8, v9}, Lorg/threeten/bp/Instant;->plusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object p0

    goto :goto_0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 6
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 972
    invoke-static {p1}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 973
    .local v0, "end":Lorg/threeten/bp/Instant;
    instance-of v2, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 974
    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 975
    .local v1, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    sget-object v2, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 985
    new-instance v2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->nanosUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    .line 987
    .end local v1    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_0
    return-wide v2

    .line 977
    .restart local v1    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->nanosUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_0

    .line 978
    :pswitch_2
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 979
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->secondsUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    goto :goto_0

    .line 980
    :pswitch_4
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->secondsUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    goto :goto_0

    .line 981
    :pswitch_5
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->secondsUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    goto :goto_0

    .line 982
    :pswitch_6
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->secondsUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0xa8c0

    div-long/2addr v2, v4

    goto :goto_0

    .line 983
    :pswitch_7
    invoke-direct {p0, v0}, Lorg/threeten/bp/Instant;->secondsUntil(Lorg/threeten/bp/Instant;)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    goto :goto_0

    .line 987
    .end local v1    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0

    .line 975
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
        :pswitch_7
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/Instant;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 586
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/Instant;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/Instant;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 634
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 635
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 636
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 637
    sget-object v2, Lorg/threeten/bp/Instant$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 649
    new-instance v2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :pswitch_0
    long-to-int v2, p2

    const v3, 0xf4240

    mul-int v1, v2, v3

    .line 640
    .local v1, "nval":I
    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object p0

    .line 651
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "nval":I
    .end local p0    # "this":Lorg/threeten/bp/Instant;
    :cond_0
    :goto_0
    return-object p0

    .line 643
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p0    # "this":Lorg/threeten/bp/Instant;
    :pswitch_1
    long-to-int v2, p2

    mul-int/lit16 v1, v2, 0x3e8

    .line 644
    .restart local v1    # "nval":I
    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-static {v2, v3, v1}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object p0

    goto :goto_0

    .line 646
    .end local v1    # "nval":I
    :pswitch_2
    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    long-to-int v4, p2

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object p0

    goto :goto_0

    .line 647
    :pswitch_3
    iget-wide v2, p0, Lorg/threeten/bp/Instant;->seconds:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/threeten/bp/Instant;->nanos:I

    invoke-static {p2, p3, v2}, Lorg/threeten/bp/Instant;->create(JI)Lorg/threeten/bp/Instant;

    move-result-object p0

    goto :goto_0

    .line 651
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/Instant;

    move-object p0, v2

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/threeten/bp/Instant;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/Instant;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1180
    iget-wide v0, p0, Lorg/threeten/bp/Instant;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1181
    iget v0, p0, Lorg/threeten/bp/Instant;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1182
    return-void
.end method
